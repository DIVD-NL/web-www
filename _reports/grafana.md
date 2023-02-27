---
layout: report
has_casefile: true
date: 2023-02-22
title: Grafana
case: DIVD-2022-00002
author: Gerard Janssen
lead: Tom Wolters
csirt: []
researchers:
- Diego Klinkhamer
- Tom Wolters
excerpt: Vulnerability in Grafana analytics tool
published: false

---
On December 2, Dutch security researcher Jordy Versmissen sent a report to Grafana Labs, a company that created a popular open source analytics tool. Versmissen found a zero-day vulnerability in Grafana Enterprise versions v8.0.0-beta1 to v8.3.0. An attacker could use a Directory Traversal Vulnerability to gain unauthorized access to local files.

The vulnerability was leaked on December 7. Proofs of concept (PoC) to exploit the bug are becoming available on Twitter and GitHub.

Grafana produced emergency releases and new releases after v8.3.0.

On January 9, the DIVD found 10,500 vulnerable bodies on Shodan. A scan on January 10 returned a list of 8,486 confirmed vulnerable systems. The owners of these systems have been notified.

A scan on February 6 found that 6571 were still vulnerable. The DIVD has sent a second series of reports.

On March 1, there were still 2180 vulnerable systems. This case was closed on November 7.


## **Timeline**

| Date | Description |
| --- | --- |
| 03 Dec 2021 | Vulnerability reported to Grafana. |
| 07 Dec 2021 | Emergency patches released and full public release. |
| 10 Jan 2022 | DIVD created a list of vulnerable Grafana instances. |
| 18 Jan 2022 | First version of this case file. |
| 18 Jan 2022 | DIVD sent out a first batch of notifications. |
| 06 Feb 2022 | DIVD sent out a second batch of notifications. |

<div class="mermaid">
gantt
title DIVD-2022-00002 - Grafana
dateFormat  YYYY-MM-DD
axisFormat  %e %b %Y
section Case
DIVD-2022-00002 - Grafana (335 days)            :2021-12-07, 2022-11-07
section Events
Vulnerability reported to Grafana. :  milestone, 2021-12-03, 0d
Emergency patches released and full public release. :  milestone, 2021-12-07, 0d
DIVD created a list of vulnerable Grafana instances. :  milestone, 2022-01-10, 0d
First version of this case file. :  milestone, 2022-01-18, 0d
DIVD sent out a first batch of notifications. :  milestone, 2022-01-18, 0d
DIVD sent out a second batch of notifications. :  milestone, 2022-02-06, 0d
</div>

## **Links**

[https://csirt.divd.nl/cases/DIVD-2022-00002/](https://csirt.divd.nl/cases/DIVD-2022-00002/ "https://csirt.divd.nl/cases/DIVD-2022-00002/")

[https://labs.detectify.com/2021/12/15/zero-day-path-traversal-grafana/](https://labs.detectify.com/2021/12/15/zero-day-path-traversal-grafana/ "https://labs.detectify.com/2021/12/15/zero-day-path-traversal-grafana/")

[https://labs.detectify.com/2021/12/15/zero-day-path-traversal-grafana/](https://labs.detectify.com/2021/12/15/zero-day-path-traversal-grafana/ "https://labs.detectify.com/2021/12/15/zero-day-path-traversal-grafana/")

[https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-43798](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-43798 "https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-43798")