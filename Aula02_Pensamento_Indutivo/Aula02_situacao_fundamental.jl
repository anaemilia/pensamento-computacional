### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade — Ensino Fundamental
## Feira de Maria — pensamento indutivo

**Situação-problema:**

Maria foi fazer compras na feira com R$ 25,00. Gastou R$ 18,00 comprando frutas e verduras. Com quantos reais Maria ficou após a feira?

*Categoria 2 — Transformação de medidas (Vergnaud)*
"""

# ╔═╡ 00000002-0000-4000-8000-000000000000
HTML("""
<svg viewBox="0 0 480 130" width="100%" style="max-width:480px" xmlns="http://www.w3.org/2000/svg">
    <rect x="20" y="40" width="140" height="56" rx="8" fill="#eef2f6" stroke="#4a5a6a" stroke-width="1.5"/>
    <text x="90" y="62" text-anchor="middle" font-size="13" fill="#1a2733" font-family="sans-serif" font-weight="600">R$25,00</text>
    <text x="90" y="80" text-anchor="middle" font-size="11" fill="#3a4a58" font-family="sans-serif">Dinheiro inicial</text>
    <rect x="320" y="40" width="140" height="56" rx="8" fill="#dce8f0" stroke="#1f5c85" stroke-width="1.5"/>
    <text x="390" y="62" text-anchor="middle" font-size="13" fill="#0e3550" font-family="sans-serif" font-weight="700">R$7,00</text>
    <text x="390" y="80" text-anchor="middle" font-size="11" fill="#0e3550" font-family="sans-serif">Dinheiro final</text>
    <line x1="166" y1="68" x2="306" y2="68" stroke="#8a97a3" stroke-width="1.5" marker-end="url(#arrow)"/>
    <text x="240" y="58" text-anchor="middle" font-size="12" fill="#5a3a1a" font-family="sans-serif" font-weight="700">−R$18,00</text>
    <text x="240" y="114" text-anchor="middle" font-size="11" fill="#5a3a1a" font-family="sans-serif">gasto na feira</text>
    <defs><marker id="arrow" markerWidth="8" markerHeight="8" refX="6" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 Z" fill="#8a97a3"/></marker></defs>
  </svg>
""")

# ╔═╡ 00000003-0000-4000-8000-000000000000
md"""
**Pensamento Computacional em jogo — induzir a regra geral a partir de um caso.** Resolvemos o caso concreto e depois escrevemos a regra geral que ele revela.

Execute as células de código abaixo, uma por vez, e observe o resultado de cada uma antes de seguir para a próxima.
"""

# ╔═╡ 00000004-0000-4000-8000-000000000000
dinheiroInicialNaFeira = 25

# ╔═╡ 00000005-0000-4000-8000-000000000000
gastoComFrutasEVerduras = 18

# ╔═╡ 00000006-0000-4000-8000-000000000000
dinheiroFinalDeMaria = dinheiroInicialNaFeira - gastoComFrutasEVerduras

# ╔═╡ 00000007-0000-4000-8000-000000000000
# regra geral induzida a partir do caso acima
sobraDoDinheiro(valorInicial, valorGasto) = valorInicial - valorGasto

# ╔═╡ 00000008-0000-4000-8000-000000000000
sobraDoDinheiro(dinheiroInicialNaFeira, gastoComFrutasEVerduras)

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
# ╠═00000004-0000-4000-8000-000000000000
# ╠═00000005-0000-4000-8000-000000000000
# ╠═00000006-0000-4000-8000-000000000000
# ╠═00000007-0000-4000-8000-000000000000
# ╠═00000008-0000-4000-8000-000000000000
