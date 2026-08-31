### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade — Ensino Fundamental
## Fofoletes de Karla — problema e algoritmo

**Situação-problema:**

Karla coleciona fofoletes. Mês passado, ela tinha 25 fofoletes. Hoje ela contou sua coleção e viu que já possui 34. Quantas fofoletes ela ganhou desde o mês passado?
"""

# ╔═╡ 00000002-0000-4000-8000-000000000000
md"""
**Pensamento Computacional em jogo — transformar um problema em algoritmo.** Um algoritmo é uma sequência finita e ordenada de passos. Aqui, cada célula do Pluto é um passo do algoritmo, executado na ordem certa, com seu resultado parcial sempre visível.

Execute as células de código abaixo, uma por vez, e observe o resultado de cada uma antes de seguir para a próxima.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
qtdFofoletesMesPassado = 25   # passo 1: ler o estado inicial

# ╔═╡ 00000004-0000-4000-8000-000000000000
qtdFofoletesHoje = 34   # passo 2: ler o estado final

# ╔═╡ 00000005-0000-4000-8000-000000000000
qtdFofoletesGanhas = qtdFofoletesHoje - qtdFofoletesMesPassado   # passo 3: calcular e responder

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
# ╠═00000004-0000-4000-8000-000000000000
# ╠═00000005-0000-4000-8000-000000000000
