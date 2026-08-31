### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade — Ensino Fundamental
## Dinheiro de Ingrid e Ligianne — limites da computação

**Situação-problema:**

Ingrid tem 12 reais a mais que Ligianne. Se Ligianne possui 27 reais, quantos reais Ingrid tem?

*Categoria 3 — Comparação de medidas (referendo desconhecido) (Vergnaud)*
"""

# ╔═╡ 0000038d-0000-4000-8000-000000000000
HTML("""
<svg viewBox="0 0 706 190" width="100%" style="max-width:706px" xmlns="http://www.w3.org/2000/svg"><g transform="translate(0,0)">
    <rect x="4" y="4" width="222" height="182" rx="10" fill="#fbfcfd" stroke="#4a5a6a" stroke-width="2"/>
    <text x="115" y="24" text-anchor="middle" font-size="12" fill="#5a3a1a" font-family="sans-serif" font-weight="700">Ligianne</text>
    <g transform="translate(115,110) scale(1)">
    <circle cx="0" cy="-28" r="10" fill="#4a5a6a"/>
    <line x1="0" y1="-18" x2="0" y2="14" stroke="#4a5a6a" stroke-width="4" stroke-linecap="round"/>
    <line x1="0" y1="-6" x2="-14" y2="6" stroke="#4a5a6a" stroke-width="4" stroke-linecap="round"/>
    <line x1="0" y1="-6" x2="14" y2="6" stroke="#4a5a6a" stroke-width="4" stroke-linecap="round"/>
    <line x1="0" y1="14" x2="-10" y2="34" stroke="#4a5a6a" stroke-width="4" stroke-linecap="round"/>
    <line x1="0" y1="14" x2="10" y2="34" stroke="#4a5a6a" stroke-width="4" stroke-linecap="round"/>
  </g><g><rect x="73" y="134" width="84" height="26" rx="6" fill="#fff" stroke="#8a97a3" stroke-width="1.5"/>
  <text x="115" y="152" text-anchor="middle" font-size="11" fill="#1a2733" font-family="sans-serif" font-weight="700">R$27</text></g>
    <text x="115" y="176" text-anchor="middle" font-size="11" fill="#1a2733" font-family="sans-serif">Ligianne tem R$27</text>
  </g><g transform="translate(238,0)">
    <rect x="4" y="4" width="222" height="182" rx="10" fill="#fbfcfd" stroke="#4a5a6a" stroke-width="2"/>
    <text x="115" y="24" text-anchor="middle" font-size="12" fill="#5a3a1a" font-family="sans-serif" font-weight="700">Comparação</text>
    <g transform="translate(80,110) scale(0.9)">
    <circle cx="0" cy="-28" r="10" fill="#4a5a6a"/>
    <line x1="0" y1="-18" x2="0" y2="14" stroke="#4a5a6a" stroke-width="4" stroke-linecap="round"/>
    <line x1="0" y1="-6" x2="-14" y2="6" stroke="#4a5a6a" stroke-width="4" stroke-linecap="round"/>
    <line x1="0" y1="-6" x2="14" y2="6" stroke="#4a5a6a" stroke-width="4" stroke-linecap="round"/>
    <line x1="0" y1="14" x2="-10" y2="34" stroke="#4a5a6a" stroke-width="4" stroke-linecap="round"/>
    <line x1="0" y1="14" x2="10" y2="34" stroke="#4a5a6a" stroke-width="4" stroke-linecap="round"/>
  </g><g transform="translate(150,105) scale(0.9)">
    <circle cx="0" cy="-28" r="10" fill="#1f5c85"/>
    <line x1="0" y1="-18" x2="0" y2="14" stroke="#1f5c85" stroke-width="4" stroke-linecap="round"/>
    <line x1="0" y1="-6" x2="-14" y2="6" stroke="#1f5c85" stroke-width="4" stroke-linecap="round"/>
    <line x1="0" y1="-6" x2="14" y2="6" stroke="#1f5c85" stroke-width="4" stroke-linecap="round"/>
    <line x1="0" y1="14" x2="-10" y2="34" stroke="#1f5c85" stroke-width="4" stroke-linecap="round"/>
    <line x1="0" y1="14" x2="10" y2="34" stroke="#1f5c85" stroke-width="4" stroke-linecap="round"/>
  </g><g><rect x="108" y="134" width="84" height="26" rx="6" fill="#fff" stroke="#8a97a3" stroke-width="1.5"/>
  <text x="150" y="152" text-anchor="middle" font-size="11" fill="#1a2733" font-family="sans-serif" font-weight="700">+12</text></g>
    <text x="115" y="176" text-anchor="middle" font-size="11" fill="#1a2733" font-family="sans-serif">Ingrid tem 12 a mais</text>
  </g><g transform="translate(476,0)">
    <rect x="4" y="4" width="222" height="182" rx="10" fill="#fbfcfd" stroke="#4a5a6a" stroke-width="2"/>
    <text x="115" y="24" text-anchor="middle" font-size="12" fill="#5a3a1a" font-family="sans-serif" font-weight="700">Resultado</text>
    <g transform="translate(115,110) scale(1.1)">
    <circle cx="0" cy="-28" r="10" fill="#0e3550"/>
    <line x1="0" y1="-18" x2="0" y2="14" stroke="#0e3550" stroke-width="4" stroke-linecap="round"/>
    <line x1="0" y1="-6" x2="-14" y2="6" stroke="#0e3550" stroke-width="4" stroke-linecap="round"/>
    <line x1="0" y1="-6" x2="14" y2="6" stroke="#0e3550" stroke-width="4" stroke-linecap="round"/>
    <line x1="0" y1="14" x2="-10" y2="34" stroke="#0e3550" stroke-width="4" stroke-linecap="round"/>
    <line x1="0" y1="14" x2="10" y2="34" stroke="#0e3550" stroke-width="4" stroke-linecap="round"/>
  </g><g><rect x="73" y="134" width="84" height="26" rx="6" fill="#fff" stroke="#8a97a3" stroke-width="1.5"/>
  <text x="115" y="152" text-anchor="middle" font-size="11" fill="#1a2733" font-family="sans-serif" font-weight="700">R$39</text></g>
    <text x="115" y="176" text-anchor="middle" font-size="11" fill="#1a2733" font-family="sans-serif">Ingrid tem R$39</text>
  </g></svg>
