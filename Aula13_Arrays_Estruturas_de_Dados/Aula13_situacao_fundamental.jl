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
**Pensamento Computacional em jogo — guardar dados repetidos numa estrutura só.** Cada transformação (ganho) é um elemento de um **array**, uma estrutura que permite somar todos de uma vez com `sum`.

Execute as células de código abaixo, uma por vez, e observe o resultado de cada uma antes de seguir para a próxima.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
qtdFiguGanhasDeAntonio = 12

# ╔═╡ 00000004-0000-4000-8000-000000000000
qtdFiguGanhasDeAninha = 5

# ╔═╡ 00000005-0000-4000-8000-000000000000
transformacoesDeFigurinhas = [qtdFiguGanhasDeAntonio, qtdFiguGanhasDeAninha]

# ╔═╡ 00000006-0000-4000-8000-000000000000
qtdFiguTotalGanhas = sum(transformacoesDeFigurinhas)

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
# ╠═00000004-0000-4000-8000-000000000000
# ╠═00000005-0000-4000-8000-000000000000
# ╠═00000006-0000-4000-8000-000000000000
