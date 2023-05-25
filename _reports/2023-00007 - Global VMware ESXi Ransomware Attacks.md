---
layout: report
has_casefile: true
date: 2023-05-25
title: Global VMware ESXi Ransomware Attacks
case: DIVD-2023-00007
author: Gerard Janssen
lead: Ralph Horn
csirt: []
researchers:
- Max van der Horst
- Julian Rosenboom
- Ralph Horn
excerpt: Worldwide ransomware attack on unpatched ESXi-servers.
start: 2023-02-03
end: 2023-04-18
---

On February 3rd, DIVD became aware of a global ransomware attack that targeted vulnerable VMware ESXi servers, specifically those susceptible to CVE-2021-21974. In response, DIVD conducted a scan of ESXi servers accessible via the internet and notified users, urging them to patch their systems to prevent potential exploitation.
VMware ESXi is a type 1 hypervisor that is part of VMware's larger vSphere suite. It provides a platform for virtualizing servers and allows for the running of multiple operating systems on a single physical server. As a bare-metal hypervisor, ESXi is directly installed on the server hardware, providing a efficient way to manage and partition hardware resources like CPU, memory, storage, and networking among multiple virtual machines (VMs).
ESXi includes features such as VMotion, which enables live migration of running VMs from one physical server to another with no downtime, and High Availability, which allows for automatic VM restart on other available servers in case of hardware failure. ESXi also provides security features, including VM encryption, and secure boot.

CVE-2021-21974 is a vulnerability in OpenSLP as used in ESXi. OpenSLP is an open standard network protocol that enables dynamic discovery and communication with network services in LANs and WANs. The vunerability in the protocol is a heap-overflow vulnerability.
A malicious actor who resides within the same network segment as ESXi and has access to TDP or UDP port 427, may be able to trigger the heap-overflow vulnerability in the OpenSLP service, which could result in remote code execution. 
The versions of ESXi that are vulnerable to this issue are 7.0 before ESXi70U1c-17325551, 6.7 before ESXi670-202102401-SG, and 6.5 before ESXi650-202102101-SG.

February 3rd CERT-FR communicated about ransomware attacks, related to CVE-2021-21974. The attackers used the vulnerability to launch ransomware attacks. 

On February 4th DIVD started scanning. An initial scan revealed the presence of 14,986 vulnerable hosts globally, with 269 of them located in the Netherlands. The researchers at DIVD notified the owners. Additionally, DIVD also informed the Dutch NCSC, as well as govcerts in Austria, Finland, France, and Italy. 


## **Timeline**

| --- | --- |
| Date | Description |
| 03 Feb 2023 | DIVD takes notice of global attacks. |
| 03 Feb 2023 | DIVD begins cooperation with NSCS-NL. |
| 04 Feb 2023 | DIVD initiates scanning process. |
| 06 Feb 2023 | DIVD sends out first round of notifications. |
| 07 Mar 2023 | Spreading of malware appears to be over, DIVD monitors the situation. |
| 18 Apr 2023 | Case closed |

<div class="mermaid">
	gantt
	    title DIVD-2023-00007 - Global VMware ESXi Ransomware Attacks
	    dateFormat  YYYY-MM-DD
	    axisFormat  %e %b %Y
	    section Case
	  		DIVD-2023-00007 -  Global VMware ESXi Ransomware Attacks          :2023-02-03, 2023-04-18
	    section Events
			DIVD takes notice of global attacks. :  milestone, 2023-02-03, 0d
			DIVD begins cooperation with NSCS-NL. :  milestone, 2023-02-03, 0d
			DIVD initiates scanning process. :  milestone, 2023-02-04, 0d
			DIVD sends out first round of notifications. :  milestone, 2023-02-06, 0d
			Spreading of malware appears to be over, DIVD monitors the situation. : milestone, 2023-03-07. 0d
			Case closed. : milestone, 2023-04-18
</div>

## **Links**


* [CVE-2021-21974](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-21974)
* [Bleeping Computer blog](https://www.bleepingcomputer.com/news/security/massive-esxiargs-ransomware-attack-targets-vmware-esxi-servers-worldwide/)
* [OVHcloud blog](https://blog.ovhcloud.com/ransomware-targeting-vmware-esxi/)
* [VMware Build Numbers for ESXi](https://kb.vmware.com/s/article/2143832)
* [Known Indicators of Compromise](https://github.com/fastfire/IoC_Attack_ESXi_Feb_2023)
