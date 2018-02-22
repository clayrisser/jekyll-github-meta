---
layout: post
title:  "Jekyll GitHub Meta"
date:   2018-02-22 18:29:32 +0000
categories: jekyll update
---

Github Login: {{site.github_meta.user.login }}
<br />
<br />
Github Email: {{site.github_meta.user.email }}
<br />
{% for repo in site.github_meta.repos %}
  Repo Name: {{repo.name}}
  <br />
{% endfor %}
