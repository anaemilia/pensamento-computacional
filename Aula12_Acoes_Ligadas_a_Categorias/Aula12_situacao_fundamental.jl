### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade — Ensino Fundamental
## Bolinhas de gude de João — ações ligadas a categorias

**Situação-problema:**

João jogou duas partidas de bila. Na segunda ele ganhou 12 bolas. Ao final das duas partidas ele tinha ganhado 22 ao todo. Quantas bolas ele ganhou na primeira partida?
"""

# ╔═╡ 00000002-0000-4000-8000-000000000000
md"""
**Pensamento Computacional em jogo — associar uma ação a uma categoria de dado.** "Ganhar numa partida" é uma ação que só faz sentido ligada à categoria `Partida`. Modelamos cada partida como um item de uma categoria e aplicamos a ação (soma) sobre a categoria toda.

Leia a situação, depois execute a célula de código abaixo (ou edite os números) para ver o Pluto calcular a resposta.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
partidas = [:desconhecida, :segunda]      # categoria: partidas jogadas
ganhos = Dict(:segunda => 12)              # ação "ganhar" ligada a cada partida conhecida
total_ganho = 22
ganho_na_primeira_partida = total_ganho - ganhos[:segunda]

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
