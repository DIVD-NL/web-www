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
On December 2nd Dutch security researcher Jordy Versmissen sent a report to Grafana Labs, a company that created a popular open source analytics tool to create interactive graphs and dashboards. Versmissen found a zero-day vulnerability in Grafana Enterprise versions v8.0.0-beta1 to v8.3.0. An attacker could use a Directory Traversal Vulnerability to get unautorised access to local files.

On December 7th, the vulnerability leaked. Proof-of-concepts (PoC) to exploit the bug to become available on Twitter and GitHub.

Emergency releases were created for versions and several new releases after v8.3.0 have been published.

januari 9th DIVD found 10500 vulnerable instances on Shodan. An own scan on January 10th resulted in a last of 8.486 confirmed vulnerable systems.The owners of these systems were notified.

A scan on february 6th found 6571 still vulnerable. The DIVD sent out a second batch of notifications.

March 1 there were still 2180 vulnerable systems.

## **Links**

[https://csirt.divd.nl/cases/DIVD-2022-00002/](https://csirt.divd.nl/cases/DIVD-2022-00002/ "https://csirt.divd.nl/cases/DIVD-2022-00002/")

[https://www.volexity.com/blog/2022/06/02/zero-day-exploitation-of-atlassian-confluence/](https://www.volexity.com/blog/2022/06/02/zero-day-exploitation-of-atlassian-confluence/ "https://www.volexity.com/blog/2022/06/02/zero-day-exploitation-of-atlassian-confluence/")

[https://www.rapid7.com/blog/post/2022/06/02/active-exploitation-of-confluence-cve-2022-26134/](https://www.rapid7.com/blog/post/2022/06/02/active-exploitation-of-confluence-cve-2022-26134/ "https://www.rapid7.com/blog/post/2022/06/02/active-exploitation-of-confluence-cve-2022-26134/")

[https://confluence.atlassian.com/doc/confluence-security-advisory-2022-06-02-1130377146.html](https://confluence.atlassian.com/doc/confluence-security-advisory-2022-06-02-1130377146.html "https://confluence.atlassian.com/doc/confluence-security-advisory-2022-06-02-1130377146.html")

Links

https://labs.detectify.com/2021/12/15/zero-day-path-traversal-grafana/
https://grafana.com/blog/2021/12/08/an-update-on-0day-cve-2021-43798-grafana-directory-traversal/
https://csirt.divd.nl/cases/DIVD-2022-00002/
https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-43798

## **Timeline**

Timeline

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

