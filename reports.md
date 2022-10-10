---
layout: default
title: reports
header: case reports
---
<header>
	<h2>Reports</h2>
</header>

These case reports give you insight into the kinds of vulnerabilities we found, the numbers and how we helped to fix them. If you want to be informed on our current research projects, check the [cases page on the CSIRT site](https://csirt.divd.nl/cases/). 

{% assign pages = site.reports |reverse %}
{% for p in pages %}
<hr>
## [{% unless p.title contains "Report"%}Report {% endunless %}{% unless p.title contains p.case %} {{ p.case }} - {% endunless %}{{ p.title}}]({{p.url}})
*{{ p.date | date_to_long_string }}, by {{ p.author | default: "anonymous" }}*

{{ p.excerpt }}

[Read more]({{p.url}})
{% endfor %}
