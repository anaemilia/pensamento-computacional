### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade — Ensino Fundamental
## Borrachas de Marina — complexidade de algoritmos

**Situação-problema:**

Marina tem quatro borrachas azuis, três amarelas, duas verdes e cinco vermelhas. Quantas borrachas Marina tem?

*Categoria 1 — Composição de medidas (4 partes) (Vergnaud)*
"""

# ╔═╡ 00000002-0000-4000-8000-000000000000
HTML("""
<svg viewBox="0 0 614 176" width="100%" style="max-width:520px" xmlns="http://www.w3.org/2000/svg">
    <rect x="20" y="14" width="130" height="56" rx="8" fill="#eef2f6" stroke="#4a5a6a" stroke-width="1.5"/>
      <text x="85" y="36" text-anchor="middle" font-size="13" fill="#1a2733" font-family="sans-serif" font-weight="600">4</text>
      <text x="85" y="54" text-anchor="middle" font-size="11" fill="#3a4a58" font-family="sans-serif">Azuis</text><rect x="168" y="14" width="130" height="56" rx="8" fill="#eef2f6" stroke="#4a5a6a" stroke-width="1.5"/>
      <text x="233" y="36" text-anchor="middle" font-size="13" fill="#1a2733" font-family="sans-serif" font-weight="600">3</text>
      <text x="233" y="54" text-anchor="middle" font-size="11" fill="#3a4a58" font-family="sans-serif">Amarelas</text><rect x="316" y="14" width="130" height="56" rx="8" fill="#eef2f6" stroke="#4a5a6a" stroke-width="1.5"/>
      <text x="381" y="36" text-anchor="middle" font-size="13" fill="#1a2733" font-family="sans-serif" font-weight="600">2</text>
      <text x="381" y="54" text-anchor="middle" font-size="11" fill="#3a4a58" font-family="sans-serif">Verdes</text><rect x="464" y="14" width="130" height="56" rx="8" fill="#eef2f6" stroke="#4a5a6a" stroke-width="1.5"/>
      <text x="529" y="36" text-anchor="middle" font-size="13" fill="#1a2733" font-family="sans-serif" font-weight="600">5</text>
      <text x="529" y="54" text-anchor="middle" font-size="11" fill="#3a4a58" font-family="sans-serif">Vermelhas</text><line x1="85" y1="70" x2="307" y2="92" stroke="#8a97a3" stroke-width="1.5"/><line x1="233" y1="70" x2="307" y2="92" stroke="#8a97a3" stroke-width="1.5"/><line x1="381" y1="70" x2="307" y2="92" stroke="#8a97a3" stroke-width="1.5"/><line x1="529" y1="70" x2="307" y2="92" stroke="#8a97a3" stroke-width="1.5"/>
    <line x1="307" y1="92" x2="307" y2="132" stroke="#8a97a3" stroke-width="1.5"/>
    <rect x="237" y="132" width="140" height="56" rx="8" fill="#dce8f0" stroke="#1f5c85" stroke-width="1.5"/>
    <text x="307" y="154" text-anchor="middle" font-size="13" fill="#0e3550" font-family="sans-serif" font-weight="700">14</text>
    <text x="307" y="172" text-anchor="middle" font-size="11" fill="#0e3550" font-family="sans-serif">Total de borrachas</text>
  </svg>
""")

# ╔═╡ 00000003-0000-4000-8000-000000000000
md"""
**Pensamento Computacional em jogo — dois algoritmos, mesma resposta, complexidades diferentes.** Soma direta tem custo fixo; `sum` sobre um array generaliza para qualquer quantidade de cores.

Execute as células de código abaixo, uma por vez, e observe o resultado de cada uma antes de seguir para a próxima.
"""

# ╔═╡ 00000004-0000-4000-8000-000000000000
qtdBorrachasAzuis = 4

# ╔═╡ 00000005-0000-4000-8000-000000000000
qtdBorrachasAmarelas = 3

# ╔═╡ 00000006-0000-4000-8000-000000000000
qtdBorrachasVerdes = 2

# ╔═╡ 00000007-0000-4000-8000-000000000000
qtdBorrachasVermelhas = 5

# ╔═╡ 00000008-0000-4000-8000-000000000000
qtdTotalPorSomaDireta = qtdBorrachasAzuis + qtdBorrachasAmarelas + qtdBorrachasVerdes + qtdBorrachasVermelhas

# ╔═╡ 00000009-0000-4000-8000-000000000000
qtdBorrachasPorCor = [qtdBorrachasAzuis, qtdBorrachasAmarelas, qtdBorrachasVerdes, qtdBorrachasVermelhas]

# ╔═╡ 0000000a-0000-4000-8000-000000000000
qtdTotalComArray = sum(qtdBorrachasPorCor)

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
# ╠═00000004-0000-4000-8000-000000000000
# ╠═00000005-0000-4000-8000-000000000000
# ╠═00000006-0000-4000-8000-000000000000
# ╠═00000007-0000-4000-8000-000000000000
# ╠═00000008-0000-4000-8000-000000000000
# ╠═00000009-0000-4000-8000-000000000000
# ╠═0000000a-0000-4000-8000-000000000000
