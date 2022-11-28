---
layout: report
has_casefile: true
date: 2022-11-28
title: Exchange Backdoor
case: DIVD-2022-00032
author: Gerard Janssen
lead: Victor Pasman
csirt: []
researchers: []
excerpt: Backdoor found in WinRS and Exchange Servers
published: false

---
On May 10th the Security Operation Center of Dutch cybersecurity company Eye Security got an alert about malicious activity on an Exchange server of one of their customers. Researchers of Eye Security found a backdoor that was probably installed months earlier after an initial ProxyLogon or ProxyShell compromise. The backdoor uses the WinRS service on the server to give a malicious actor with credentials remote access to the server.

On 2 June 2022, Eye Security published a[ ](https://www.eye.security/blog/winrs-and-exchange-a-sneaky-backdoor)blog about their find. The DIVD started scanning the same day. Researchers of the DIVD found a way to test if Windows Exchange servers exposed to the internet had a backdoor.

The first scan on June 6th showed there were 124 exchange servers exposed to the internet that were possibly backdoored. A notification mail was sent to the owners of these systems.

September 17th there were still 105 servers with a possible backdoor. The system owners were notified, and the case was closed.

## **Timeline**

| --- | --- |
| Date | Description |
| 02 Jun 2022 | Eye Security publishes their blog about a backdoor on an Exchange Server |
| 03 Jun 2022 | DIVD Starts scanning for infected hosts |
| 06 Jun 2022 | First version of this case file |
| 06 Jun 2022 | First round of notifications sent |
| 21 Jun 2022 | Second round of notifications sent |
| 18 Sep 2022 | Third round of notifications sent and case closed |

**Links**

https://www.eye.security/blog/winrs-and-exchange-a-sneaky-backdoor