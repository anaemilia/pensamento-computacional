### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade — Ensino Fundamental
## Bolas azuis e vermelhas de Paulo — decomposição

**Situação-problema:**

Paulo tem 17 bolas azuis e vermelhas. Se ele tem 11 bolas azuis, quantas bolas vermelhas ele tem?

*Categoria 1 — Composição de medidas (parte desconhecida) (Vergnaud)*
"""

# ╔═╡ 0000038a-0000-4000-8000-000000000000
HTML("""
<svg viewBox="0 0 706 190" width="100%" style="max-width:706px" xmlns="http://www.w3.org/2000/svg"><g transform="translate(0,0)">
    <rect x="4" y="4" width="222" height="182" rx="10" fill="#fbfcfd" stroke="#4a5a6a" stroke-width="2"/>
    <text x="115" y="24" text-anchor="middle" font-size="12" fill="#5a3a1a" font-family="sans-serif" font-weight="700">O todo</text>
    <g transform="translate(115,110) scale(1)">
    <circle cx="0" cy="-28" r="10" fill="#4a5a6a"/>
    <line x1="0" y1="-18" x2="0" y2="14" stroke="#4a5a6a" stroke-width="4" stroke-linecap="round"/>
    <line x1="0" y1="-6" x2="-14" y2="6" stroke="#4a5a6a" stroke-width="4" stroke-linecap="round"/>
    <line x1="0" y1="-6" x2="14" y2="6" stroke="#4a5a6a" stroke-width="4" stroke-linecap="round"/>
    <line x1="0" y1="14" x2="-10" y2="34" stroke="#4a5a6a" stroke-width="4" stroke-linecap="round"/>
    <line x1="0" y1="14" x2="10" y2="34" stroke="#4a5a6a" stroke-width="4" stroke-linecap="round"/>
  </g><g><rect x="73" y="134" width="84" height="26" rx="6" fill="#fff" stroke="#8a97a3" stroke-width="1.5"/>
  <text x="115" y="152" text-anchor="middle" font-size="11" fill="#1a2733" font-family="sans-serif" font-weight="700">17 bolas</text></g>
    <text x="115" y="176" text-anchor="middle" font-size="11" fill="#1a2733" font-family="sans-serif">Paulo tem 17 bolas ao todo</text>
  </g><g transform="translate(238,0)">
    <rect x="4" y="4" width="222" height="182" rx="10" fill="#fbfcfd" stroke="#4a5a6a" stroke-width="2"/>
    <text x="115" y="24" text-anchor="middle" font-size="12" fill="#5a3a1a" font-family="sans-serif" font-weight="700">Parte conhecida</text>
    <g transform="translate(115,105) scale(1)">
    <circle cx="0" cy="-28" r="10" fill="#1f5c85"/>
    <line x1="0" y1="-18" x2="0" y2="14" stroke="#1f5c85" stroke-width="4" stroke-linecap="round"/>
    <line x1="0" y1="-6" x2="-14" y2="6" stroke="#1f5c85" stroke-width="4" stroke-linecap="round"/>
    <line x1="0" y1="-6" x2="14" y2="6" stroke="#1f5c85" stroke-width="4" stroke-linecap="round"/>
    <line x1="0" y1="14" x2="-10" y2="34" stroke="#1f5c85" stroke-width="4" stroke-linecap="round"/>
    <line x1="0" y1="14" x2="10" y2="34" stroke="#1f5c85" stroke-width="4" stroke-linecap="round"/>
  </g><g><rect x="73" y="134" width="84" height="26" rx="6" fill="#fff" stroke="#8a97a3" stroke-width="1.5"/>
  <text x="115" y="152" text-anchor="middle" font-size="11" fill="#1a2733" font-family="sans-serif" font-weight="700">11 azuis</text></g>
    <text x="115" y="176" text-anchor="middle" font-size="11" fill="#1a2733" font-family="sans-serif">11 são azuis</text>
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
  <text x="115" y="152" text-anchor="middle" font-size="11" fill="#1a2733" font-family="sans-serif" font-weight="700">6 verm.</text></g>
    <text x="115" y="176" text-anchor="middle" font-size="11" fill="#1a2733" font-family="sans-serif">As outras 6 são vermelhas</text>
  </g></svg>
""")

# ╔═╡ 00000002-0000-4000-8000-000000000000
HTML("""
<svg viewBox="0 0 318 176" width="100%" style="max-width:520px" xmlns="http://www.w3.org/2000/svg">
    <rect x="20" y="14" width="130" height="56" rx="8" fill="#eef2f6" stroke="#4a5a6a" stroke-width="1.5"/>
      <text x="85" y="36" text-anchor="middle" font-size="13" fill="#1a2733" font-family="sans-serif" font-weight="600">11</text>
      <text x="85" y="54" text-anchor="middle" font-size="11" fill="#3a4a58" font-family="sans-serif">Bolas azuis</text><rect x="168" y="14" width="130" height="56" rx="8" fill="#eef2f6" stroke="#4a5a6a" stroke-width="1.5"/>
      <text x="233" y="36" text-anchor="middle" font-size="13" fill="#1a2733" font-family="sans-serif" font-weight="600">?</text>
      <text x="233" y="54" text-anchor="middle" font-size="11" fill="#3a4a58" font-family="sans-serif">Bolas vermelhas</text><line x1="85" y1="70" x2="159" y2="92" stroke="#8a97a3" stroke-width="1.5"/><line x1="233" y1="70" x2="159" y2="92" stroke="#8a97a3" stroke-width="1.5"/>
    <line x1="159" y1="92" x2="159" y2="132" stroke="#8a97a3" stroke-width="1.5"/>
    <rect x="89" y="132" width="140" height="56" rx="8" fill="#dce8f0" stroke="#1f5c85" stroke-width="1.5"/>
    <text x="159" y="154" text-anchor="middle" font-size="13" fill="#0e3550" font-family="sans-serif" font-weight="700">17</text>
    <text x="159" y="172" text-anchor="middle" font-size="11" fill="#0e3550" font-family="sans-serif">Total de bolas</text>
  </svg>
""")

# ╔═╡ 00000003-0000-4000-8000-000000000000
md"""
**Pensamento Computacional em jogo — decompor o todo em partes.** O "todo" (17 bolas) é decomposto em duas partes: azul (conhecida) e vermelha (a calcular).

Execute as células de código abaixo, uma por vez, e observe o resultado de cada uma antes de seguir para a próxima.
"""

# ╔═╡ 00000004-0000-4000-8000-000000000000
qtdBolasTotal = 17   # o todo

# ╔═╡ 00000005-0000-4000-8000-000000000000
qtdBolasAzuis = 11   # parte 1, conhecida

# ╔═╡ 00000006-0000-4000-8000-000000000000
qtdBolasVermelhas = qtdBolasTotal - qtdBolasAzuis   # parte 2, decomposta do todo

# ╔═╡ Cell order:
# ╠═0000038a-0000-4000-8000-000000000000
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
# ╠═00000004-0000-4000-8000-000000000000
# ╠═00000005-0000-4000-8000-000000000000
# ╠═00000006-0000-4000-8000-000000000000
