### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade — Ensino Fundamental
## Bolas de Paulo e José — generalização

**Situação-problema:**

Paulo tem 6 bolas. José tem 8 bolas a mais que Paulo. Quantas bolas tem José?

*Categoria 3 — Comparação de medidas (referido desconhecido) (Vergnaud)*
"""

# ╔═╡ 00000002-0000-4000-8000-000000000000
HTML("""
<svg viewBox="0 0 420 150" width="100%" style="max-width:420px" xmlns="http://www.w3.org/2000/svg">
    <text x="10" y="41" font-size="11" fill="#3a4a58" font-family="sans-serif">Bolas de Paulo</text>
    <rect x="90" y="20" width="15.600000000000001" height="34" rx="6" fill="#eef2f6" stroke="#4a5a6a" stroke-width="1.5"/>
    <text x="97.8" y="41" text-anchor="middle" font-size="12" fill="#1a2733" font-family="sans-serif" font-weight="600">6</text>
    <text x="10" y="97" font-size="11" fill="#0e3550" font-family="sans-serif">Bolas de José (?)</text>
    <rect x="90" y="76" width="36.4" height="34" rx="6" fill="#dce8f0" stroke="#1f5c85" stroke-width="1.5"/>
    <text x="108.2" y="97" text-anchor="middle" font-size="12" fill="#0e3550" font-family="sans-serif" font-weight="700">14</text>
    <path d="M 105.6 54 L 136.4 54 L 136.4 76 L 126.4 76" fill="none" stroke="#8a97a3" stroke-width="1.5"/>
    <text x="152.4" y="69" font-size="12" fill="#5a3a1a" font-family="sans-serif" font-weight="700">8</text>
    <text x="152.4" y="85" font-size="11" fill="#5a3a1a" font-family="sans-serif">a mais</text>
  </svg>
""")

# ╔═╡ 00000003-0000-4000-8000-000000000000
md"""
**Pensamento Computacional em jogo — generalizar uma solução para qualquer entrada.** Definimos uma função que resolve qualquer comparação "a mais que" e a aplicamos a este caso.

Execute as células de código abaixo, uma por vez, e observe o resultado de cada uma antes de seguir para a próxima.
"""

# ╔═╡ 00000004-0000-4000-8000-000000000000
qtdBolasDePaulo = 6

# ╔═╡ 00000005-0000-4000-8000-000000000000
diferencaDeJoseAMais = 8

# ╔═╡ 00000006-0000-4000-8000-000000000000
# solução generalizada para qualquer comparação "a mais que"
calcularReferido(qtdDoReferente, diferenca) = qtdDoReferente + diferenca

# ╔═╡ 00000007-0000-4000-8000-000000000000
qtdBolasDeJose = calcularReferido(qtdBolasDePaulo, diferencaDeJoseAMais)

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
# ╠═00000004-0000-4000-8000-000000000000
# ╠═00000005-0000-4000-8000-000000000000
# ╠═00000006-0000-4000-8000-000000000000
# ╠═00000007-0000-4000-8000-000000000000
