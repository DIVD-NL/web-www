---
layout: default
title: team
header: our team
---
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

{% comment %}
<div class="mermaid" id='flowChart'>
graph LR
    {% for member in site.people %}
         {% if member.manager != "None" %}p{{ member.manager }} --- {% endif %}p{{ member.person_id }}[{{ member.name }}]
    {% endfor %}
</div>

<div class="mermaid" id='flowChart'>
graph TD
	DG[Direzione Generale] ---|Staff Centrali<br/>Staff Centrali| 0[ ]
    style 0 width:0
    style DPA0 width:0
    0 --- DPA[Divisione Prodotto A]
    DPA ---  |Amministrazione| DPA0[ ]
	DPA0 --- DPAA[Acquisti]

	DPA0 --- DPAP[Produzione]
	DPA0 --- DPAV[Vendite]

    0 --- DPB[Divisione Prodotto B]
    style DPB0 width:0
    DPB --- |Amministrazione| DPB0[ ]
	DPB0 --- DPBA[Acquisti]
    DPB0 --- DPBP[Produzione]
	DPB0 --- DPBV[Vendite]
</div>
{% endcomment %}