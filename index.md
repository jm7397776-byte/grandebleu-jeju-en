---
layout: default
title: Grande Bleu Jeju Yacht — Premium Sailing Tours
---

<div style="text-align:center;padding:40px 20px;background:linear-gradient(135deg,#1a3a5c,#2a5278);color:white;border-radius:12px;margin-bottom:32px;">
  <h1 style="font-size:36px;margin-bottom:12px;">⛵ Grande Bleu Jeju</h1>
  <p style="font-size:18px;opacity:0.9;">Korea's Only Certified Catamaran · 91-Person Capacity · Sunset Cruise</p>
  <p style="font-size:14px;opacity:0.7;margin-top:16px;">Departing daily from Seogwipo Daepo Port · Jeju Island</p>
  <div style="margin-top:24px;">
    <a href="{{ '/book/' | relative_url }}" style="display:inline-block;background:#ffc857;color:#1a3a5c;padding:12px 28px;border-radius:24px;text-decoration:none;font-weight:bold;margin:0 8px;">Book Now</a>
    <a href="{{ '/about/' | relative_url }}" style="display:inline-block;border:2px solid white;color:white;padding:10px 28px;border-radius:24px;text-decoration:none;margin:0 8px;">About</a>
  </div>
</div>

## Why Grande Bleu

- 🇰🇷 **Korea's only certified** brand catamaran sailing yacht
- ⛵ Real sailing with white sails — sunset course available
- 👨‍👩‍👧 91-person capacity — perfect for families, couples, corporate
- 🍱 **Free onboard food court** — draft beer, wine, tangerine juice, ramen
- 🐟 **Real Jeju fish experience** — rockfish, scorpionfish, filefish
- 🏨 **5-star hotel partnerships** — Shilla, Parnas
- 🎬 Filming location for K-dramas, films, celebrities

## Latest Stories

{% for post in site.posts limit:6 %}
<div style="padding:16px;border:1px solid #e0e0e0;border-radius:8px;margin-bottom:12px;">
  <h3 style="margin-top:0;"><a href="{{ post.url | relative_url }}" style="color:#1a3a5c;text-decoration:none;">{{ post.title }}</a></h3>
  <p style="color:#666;font-size:14px;">{{ post.description | default: post.excerpt | strip_html | truncate: 160 }}</p>
  <small style="color:#999;">{{ post.date | date: "%B %d, %Y" }}</small>
</div>
{% endfor %}

## Book Your Experience

📞 +82-64-739-7776 · 💬 Naver TalkTalk 그랑블루요트 · 🌏 [Klook](https://www.klook.com) · 📷 [@gb.jeju](https://instagram.com/gb.jeju)
