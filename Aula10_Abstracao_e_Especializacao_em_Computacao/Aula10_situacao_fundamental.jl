### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade — Ensino Fundamental
## Dinheiro de Claudia e Joana — abstração e especialização

**Situação-problema:**

Claudia tem 15 reais. Ela tem 7 reais a mais que Joana. Quantos reais Joana tem?

*Categoria 3 — Comparação de medidas (referente desconhecido) (Vergnaud)*
"""

# ╔═╡ 00000002-0000-4000-8000-000000000000
HTML("""
<svg viewBox="0 0 420 150" width="100%" style="max-width:420px" xmlns="http://www.w3.org/2000/svg">
    <text x="10" y="41" font-size="11" fill="#3a4a58" font-family="sans-serif">Dinheiro de Joana (?)</text>
    <rect x="90" y="20" width="20.8" height="34" rx="6" fill="#eef2f6" stroke="#4a5a6a" stroke-width="1.5"/>
    <text x="100.4" y="41" text-anchor="middle" font-size="12" fill="#1a2733" font-family="sans-serif" font-weight="600">8</text>
    <text x="10" y="97" font-size="11" fill="#0e3550" font-family="sans-serif">Dinheiro de Claudia</text>
    <rect x="90" y="76" width="39" height="34" rx="6" fill="#dce8f0" stroke="#1f5c85" stroke-width="1.5"/>
    <text x="109.5" y="97" text-anchor="middle" font-size="12" fill="#0e3550" font-family="sans-serif" font-weight="700">15</text>
    <path d="M 110.8 54 L 139 54 L 139 76 L 129 76" fill="none" stroke="#8a97a3" stroke-width="1.5"/>
    <text x="155" y="69" font-size="12" fill="#5a3a1a" font-family="sans-serif" font-weight="700">7</text>
    <text x="155" y="85" font-size="11" fill="#5a3a1a" font-family="sans-serif">a mais</text>
  </svg>
""")

# ╔═╡ 00000003-0000-4000-8000-000000000000
md"""
**Pensamento Computacional em jogo — abstrair uma regra e depois especializá-la.** Escrevemos a regra geral (abstração) e a aplicamos a Claudia e Joana (especialização).

Execute as células de código abaixo, uma por vez, e observe o resultado de cada uma antes de seguir para a próxima.
"""

# ╔═╡ 00000004-0000-4000-8000-000000000000
dinheiroDeClaudia = 15

# ╔═╡ 00000005-0000-4000-8000-000000000000
diferencaDeClaudiaAMais = 7

# ╔═╡ 00000006-0000-4000-8000-000000000000
# abstração: regra geral, válida para qualquer comparação "a mais que"
calcularReferente(qtdDoReferido, diferenca) = qtdDoReferido - diferenca

# ╔═╡ 00000007-0000-4000-8000-000000000000
dinheiroDeJoana = calcularReferente(dinheiroDeClaudia, diferencaDeClaudiaAMais)

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
# ╠═00000004-0000-4000-8000-000000000000
# ╠═00000005-0000-4000-8000-000000000000
# ╠═00000006-0000-4000-8000-000000000000
# ╠═00000007-0000-4000-8000-000000000000
