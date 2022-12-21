---
layout: report
has_casefile: true
date: 2022-12-16
title: Greynoise's Ukraine Only list
case: DIVD-2022-00014
author: Gerard Janssen
lead: Frank Breedijk
csirt: []
researchers: []
excerpt: ''
published: false

---
On February 24, 2022, Andrew Morris – founder of cyber security company GreyNoise Intelligence – [tweeted ](https://twitter.com/Andrew___Morris/status/1496923547872206852?s=20&t=Y5vBKAso8TRrwief4KpbLg)about a “free, public, unauthenticated, self-updating feed of all IPs that are exclusively targeting devices geographically located in Ukraine’s IP space with scans, exploits, etc.”

![](/uploads/screenshot-andrew-morris-2.png)

GreyNoise Intelligence is based in Washington DC and analyzes ‘Internet background noise’, in this case, IP addresses targeting 'honey pots' based in Ukraine. The DIVD examined the list with IP addresses and found that some of the IP addresses were compromised NAS servers, routers, and AWS instances.

![Two waves of activity](/uploads/greynoiseukrainonlygraph2.png "Servers targeting honey pots in Ukraine")

Overall the DIVD sent 5698 notifications to owners of the IP addresses that appeared on the list.

GreyNoise silently stopped updating the API after 1 Aug 2022 and the DIVD closed this case on August 15, 2022.

On October 5, 2022, there was an evaluation of DIVD’s ethical commission. The verdict was that this case falls outside the current Code of Conduct (CoC) version because the attacker is more than likely one threat actor. The DIVD has stated its position not to cooperate (offensively) in global conflicts in which the Netherlands is not directly involved.

## Timeline

| --- | --- |

|Date | Description |

## **Timeline**

| --- | --- |
| Date | Description |
| 24 Feb 2022 | GreyNoise announces their plans to publish a “free, public, unauthenticated, self-updating feed of all IPs that are exclusively targeting devices geographically located in Ukraine’s IP space with scans, exploits, etc.” |
| 04 Mar 2022 | Case opened |
| 05 Mar 2022 | First notifications sent |
|  31 Jul 2022 | Last update to the GreyNoise Ukraine only list |
| 15 Aug 2022 | Case closed |