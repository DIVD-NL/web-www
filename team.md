---
layout: default
title: team
header: Our teams
---
## We have the following awesome teams

{% for t in site.data.orgchart.teams %}
### {{ t.name }}

{% assign found = site.teams | where: "slug", t.id %}
{{ t.description }} {% if found.size > 0 %}[More](/teams/{{ t.id }}/){% endif %}

{% endfor %}

## Our organisation chart

<div class="mermaid" id='flowChart'>
flowchart LR
    {% for t in site.data.orgchart.teams %}
            subgraph {{t.id}}[{{ t.name }}]
                {% if t.orientation %}
                    direction {{ t.orientation }}
                {% else %}
                    direction LR
                {% endif %}
                {% assign ts = site.teams | where: "slug", t.id %}
                {% if t.show_members %}
                    {% for team in ts %}
                        {% for mid in team.members %}
                            {% assign members = site.people | where: "person_id", mid %}
                            {% for member in members %}
                                {% if member.manager != "None" %}p{{ member.manager }} --- {% endif %}p{{ member.person_id }}[{{ member.name }}]
                            {% endfor %}                    
                        {% endfor %}
                    {% endfor %}
                    {% for m in t.members %}
                        {% assign members = site.people | where: "name", m %}
                        {% for member in members %}
                            {% if member.manager != "None" %}p{{ member.manager }} --- {% endif %}p{{ member.person_id }}[{{ member.name }}]
                        {% endfor %}                    
                    {% endfor %}
                {% else %}
                    {% assign leads = site.people | where: "name", t.lead %}
                    {% for lead in leads %}
                        {% assign lead_id = lead.person_id %}
                        {% if lead.manager != "None" %}p{{ lead.manager }} --- {% endif %}p{{ lead.person_id }}[{{ lead.name }}\n{{ lead.role }}]
                    {% endfor %}
                    {% assign team_size = -1 %}
                    {% for team in ts %}
                        {% assign team_size = team_size | plus: team.members.size %}
                    {% endfor %}
                    p{{ lead_id }} --- members-{{ t.id }}[{{ team_size }} team members]
                {% endif %}
            end            
            {% unless t.reports_to == "None" %}
                {{ t.reports_to }} --- {{ t.id }}
            {% endunless %}
    {% endfor %}
</div>

