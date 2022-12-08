---
layout: report
has_casefile: true
date: 2022-12-08
title: Odd Microsoft Certificate
case: DIVD-2022-00013
author: Gerard Janssen
lead: Jan Los
csirt: []
researchers: []
excerpt: ''
published: false

---
August 2021, DIVD researcher Jan Los noticed something peculiar during his investigation into exposed LDAP servers. LDAP (Lightweight Directory Access Protocol) is a software protocol that helps users find data about organizations, individuals, files, and devices in a network -- whether on the public Internet or on a corporate Intranet.

Jan Los found that secure LDAP servers often use an SSL certificate with the subject www.update.microsoft.com. The SSL certificate for [www.update.microsoft.com](http://www.update.microsoft.com) is not trusted anymore because the chain of trust was broken. In 2012 Microsoft had to regenerate the entire certificate chain. Using Shodan Jan Los found LDAP servers using this certificate, 357 listening on the LDAP port, and 8180 listening on the HTTPS port. And the number of servers using this certificate was growing. In a second investigation on 27 Feb 2022, Los found 8588 ip-addresses. The suspicion was that these certificates belonged to a criminal infrastructure.

The question arose whether scanning a criminal organization fitted within the objectives of the DIVD. The ethical committee of the DIVD, noted that ‘the purpose of DIVD is to make the internet more secure, and then identifying a criminal network (and taking it offline) could certainly contribute to increasing security.’ But before a final decision was made, another explanation was found for the certificates.

On the 21st of October, after consulting the Dutch operational response team consultation (o-irt-o), the DIVD, it became clear that the servers are used by Touch VPN. Using the certificate may allow TouchVPN to bypass content-filtering devices. DIVD’s data seem in accordance with that explanation, and the case was closed. Touch VPN’s trick might be dubious, the security risk is limited.

## **Timeline**

| --- | --- |
| Date | Description |
| 05 Feb 2022 | Certificates discovered for first time |
| 24 Aug 2022 | Case is referred to the ethics committee to see if it fits into the CoC |
| 19 Sep 2022 | Ethics committee, rules that case is within CoC |
| 28 Sep 2022 | Ethics committee is asked to reassess the case |
| 05 Oct 2022 | Ethics comittee explains earlier verdict, the case is a go |
| 21 Oct 2022 | Got a hint from the community |
| 23 Oct 2022 | Case file published |
| 23 Oct 2022 | Case closed |

## **Links**

[https://eromang.zataz.com/2012/06/18/update-microsoft-com-ssl-warnings-due-certificate-chain-update/](https://eromang.zataz.com/2012/06/18/update-microsoft-com-ssl-warnings-due-certificate-chain-update/ "https://eromang.zataz.com/2012/06/18/update-microsoft-com-ssl-warnings-due-certificate-chain-update/")