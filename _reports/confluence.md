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

As the Volexity researchers delved deeper into their investigations, they discovered web shells being written to the disk, and upon further analysis, were able to recreate the exploit and so identifie a zero-day vulnerability in the current versions of the Confluence Server and Data Center. This software, used by governments, banks, and critical infrastructure, was under attack. Volexity acted quickly, contacting Atlassian on May 31, 2022, to report the relevant details of their findings. At the time of discovery, this exploit was only used in a very targeted way.

On June 2nd, researchers at the American security company Volexity announced the vulnerability (CVE-2022-26134). Attackers could use it to get access to an organization's infrastructure, create admin users, and steal all internal data from the Confluence instance. Atlassian recommended removing installations from the internet ‘immediately’.

On June 3rd, patches became available. Soon after that, a proof of concept became available, resulting in the spread of malware. Attackers have placed crypto miners, Mirai botnet agents, and web shells on servers. Greynoise.io found 350 unique IP addresses that were scanning for this vulnerability. 349 of them were marked ‘malicious’, the only benign one was DIVD’s IP address. DIVD-volunteers found ‘high-level targets’ like banks, transport companies, telcos, military software companies, and data centers. It was a race against time, again.

On June 4th, the DIVD sent 18469 notification emails to Internet Service Providers or server owners. Most servers were found in the US and Germany (see pie chart). The Dutch part of the data was shared with NSM (Het Nederlands Security Meldpunt) and the Dutch Digital Trust Center (DTC), which informed affected Dutch companies.

![](/uploads/confluence_graph.png)

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