""")

# ╔═╡ 00000002-0000-4000-8000-000000000000
HTML("""
<svg viewBox="0 0 420 150" width="100%" style="max-width:420px" xmlns="http://www.w3.org/2000/svg">
    <text x="10" y="41" font-size="11" fill="#3a4a58" font-family="sans-serif">Dinheiro de Ligianne</text>
    <rect x="90" y="20" width="70.2" height="34" rx="6" fill="#eef2f6" stroke="#4a5a6a" stroke-width="1.5"/>
    <text x="125.1" y="41" text-anchor="middle" font-size="12" fill="#1a2733" font-family="sans-serif" font-weight="600">27</text>
    <text x="10" y="97" font-size="11" fill="#0e3550" font-family="sans-serif">Dinheiro de Ingrid (?)</text>
    <rect x="90" y="76" width="101.4" height="34" rx="6" fill="#dce8f0" stroke="#1f5c85" stroke-width="1.5"/>
    <text x="140.7" y="97" text-anchor="middle" font-size="12" fill="#0e3550" font-family="sans-serif" font-weight="700">39</text>
    <path d="M 160.2 54 L 201.4 54 L 201.4 76 L 191.4 76" fill="none" stroke="#8a97a3" stroke-width="1.5"/>
    <text x="217.4" y="69" font-size="12" fill="#5a3a1a" font-family="sans-serif" font-weight="700">12</text>
    <text x="217.4" y="85" font-size="11" fill="#5a3a1a" font-family="sans-serif">a mais</text>
  </svg>
""")

# ╔═╡ 00000003-0000-4000-8000-000000000000
md"""
**Pensamento Computacional em jogo — o que o computador calcula vs. o que ele entende.** O código soma dois números perfeitamente, mas não sabe o que é "dinheiro" — um limite da computação.

Execute as células de código abaixo, uma por vez, e observe o resultado de cada uma antes de seguir para a próxima.
"""

# ╔═╡ 00000004-0000-4000-8000-000000000000
dinheiroDeLigianne = 27

# ╔═╡ 00000005-0000-4000-8000-000000000000
diferencaDeIngridAMais = 12

# ╔═╡ 00000006-0000-4000-8000-000000000000
dinheiroDeIngrid = dinheiroDeLigianne + diferencaDeIngridAMais

# ╔═╡ Cell order:
# ╠═0000038d-0000-4000-8000-000000000000
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
# ╠═00000004-0000-4000-8000-000000000000
# ╠═00000005-0000-4000-8000-000000000000
# ╠═00000006-0000-4000-8000-000000000000
