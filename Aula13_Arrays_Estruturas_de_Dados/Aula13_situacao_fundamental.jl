### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade — Ensino Fundamental
## Figurinhas de Manuel — arrays e estruturas de dados

**Situação-problema:**

Manuel ganhou de Antônio 12 figurinhas do Pokémon. Mais tarde ganhou mais 5 figurinhas de Aninha. Quantas figurinhas Manuel ganhou ao todo?
"""

# ╔═╡ 00000002-0000-4000-8000-000000000000
md"""
**Pensamento Computacional em jogo — guardar dados repetidos numa estrutura só.** Em vez de uma variável para cada transformação, usamos um **array**: uma estrutura de dados que guarda várias transformações da mesma categoria e permite somá-las de uma vez com `sum`.

Leia a situação, depois execute a célula de código abaixo (ou edite os números) para ver o Pluto calcular a resposta.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
transformacoes = [12, 5]   # array com cada transformação (ganho) registrada
total_ganho = sum(transformacoes)

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
