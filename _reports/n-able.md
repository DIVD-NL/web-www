---
layout: report
title: N-able
case: DIVD-2021-00017
has_casefile : true
date: 2022-11-02
author: Gerard Janssen
lead: Victor Gevers
csirt: []
researchers:
- Tom Wolters
- Hidde Smit
excerpt: DIVD researchers identified multiple zerodays in SolarWinds N-able N-central.

---
5 July 2021 DIVD researchers Hidde Smit and Tom Wolters found two zeroday vulnerabilities in N-Central, N-Able-software. N-Able was formerly owned by Solarwinds, a global leader in network and systems management software. N-Central is a tool for Remote Monitoring and Management (RMM). As networks grow in complexity and scale to thousands or tens of thousands of devices, IT service providers need powerful tools to help them keep up. N-Central is such a tool.

Managed Service Providers (MSP’s) and IT departments, use it to manage computers remotely. N-Central is a cloud product, but vulnerabilities in the software can have a significant impact on physical computers and networks.

The DIVD researchers showed that authenticated users could abuse vulnerabilities in the software. By using a relocation function, it was possible to move an agent to another company. An attacker could get full rights to do everything on such an agent and consequently get on the network of the company the computer was connected to. The researchers also managed to create agents at other companies. These could be used for reconnaissance, or to spam another company with fake agents.

In addition to these findings, the DIVD researchers found two additional problems. A Cross-site scripting vulnerability and a possibility for Iframe injection.

On July 12 DIVD contacted N-Able. They reported four vulnerabilities in total. The Vendor confirmed the vulnerabilities and released an update on August 27, 2021. This update solved the two initial zerodays.

After that DIVD found 104 vulnerable IP addresses, on which still unpatched systems were active. The DIVD sent mail to notify the users of the need to update.

On 5 October N-able released version 2022.7, which solved the two remaining vulnerabilities reported by DIVD. This update solves all zerodays reported by DIVD.

  
Suppose bad actors gain access to software used to manage other computers. In that case, this can have major consequences, as demonstrated by the Kaseya case, in which DIVD researchers found several zero days. Unfortunately, not all zerodays could be patched on time, and one of them was used in the now-famous Kaseya attack. In the case of N-able, such a disaster seems to have been avoided.

The DIVD continues to look for zerodays in RMM-software because the impact of a hack in this type of software can have enormous consequences

On July 12 DIVD contacted N-Able. The Vendor confirmed the vulnerability and released an update on August 27, 2021.

After that DIVD found 104 vulnerable IP addresses, on which still unpatched systems were active. The DIVD sent mail to notify the users of the need to update.

Suppose bad actors gain access to software used to manage other computers. In that case, this can have major consequences, as demonstrated by the Kaseya case, in which DIVD researchers found several zero days. Unfortunately, not all zero days could be patched on time, and one of them was used in the now-famous Kaseya attack. In the case of N-able, such a disaster seems to have been avoided.

The DIVD continues to look for zerodays in RMM-software because the impact of a hack in this type of software can have enormous consequences

## Timeline

| Date | Description |
|:-----:|-------------|
| 05 July 2021 | Four vulnerabilities discovered. |
| 12 July 2021 | Vendor informed. |
| 14 July 2021 | Vendor confirmed vulnerability. |
| 27 August 2021 | 2021.1 HF6 released. Two vulnerabilities solved.|
| 24 September 2021 | Vendor notified DIVD about the fix. |
| 5 October 2022 | Vendor fixed the two remaining vulnerabilities reported by DIVD in release 2022.7 |