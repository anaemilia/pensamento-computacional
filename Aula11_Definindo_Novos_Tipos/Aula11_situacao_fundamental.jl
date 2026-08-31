### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade — Ensino Fundamental
## Chocolates de Geisa — definindo novos tipos

**Situação-problema:**

Geisa tinha uma caixa com 35 chocolates. Comeu 2 ontem e 5 hoje. Quantos chocolates ainda tem?
"""

# ╔═╡ 00000002-0000-4000-8000-000000000000
md"""
**Pensamento Computacional em jogo — criar um tipo próprio para organizar os dados.** Em vez de variáveis soltas, definimos um novo tipo `CaixaDeChocolates` que agrupa o estoque e os consumos.

Execute as células de código abaixo, uma por vez, e observe o resultado de cada uma antes de seguir para a próxima.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
struct CaixaDeChocolates
    qtdEstoque::Int
    qtdConsumidaOntem::Int
    qtdConsumidaHoje::Int
end

# ╔═╡ 00000004-0000-4000-8000-000000000000
caixaDaGeisa = CaixaDeChocolates(35, 2, 5)

# ╔═╡ 00000005-0000-4000-8000-000000000000
qtdChocolatesRestantes = caixaDaGeisa.qtdEstoque - caixaDaGeisa.qtdConsumidaOntem - caixaDaGeisa.qtdConsumidaHoje

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
# ╠═00000004-0000-4000-8000-000000000000
# ╠═00000005-0000-4000-8000-000000000000
