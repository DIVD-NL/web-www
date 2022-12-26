---
layout: news
title: Dissecting FortiGate Images for fun and non-profit
author: Axel Boesenach
excerpt: Like many other researchers we recently dived into the new FortiGate SSLVPN
  vulnerability (CVE-2022-42475) which consists of a heap overflow vulnerability in
  the SSLVPN service.

---
Like many other researchers we recently dived into the new [FortiGate SSLVPN vulnerability (CVE-2022-42475)](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2022-42475) which consists of a heap overflow vulnerability in the SSLVPN service.

From the [FortiGuard PSIRT advisory](https://www.fortiguard.com/psirt/FG-IR-22-398):

> A  heap-based buffer overflow vulnerability \[CWE-122\] in FortiOS SSL-VPN  may allow a remote unauthenticated attacker to execute arbitrary code or  commands via specifically crafted requests.

We  quickly jumped on it to see if we could find a method to accurately  fingerprint the versions of the devices connected to the internet that  are running the `SSLVPN`  service. Luckily we have some volunteers that were able to quickly grab  images of the vulnerable version, as well as the patched version so we  could do some differential checks and maybe catch some low hanging fruit  that would reveal the specific version of the device.

## Researching

In  this section we will dive into the research process as it was executed  by one of the researchers. We will go into the tool that was used, as  well as the thought process of the researchers involved.

### Peering into the FortiGate images

As a start we checked the files that were present in the `FortiGate` images that we received, the quick and easy way is by leveraging the newly released [Dissect](https://github.com/fox-it/dissect) project to open the images using the `.VHD` format of `Hyper-V`. The easiest way to open these virtual disks without mounting them in the traditional way is to use `target-shell` which is build upon the `dissect.target` module and consists of a set of loaders that can be used to open different image formats.

When using `target-shell`  we are actually dropped inside of a shell-like environment that even  has a handy help message showing the options available to us:

    $ target-shell fortios.vhd
    fortios.vhd /> help
    
    Documented commands (type help <topic>):
    ========================================
    cat    disks  filesystems  help     less  python    save
    cd     exit   find         hexdump  ls    readlink  stat
    clear  file   hash         info     pwd   registry  volumes

The  virtual disk images hold the data needed for booting the device, as  well as the filesystem that is loaded. To display the contents of the `.VHD` we can use the `ls` command:

    fortios.vhd /> ls
    .fgtsum
    boot.msg
    datafs.tar.gz
    extlinux.conf
    filechecksum
    flatkc
    flatkc.chk
    ldlinux.c32
    ldlinux.sys
    lost+found
    rootfs.gz
    rootfs.gz.chk

The file we’re interested in is the `rootfs.gz`  file, this file holds the actual filesystem that is loaded by the  device like the binaries and libraries used to start the different  services, as well as the web pages that are used by the services  exposing different panels to the outside world, so let’s save this file:

    fortios.vhd /> save rootfs.gz

We’re  specifically looking for any kind of files that are showing us the  exact version running on the device so we can differentiate patched  devices from vulnerable devices, only notifying the owners of devices  which are displaying the vulnerable versions.

**It  is advised to execute the next steps inside of a virtual machine as  we’re rebuilding a file system that contains different kind of symbolic  links that will be symlinked when extracted.**

Before we can actually look at the files we’re interested in we have to extract the `rootfs.gz` file and decompress it, revealing the `rootfs`:

    $ file rootfs                 
    rootfs: ASCII cpio archive (SVR4 with no CRC)

The `rootfs` file is actually another kind of archive of the [CPIO format](https://en.wikipedia.org/wiki/Cpio). To extract the `CPIO` archive we can use a built-in GNU tool aptly called `cpio`:

    # cat rootfs | cpio -mivd

The  above output will be pretty verbose and display some linking errors  when run as a non-root user on the system. So now we have _almost_ rebuilded the filesystem of the `FortiGate`  device so we can start our actual research. There are a couple more  files that we need to extract before we can continue our journey, the  files we’re really interested in are actually compressed in another  archive using modified versions of `xz` and `tar`.

The `migadmin.tar.xz`  archive is one of the archives we’re interested in as this archive is  holding all of the files that belong to the webpanels and services  exposed to the outside world. To extract this archive we can leverage  the binaries within the `sbin/` directory and using the `chroot` command to make sure the right libraries are used:

    # chroot /tmp/forti sbin/xz -d migadmin.tar.xz
    # chroot /tmp/forti sbin/ftar -xf migadmin.tar

After extracting the `migadmin` archive we can see that there are actually a lot of `.gz`  files in there, for the sake of this post we will not look into every  file but instead continue laying down our thought process for coming up  with a fingerprint.

### Looking for fingerprints

While one of our researchers was busy peering into the `FortiGate` images, other researchers were checking running `FortiGate`  devices to see what files are exposed and if the files are containing  any kind of unique values which could be used to identify versions.  Early in the investigation it was observed that a lot of files contain  hash values, this looked interesting and used as a first lead to see if  we could match different hashes for the versions.

    <script src="/c722dce07f115f2f4b4a029cca6503d6/sslvpn/js/common.js"></script>
    <script src="/c722dce07f115f2f4b4a029cca6503d6/sslvpn/js/sslvpn_util.js"></script>
    <script src="/c722dce07f115f2f4b4a029cca6503d6/sslvpn/js/aes.js"></script>

We started downloading a couple of images and indeed found that the hashes in the `migadmin/sslvpn/portal.html` file were unique for different versions, we thought this was great because this `HTML` is actually exposed when the `SSLVPN` service is running on the device.

Within  a couple hours a list of hashes of the devices connected to the  internet was made and we received more images of different versions,  there was only one little problem… There were over 1600 (!!) different  hashes in the list. In hindsight we could’ve concluded then and there  (and some of us did) that these hashes were not the way to go, but  because we found out there are actually hundreds of different versions  of the `FortiGate`  images, some of us were still on the fence of it being possible that  these hashes could give us an insight into the versioning of the  devices.

We decided to give it a go and downloaded a bunch of different images:

    /fortigate_images# find . -name "*.zip" | wc -l
    303

Going through the process described in the chapter before by hand was not an option, so we came up with a way to automate it.

## 

## Dissect

Next step of course is to automate the process of checking the 303 different `FortiGate` images for the `portal.html` files containing the hash using `Dissect`.  It’s as easy as performing the steps described earlier, but using  Python to automate the whole process and storing the different hashes of  each version in a `.json` file.

To extract the `rootfs.gz` file automatically we can use the `target-query` module using the `icat` plugin to save a file by specifying the `inode` number:

    >>> import io
    >>> from dissect.target import Target
    >>> from dissect.util import cpio
    >>> # Get the rootfs.gz file and decompress it, resulting in the CPIO archive
    >>> forti_target = Target.open("fortios.vhd")
    >>> path = t.fs.path("/rootfs.gz")
    >>> cpio_file = cpio.open(fileobj=path.open())

We now have a `CpioFile` object containing the root filesystem of the `FortiGate` image and can actually already peek inside of the structure of the filesystem by listing the files:

    >>> cpio_file.list()
    ?rwxr-xr-x 0/0          0 2022-11-02 23:34:31 ./ 
    ?rwxr-xr-x 0/0          0 2022-11-02 23:32:15 tmp/ 
    ?rwxr-xr-x 0/0          0 2022-11-02 23:32:15 data2/ 
    ?rwxr-xr-x 0/0          0 2022-11-02 23:34:30 lib/ 
    ?rwxr-xr-x 0/0     113832 2022-11-02 23:32:19 lib/libvncclient.so.1 
    ?rwxr-xr-x 0/0     106032 2022-11-02 23:32:20 lib/libpthread.so.0 
    ?rwxr-xr-x 0/0      10160 2022-11-02 23:32:20 lib/libvmtools.so 
    ?rwxr-xr-x 0/0    1447184 2022-11-02 23:32:20 lib/libglib-2.0.so.0 
    ?rwxr-xr-x 0/0      39080 2022-11-02 23:32:20 lib/libcrypt.so.1 
    ?rwxr-xr-x 0/0    1586112 2022-11-02 23:32:20 lib/libstdc++.so.6

With this we can freely extract single files, or extract all of the files and directories much like a `TAR`  file. From here on it’s pretty straightforward, we grab the files we’re  interested in and can do our analysis in an automated fashion  leveraging Python to do the heavy lifting for us so we can grab some  coffee while it is happily parsing the image files.

**if you’re interested in the script that was used you can find it at**: [https://gist.github.com/sud0woodo/36a3177de819621ed162b222c6f861e7](https://gist.github.com/sud0woodo/36a3177de819621ed162b222c6f861e7)

## 

## Conclusion

Analyzing  any kind of data by hand is not efficient and error-prone, knowing  which toolsets are at your disposal is just as important as knowing how  to use these tools efficiently.

So  what did we get out of this? Other than a nice overview of hashes per  image, the gathered information is absolutely worthless for  fingerprinting. But this blogpost wasn’t meant to deep dive into how a  fingerprint was created as we hope that this post is insightful for  security practitioners just starting to get their feet wet when it comes  to automating the process when a hypothesis can’t be ruled out with  just a couple of files. In the end we resorted to the partial  fingerprint which was created by Edwin van Vliet during the [DIVD-2022-00056](https://csirt.divd.nl/cases/DIVD-2022-00056/) case.

Next  to the above lesson we hope that this post was fun to read and maybe  sparks some inspiration for other individuals to leverage these kind of  techniques to automate the process when looking for fingerprints, or is  just reading about `Dissect` for the first time and sees the potential in a current project or pipeline :)