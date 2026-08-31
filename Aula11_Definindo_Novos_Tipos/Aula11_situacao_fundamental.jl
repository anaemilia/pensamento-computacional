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
**Pensamento Computacional em jogo — criar um tipo próprio para organizar os dados.** Em vez de variáveis soltas, definimos um novo tipo `Caixa` que agrupa o estado e as transformações — um passo rumo à criação de tipos de dados personalizados.

Leia a situação, depois execute a célula de código abaixo (ou edite os números) para ver o Pluto calcular a resposta.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
struct Caixa
    estoque::Int
    consumido_ontem::Int
    consumido_hoje::Int
end

caixa_da_geisa = Caixa(35, 2, 5)
chocolates_restantes = caixa_da_geisa.estoque - caixa_da_geisa.consumido_ontem - caixa_da_geisa.consumido_hoje

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
