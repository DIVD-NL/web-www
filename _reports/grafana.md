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
Grafana, a popular open source analytics tool to create interactive graphs and dashboards, suffered from an Unauthenticated Directory Traversal vulnerability. This vulnerability, known under [CVE-2021-43798](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-43798), was discovered on the 3rd of december of 2021 and publicly released on the 7th of that month. Versions v8.0.0-beta1 to v8.3.0 are found to be vulnerable in their default configuration. Emergency releases were created and several new releases after v8.3.0 have been published. An attacker exploiting this vulnerability can read local and most likely sensitive files, such as usernames and possibly cleartext credentials from local configuration files.

## What you can do

* If you are running a Grafana instance. make sure you update to the latest version.

## What we are doing

* We are processing the list of vulnerable Grafana instances. We have sent the first notifications by email.

## Timeline

| Date | Description |
| --- | --- |
| 03 Dec 2021 | Vulnerability reported to Grafana. |
| 07 Dec 2021 | Emergency patches released and full public release. |
| 10 Jan 2022 | DIVD created a list of vulnerable Grafana instances. |
| 18 Jan 2022 | First version of this case file. |
| 18 Jan 2022 | DIVD sent out a first batch of notifications. |
| 06 Feb 2022 | DIVD sent out a second batch of notifications. |

 1 Jan 2022 1 Feb 2022 1 Mar 2022 1 Apr 2022 1 May 2022 1 Jun 2022 1 Jul 2022 1 Aug 2022 1 Sep 2022 1 Oct 2022 1 Nov 2022Vulnerability reported to Grafana. DIVD-2022-00002 - Grafana (335 days) Emergency patches released and full public release. DIVD created a list of vulnerable Grafana instances. First version of this case file. DIVD sent out a first batch of notifications. DIVD sent out a second batch of notifications. CaseEvents

DIVD-2022-00002 - Grafana

## More information

* [Blog from Grafana](https://grafana.com/blog/2021/12/08/an-update-on-0day-cve-2021-43798-grafana-directory-traversal/)
* [CVE-2021-43798](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-43798)

 

 

* [Twitter](https://twitter.com/DIVDnl)
* [LinkedIn](https://www.linkedin.com/company/divd-nl)