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
"""

# ╔═╡ 00000002-0000-4000-8000-000000000000
md"""
**Pensamento Computacional em jogo — a diferença como transformação entre dois estados.** Em computação, comparar dois valores é calcular a transformação que leva de um ao outro. Marcus e Jardel são dois "estados"; a diferença entre eles é a transformação que os separa.

Leia a situação, depois execute a célula de código abaixo (ou edite os números) para ver o Pluto calcular a resposta.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
# a transformação é modelada como uma função que recebe dois estados e devolve a transformação entre eles
transformar(estado_1, estado_2) = estado_1 - estado_2

carrinhos_de_marcus = 23
carrinhos_de_jardel = 11
transformacao_entre_estados = transformar(carrinhos_de_marcus, carrinhos_de_jardel)

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
