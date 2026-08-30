### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade — Ensino Fundamental
## Figurinhas de Manuel — array de transformações positivas

**Situação-problema:**

Manuel ganhou de Antônio 12 figurinhas do Pokémon. Mais tarde ganhou mais 5 figurinhas de Aninha. Quantas figurinhas Manuel ganhou ao todo?
"""

# ╔═╡ 00000002-0000-4000-8000-000000000000
md"""
**Como isso vira código em Julia:**

Cada transformação positiva pode ser guardada como um elemento de um **array**; o total ganho é a soma dos elementos — introduzindo estrutura de dados para várias transformações.

Leia a situação, depois execute a célula de código abaixo (ou edite os números) para ver o Pluto calcular a resposta.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
transformacoes = [12, 5]
total_ganho = sum(transformacoes)

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
