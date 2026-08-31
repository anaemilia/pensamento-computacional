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
**Pensamento Computacional em jogo — associar uma ação a uma categoria de dado.** "Ganhar numa partida" só faz sentido ligado à categoria `partida`. Guardamos o ganho de cada partida conhecida numa categoria antes de calcular o que falta.

Execute as células de código abaixo, uma por vez, e observe o resultado de cada uma antes de seguir para a próxima.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
ganhoPorPartida = Dict(:segundaPartida => 12)   # ação ligada à categoria "partida"

# ╔═╡ 00000004-0000-4000-8000-000000000000
qtdGanhoTotalNasDuasPartidas = 22

# ╔═╡ 00000005-0000-4000-8000-000000000000
qtdGanhoNaPrimeiraPartida = qtdGanhoTotalNasDuasPartidas - ganhoPorPartida[:segundaPartida]

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
# ╠═00000004-0000-4000-8000-000000000000
# ╠═00000005-0000-4000-8000-000000000000
