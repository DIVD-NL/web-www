---
layout: report
has_casefile: true
date: 2022-11-28
title: GitLab GraphQL API User Enumeration
case: DIVD-2022-00015
author: Gerard Janssen
lead: Martin van Wingerden
csirt: []
researchers:
- Celistine Oosting
- Victor Gevers
- Mick Beer
excerpt: Several vulnerabilities found in Gitlab
published: false

---
On November 18, 2021, a researcher at security company Rapid7 discovered a vulnerability (CVE-2021-4191) in Gitlab, that gave an unauthorized user the opportunity to collect the personal information of other users. GitLab is open-source DevOps software. The vulnerability could give a remote, unauthenticated attacker the possibility to collect registered GitLab usernames, names, and email addresses. Malicious actors could use this information to conduct brute-force attacks, including password guessing, password spraying - trying usernames with common passwords – and credential stuffing - algorithmically trying usernames and passwords on different sites. The vulnerability affected GitLab versions since 13.0.

Following responsible disclosure, on February 25, 2022, GitLab published a fix for the vulnerability. DIVD scanned the internet and found almost 14000 vulnerable systems. The DIVD notified the system owners and advised them to update to version 14.6.5, 14.7.4, or 14.8.2. Besides CVE-2021-4191 the patch also fixes six other security flaws, one of which is critical (CVE-2022-0735).

Disabling public profiles would also prevent unauthenticated information gathering.

On July 1, 6415 systems were still vulnerable and a notification was sent.

After a final scan on August 31th, there were still 5447 vulnerable systems left, but the case was closed.

## **Timeline**

| --- | --- |
| Date | Description |
| 25 Feb 2022 | GitLab reported the vulnerability. |
| 04 Mar 2022 | DIVD starts OSINT research. |
| 04 Mar 2022-31 Aug 2022 | DIVD scans the internet for vulnerable GitLab instances. |
| 05 Mar 2022 | DIVD starts identifying the owners. |
| 07 Mar 2022 | DIVD sends out the first notification to abuse mailboxes. |
| 24 Mar 2022 | DIVD sends out the second notification to abuse mailboxes. |
| 27 Apr 2022 | DIVD sends out the third notification to abuse mailboxes. |
| 01 Jul 2022 | DIVD sends out a final notification to abuse mailboxes. |
| 31 Aug 2022 | Case closed. |

## **Links**

[https://thehackernews.com/2022/03/new-security-vulnerability-affects.html?m=1](https://thehackernews.com/2022/03/new-security-vulnerability-affects.html?m=1 "https://thehackernews.com/2022/03/new-security-vulnerability-affects.html?m=1")

[https://about.gitlab.com/releases/2022/02/25/critical-security-release-gitlab-14-8-2-released/#unauthenticated-user-enumeration-on-graphql-api](https://about.gitlab.com/releases/2022/02/25/critical-security-release-gitlab-14-8-2-released/#unauthenticated-user-enumeration-on-graphql-api "https://about.gitlab.com/releases/2022/02/25/critical-security-release-gitlab-14-8-2-released/#unauthenticated-user-enumeration-on-graphql-api")