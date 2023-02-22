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

On December 3rd .. found a zero-day vulnerability in Grafana, a popular open source analytics tool to create interactive graphs and dashboards. suffered from an Unauthenticated Directory Traversal vulnerability. 

that enabled remote access to local files

This vulnerability, known under [CVE-2021-43798](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-43798), was discovered on the 3rd of december of 2021 and publicly released on the 7th of that month. 

Versions v8.0.0-beta1 to v8.3.0 are found to be vulnerable in their default configuration. 

Emergency releases were created and several new releases after v8.3.0 have been published. An attacker exploiting this vulnerability can read local and most likely sensitive files, such as usernames and possibly cleartext credentials from local configuration files.

januari 9h DIVD found 10500 vulnerable instances on Shodan.

February 6th 6571 vulnerable

March 1 2180 vulnerable.

## Timeline

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