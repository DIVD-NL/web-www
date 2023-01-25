---
layout: report
has_casefile: true
date: 2023-01-16
title: Confluence
case: DIVD-2022-00033
author: Gerard Janssen
lead: Frank Breedijk
csirt: []
researchers:
- Victor Gevers
- Pepijn van der Stap
- Victor Pasman
excerpt: Critical zeroday in Atlassian Confluence management software
published: false

---
On May 30th – Memorial Day 2022 – researchers of the Washington DC based cybersecurity firm Volexity started an investigation after one of the customers detected suspicious activity on two internet-facing web servers, that were running Atlassian Confluence Server software.

Researchers of Volexity found web shells being written to the disk. The Volexity-researchers were able to recreate the exploit and identify the zero-day vulnerability, in the current versions of Confluence Server and Data Center, which are used by governments, banks, and critical infrastructure.

Volexity contacted Atlassian to report the relevant details on May 31, 2022. At the time of discovery, this exploit was only used in a very targeted way.

Atlassian has confirmed the vulnerability

On June 2nd, researchers at the American security company Volexity announced the vulnerability (CVE-2022-26134). On the same day, volunteers of the DIVD started scanning, using the version numbers of the identified instances.

It was a race against time.

On June 3rd patches became available, Soon after that a proof of concept became available, resulting in a massive spread of malware. Greynoise.io found 350 unique IP addresses that were scanning for this vulnerability. 349 of them were marked ‘malicious’.

On June 4th 14378 hosts were contacted by the DIVD. The Dutch part of the data was shared with the[ Dutch Digital Trust Center](https://www.digitaltrustcenter.nl/dreigingsinformatie-ontvangen) which informed affected Dutch companies.

On June 6th still 1088 hosts were vulnerable.

June 16, the DIVD started scanning with a non-intrusive command execution and found 1324 hosts still were vulnerable for this exploit.

November 5th the DIVD found still 540 vulnerable hosts. DIVD sent notifications to the owners the case was closed.

## **Links**

[https://www.volexity.com/blog/2022/06/02/zero-day-exploitation-of-atlassian-confluence/](https://www.volexity.com/blog/2022/06/02/zero-day-exploitation-of-atlassian-confluence/ "https://www.volexity.com/blog/2022/06/02/zero-day-exploitation-of-atlassian-confluence/")

## **Timeline**

| --- | --- |
| Date | Description |
| 02 Jun 2022 | Volexity publishes about 0-day vulnerability in Confluence |
| 03 Jun 2022 | Official Atlassion advisory published |
| 03 Jun 2022 | First version of this case file |
| 03 Jun 2022 | Patches announced |
| 03 Jun 2022 | Patches available |
| 03 Jun 2022 | Proof of Concept for exploitation is shared publicy online |
| 04 Jun 2022 | Notifications being sent to about 15k vulnerable instances |
| 06 Jun 2022 | Data concerning the Netherlands shared with the Digital Trust Center and the Dutch Security Clearing House (Security Meldpunt) |
| 06 Jun 2022 | Approximately 1150 additional vulnerable instances identified and vulnerable owners were sent notifications |
| 07 Jun 2022 | Approximately 800+ additional vulnerable instances identified and vulnerable owners were sent notifications |
| 08 Jun 2022 | All other data concerning the Netherlands shared with the Digital Trust Center and the Dutch Security Clearing House (Security Meldpunt) |
| 16 Jun 2022 | Rescanning with a non-intrusive command execution for visibility on the decreasing number of vulnerable instances |
| 05 Nov 2022 | Rescan and notify (again with a non-intrusive command execution) for visibility on the decreasing number of vulnerable instances. |

<div class="mermaid">

	gantt

	    title DIVD-2022-00033 - Atlassian Confluence 0-day unauthenticated RCE

	    dateFormat  YYYY-MM-DD

	    axisFormat  %e %b %Y

	    section Case

	    DIVD-2022-00033 - Atlassian Confluence 0-day unauthenticated RCE (181 days)            :2022-06-03, 2022-12-01

	    section Events

		Volexity publishes about 0-day vulnerability in Confluence :  milestone, 2022-06-02, 0d

				Official Atlassion advisory published :  milestone, 2022-06-03, 0d

				First version of this case file :  milestone, 2022-06-03, 0d

				Patches announced :  milestone, 2022-06-03, 0d

				Patches available :  milestone, 2022-06-03, 0d

				Proof of Concept for exploitation is shared publicy online :  milestone, 2022-06-03, 0d

				Notifications being sent to about 15k vulnerable instances :  milestone, 2022-06-04, 0d

				Data concerning the Netherlands shared with the Digital Trust Center and the Dutch Security Clearing House (Security Meldpunt) :  milestone, 2022-06-06, 0d

				Approximately 1150 additional vulnerable instances identified and vulnerable owners were sent notifications :  milestone, 2022-06-06, 0d

				Approximately 800+ additional vulnerable instances identified and vulnerable owners were sent notifications :  milestone, 2022-06-07, 0d

				All other data concerning the Netherlands shared with the Digital Trust Center and the Dutch Security Clearing House (Security Meldpunt) :  milestone, 2022-06-08, 0d

				Rescanning with a non-intrusive command execution for visibility on the decreasing number of vulnerable instances :  milestone, 2022-06-16, 0d

				Rescan and notify (again with a non-intrusive command execution) for visibility on the decreasing number of vulnerable instances. :  milestone, 2022-11-05, 0d

				Case closed :  milestone, 2022-12-01, 0d

				</div>