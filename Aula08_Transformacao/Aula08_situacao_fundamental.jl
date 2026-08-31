### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade — Ensino Fundamental
## Carrinhos de Marcus e Jardel — transformação

**Situação-problema:**

Marcus e Jardel colecionam carrinhos em miniatura. Marcus tem 23 carrinhos e Jardel tem 11 carrinhos. Quantos carrinhos a menos Jardel tem?

*Categoria 3 — Comparação de medidas (diferença desconhecida) (Vergnaud)*
"""

# ╔═╡ 00000002-0000-4000-8000-000000000000
HTML("""
<svg viewBox="0 0 420 150" width="100%" style="max-width:420px" xmlns="http://www.w3.org/2000/svg">
    <text x="10" y="41" font-size="11" fill="#3a4a58" font-family="sans-serif">Carrinhos de Marcus</text>
    <rect x="90" y="20" width="59.800000000000004" height="34" rx="6" fill="#eef2f6" stroke="#4a5a6a" stroke-width="1.5"/>
    <text x="119.9" y="41" text-anchor="middle" font-size="12" fill="#1a2733" font-family="sans-serif" font-weight="600">23</text>
    <text x="10" y="97" font-size="11" fill="#0e3550" font-family="sans-serif">Carrinhos de Jardel</text>
    <rect x="90" y="76" width="28.6" height="34" rx="6" fill="#dce8f0" stroke="#1f5c85" stroke-width="1.5"/>
    <text x="104.3" y="97" text-anchor="middle" font-size="12" fill="#0e3550" font-family="sans-serif" font-weight="700">11</text>
    <path d="M 118.6 54 L 159.8 54 L 159.8 76 L 149.8 76" fill="none" stroke="#8a97a3" stroke-width="1.5"/>
    <text x="175.8" y="69" font-size="12" fill="#5a3a1a" font-family="sans-serif" font-weight="700">12</text>
    <text x="175.8" y="85" font-size="11" fill="#5a3a1a" font-family="sans-serif">a menos (?)</text>
  </svg>
""")

# ╔═╡ 00000003-0000-4000-8000-000000000000
md"""
**Pensamento Computacional em jogo — a diferença como transformação entre dois estados.** Marcus e Jardel são dois "estados"; calculamos a transformação que leva de um ao outro.

Execute as células de código abaixo, uma por vez, e observe o resultado de cada uma antes de seguir para a próxima.
"""

# ╔═╡ 00000004-0000-4000-8000-000000000000
qtdCarrinhosDeMarcus = 23   # estado 1

# ╔═╡ 00000005-0000-4000-8000-000000000000
qtdCarrinhosDeJardel = 11   # estado 2

# ╔═╡ 00000006-0000-4000-8000-000000000000
# a transformação entre dois estados quaisquer
calcularTransformacaoEntreEstados(estado1, estado2) = estado1 - estado2

# ╔═╡ 00000007-0000-4000-8000-000000000000
diferencaAMenosDeJardel = calcularTransformacaoEntreEstados(qtdCarrinhosDeMarcus, qtdCarrinhosDeJardel)

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
# ╠═00000004-0000-4000-8000-000000000000
# ╠═00000005-0000-4000-8000-000000000000
# ╠═00000006-0000-4000-8000-000000000000
# ╠═00000007-0000-4000-8000-000000000000
