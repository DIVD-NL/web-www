---
layout: report
has_casefile: true
date: 2023-05-20
title: Exposed BACnet Devices
case: DIVD-2022-00005
author: Gerard Janssen
lead: Ruben Uithol
csirt: []
researchers:
- Artur Miron
- Patrick Hulshof
- Ruben Uithol
excerpt: Exposed BACnet ports
start: 2022-01-29
end:
---
During the process of conducting vulnerability scans focused on the Log4J vulnerability, the DIVD discovered numerous Siemens systems that exposed the BACnet protocol via an unsecured port.

BACnet, or Building Automation and Control Networks, is a widely adopted communication protocol designed for building automation and control systems. Established as an international standard by the American Society of Heating, Refrigerating, and Air-Conditioning Engineers (ASHRAE), BACnet facilitates communication and interoperability between devices and systems used in areas such as heating, ventilation, air-conditioning (HVAC), lighting, access, and fire detection. It is employed worldwide in commercial, industrial, and residential buildings to ensure effective and efficient building management.

These systems might be at risk of unauthorized access or manipulation by threat actors. Communication can be unencrypted and without proper authentication mechanisms, making it potentially vulnerable to interception or tampering.
An exposed BACnet port also increases the attack surface of the Siemens systems, potentially allowing attackers to gain access to other parts of the network and causing further damage.

The unintended exposure of BACnet ports poses potential security threats and may open the door to unauthorized access to essential building infrastructure.
In our initial investigation, we used Shodan to explore BACnet-port 47808. The search revealed a total of 29,736 systems were exposed. Following this, we conducted a scan and found 12,572 vulnerable BACnet systems. The respective owners of these systems were promptly notified and provided with strategic advice to restrict access to their BACnet controllers.

<div class="mermaid">
	gantt
	    title DIVD-2022-00005 - Exposed BACnet devices
	    dateFormat  YYYY-MM-DD
	    axisFormat  %e %b %Y
	    section Case
	  		DIVD-2022-00005 - Exposed BACnet devices           :2022-01-29, 2023-04-01
	    section Events
			Discovery of open BACnet devices. :  milestone, 2021-12-22, 0d
			Scanning the public interface to collect instances. :  milestone, 2022-01-05, 0d
			Case Opened :  milestone, 2022-01-29, 0d
			DIVD starts first round of notifications. :  milestone, 2022-02-08, 0d
			Case closed. : milestone, 2023-04-01
</div>

## **Links**

[https://csirt.divd.nl/cases/DIVD-2022-00005/](https://csirt.divd.nl/cases/DIVD-2022-00005/ "https://csirt.divd.nl/cases/DIVD-2022-00005/")

[https://www.dragos.com/blog/industry-news/assessing-the-bacnet-control-system-vulnerability/](https://www.dragos.com/blog/industry-news/assessing-the-bacnet-control-system-vulnerability/ "https://www.dragos.com/blog/industry-news/assessing-the-bacnet-control-system-vulnerability/")

[https://www.cisa.gov/news-events/ics-advisories/icsa-17-285-05](https://www.cisa.gov/news-events/ics-advisories/icsa-17-285-05 "https://www.cisa.gov/news-events/ics-advisories/icsa-17-285-05")

