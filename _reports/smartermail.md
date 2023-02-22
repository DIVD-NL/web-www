---
layout: report
has_casefile: true
date: 2023-02-22
title: SmarterMail
case: DIVD-2021-00006
author: Gerard Janssen
lead: Lennaert Oudshoorn
csirt: []
researchers:
- Wietse Boonstra
excerpt: DIVD researcher found multiple vulnerabilities in SmarterMail
published: false

---
A DIVD researcher found multiple vulnerabilities in SmarterMail.  Both vulnerabilities were discovered within the webmail fronted of SmarterMail.

## The vulnerabilities

We notified SmarterTools Inc. of the following vulnerabilities:

* [CVE-2021-43977](https://csirt.divd.nl/cves/CVE-2021-43977) - SmarterTools SmarterMail before 100.0.7803 (May 13, 2021) and 16.x allows XSS.
* [CVE-2021-32233](https://csirt.divd.nl/cves/CVE-2021-32233) - SmarterTools SmarterMail before 100.0.7803 (May 13, 2021) and 16.x allows XSS.
* [CVE-2021-32234](https://csirt.divd.nl/cves/CVE-2021-32234) - SmarterTools SmarterMail before 100.0.7803 (May 13, 2021) and 16.x allows Remote Code Execution.

## What you can do

If you are running a version of SmarterMail before 100.0.7803 (May 13, 2021) or 16.x, upgrade to the latest version as soon as possible. To verify the installed version, go within the SmarterMail portal to /about/checkup (http(s)://yourwebmailurl.ext/about/checkup) and verify the version number. If the version number is 16.x or before 100.0.7803 (May 13, 2021) then you are vulnerable.