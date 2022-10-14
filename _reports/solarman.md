---
layout: report
title: Solarman
case: 'DIVD-2022–00009 '
date: 2022-10-12T00:00:00.000+02:00
author: Gerard Janssen
lead: Frank Breedijk
csirt: []
researchers:
- Célistine Oosting
- Jelle Ursem
excerpt: DIVD exposes vulnerabilities in solar panels and inverters.
published: false

---

On April 16, 2021, DIVD researcher Célistine Oosting discovered that data from her parents' Omnik-solar panel system were sent to China. Omnik is, or rather was, a German company that produces PV systems. It went bankrupt in October 2021 and was taken over by the Chinese company Solarman after which the panels started sending their data to Solarman in China. Oosting realized that the data transfer violates the General Data Protection Regulation (GDPR), which must guarantee the protection of personal data within the European Union. Célistine tweeted about this.

Ethical hacker Jelle Ursem read the tweet. He did not know the company, was curious and searched Github to see if he could find repositories that mention Solarman and "password". In one of them, he stumbled upon the credentials for a backend account called ‘Super Administrator. Ursem could get access to a super admin panel. To his horror, he found that he was able to upload and download the firmware of the inverters. A bad actor with access to this admin account would not only have been able to get access to the networks of the customers but also could ‘brick’ or modify all the devices.

Ursem, who also joined the DIVD, found that this was possible for 996.000 systems worldwide, 42.000 in the Netherlands, 7.200 in Germany, 18.000 in England, 3.400 in the US, and 326.000 in China. In total these PV systems were able to produce more than 10 Gigawatts of power. In a worst-case scenario, he could build a botnet of inverters that were under his control. Switching large numbers of inverters off and on again quickly at tactical times could destabilize the power balance on the grid in such a way that it could cause power outages in some areas.

DIVD tried to report these findings to the company and convince them that their systems were vulnerable, but there was no response. Ultimately, after months of trying, at the request of DIVD, the Dutch Embassy in China and the Chinese embassy in The Hague got involved in establishing contact between the DIVD and Solarman. And, the Chinese CERT, CN-CERT played a crucial positive role in these events as well.

The login details have subsequently been changed and the GitHub repository took offline after they had been exposed for at least 2 years

Parliamentary questions were asked in Dutch Parlement by MP Queeny Rajkowski. In response, the Dutch Telekom Agency has issued research on inverters. The Telecom Agency will start a conversation with the relevant manufacturers about how cybersecurity improvements could be achieved.

But still, it is unnerving that a Chinese company has control of this kind of power, not only on the European grid but on grids worldwide. And Personal Identifiable Information is, at this point still sent to China.

‘Everyone understands that these super admin accounts also exist for Googles Nest or Tesla,’ said Frank Breedijk, Crisis Manager of DIVD, who looked with Ursem into Solarman's super admin account, ‘but if you look in such an account, that realization becomes deeper.’

The Solarman case shows that as more and more people build Photovoltaic systems, it is important to understand who is in control of those systems and to keep that power within bounds.

| --- | --- |
| 05 Aug 2019 | Password(s) committed to GitHub repository |
| 05 Aug 2019-24 Apr 2021 | Password exposed and service vulnerable - 1st time |
| 16 Apr 2021 | Célistine Oosting, tweets that Omnik converter is now uploading data to China |
| 17 Apr 2021 | Jelle finds working password for SolarMan Super Admin account in Github repo |
| 17 Apr 2021 | Vendor informed |
| 24 Apr 2021 | Password changed |
| 03 Feb 2022 | Jelle discovers that password was changed back to password in GitHub repo |
| 03 Feb 2022-02 Jul 2022 | Password exposed and service vulnerable - 1st time |
| 06 Feb 2022 | Case opened |
| 06 Feb 2022 | Vendor notified |
| 07 Feb 2022 | DIVD involves the Dutch National Cyber Security Center (NCSC) |
| 20 Feb 2022 | NCSC notifies vendor and Cert-CN |
| 15 Apr 2022 | NCSC notifies Cert.cn |
| 10 May 2022 | NCSC involves the Dutch embassy in China. |
| 09 Jun 2022 | NCSC and China Cert in contact. The case file has been given to China Cert |
| 17 Jun 2022 | DIVD contacts our office neighbor, the Chinese consulate in The Hague. We are given an (unnamed) liaison at China Cert |
| 26 Jun 2022 | Dutch representatives Queeny Rajkowski, Silvio Erkens have asked questions to minister Yesilgöz-Zegeriu and minister Jetten based on the publication in Follow the Money |
| 02 Jul 2022 | Account is closed and GitHub repo was removed |
| 02 Jul 2022 | Case closed |
| 03 Jul 2022 | NCSC reports that the Dutch ambassador has sent a formal letter to China Cert who confirmed receipt of the data |
| 24 Jul 2022 | Findings presented at MCH2022 |
| 24 Jul 2022 | Vendor responded |
| 09 Aug 2022 | DIVD asks the vendor to clarify the statements they mode based on our case. |
| 09 Aug 2022-09 Sep 2022 | Waiting for the vendor to respond |
| 02 Sep 2022 | Dutch ministers Yesilgöz-Zegeriu and Jetten answer the questions asked by representatives Queeny Rajkowski and Silvio Erkens |
| 09 Sep 2022 | To date DIVD has not received a response from Solarman |

[https://www.ftm.nl/artikelen/hack-chinese-zonnepanelen-bedreiging-stroomnet](https://www.ftm.nl/artikelen/hack-chinese-zonnepanelen-bedreiging-stroomnet "https://www.ftm.nl/artikelen/hack-chinese-zonnepanelen-bedreiging-stroomnet").

[https://www.rtlnieuws.nl/video/uitzendingen/video/5322987/rtl-nieuws-1930-uur](https://www.rtlnieuws.nl/video/uitzendingen/video/5322987/rtl-nieuws-1930-uur "https://www.rtlnieuws.nl/video/uitzendingen/video/5322987/rtl-nieuws-1930-uur")