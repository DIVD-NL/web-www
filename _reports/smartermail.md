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

---
A DIVD researcher found multiple vulnerabilities in SmarterMail.  Both vulnerabilities were discovered within the webmail fronted of SmarterMail.The DIVD notified SmarterTools Inc. of the following vulnerabilities:

* [CVE-2021-43977](https://csirt.divd.nl/cves/CVE-2021-43977) - SmarterTools SmarterMail before 100.0.7803 (May 13, 2021) and 16.x allows XSS.
* [CVE-2021-32233](https://csirt.divd.nl/cves/CVE-2021-32233) - SmarterTools SmarterMail before 100.0.7803 (May 13, 2021) and 16.x allows XSS.
* [CVE-2021-32234](https://csirt.divd.nl/cves/CVE-2021-32234) - SmarterTools SmarterMail before 100.0.7803 (May 13, 2021) and 16.x allows Remote Code Execution.

The DIVD warned users with a version of SmarterMail before 100.0.7803 (May 13, 2021) or 16.x, and advised to upgrade to the latest version as soon as possible. 

## Timeline

| Date | Description |
| --- | --- |
| 30 Apr 2021 | Vendor contacted and informed. |
| 30 Apr 2021 | Scanning internet-facing implementations. |
| 30 Apr 2021 | Start of the identification of possible victims (with internet-facing systems). |
| 03 May 2021 | Contacted vendor if email was received. Resend information to vendor. |
| 10 May 2021 | Vendor responds that they are working on it. |
| 24 May 2021 | Requested an update. |
| 30 Apr 2021- 01 Jun 2021 | Time to fix |
| 01 Jun 2021 | Vendor issues patch(es). |
| 30 Apr 2021- 16 Nov 2021 | Time to disclose |
| 16 Nov 2021 | First version of this case file. |
| 02 Dec 2021 | Notifications sent out. |
| 13 Jan 2022 | Case closed |

 <div class="mermaid">
	gantt
	    title DIVD-2021-00006 - SmarterMail
	    dateFormat  YYYY-MM-DD
	    axisFormat  %e %b %Y
	    section Case
	    DIVD-2021-00006 - SmarterMail (258 days)            :2021-04-30, 2022-01-13
	    section Events
		Vendor contacted and informed. :  milestone, 2021-04-30, 0d
				Scanning internet-facing implementations. :  milestone, 2021-04-30, 0d
				Start of the identification of possible victims (with internet-facing systems). :  milestone, 2021-04-30, 0d
				Contacted vendor if email was received. Resend information to vendor. :  milestone, 2021-05-03, 0d
				Vendor responds that they are working on it. :  milestone, 2021-05-10, 0d
				Requested an update. :  milestone, 2021-05-24, 0d
				Time to fix (32 days) : 2021-04-30, 2021-06-01
					Vendor issues patch(es). :  milestone, 2021-06-01, 0d
				Time to disclose (200 days) : 2021-04-30, 2021-11-16
					First version of this case file. :  milestone, 2021-11-16, 0d
				Notifications sent out. :  milestone, 2021-12-02, 0d
				Case closed :  milestone, 2022-01-13, 0d
				</div>

DIVD-2021-00006 - SmarterMail

## More information

* [official release notes](https://www.smartertools.com/smartermail/release-notes/current) from SmarterMail