### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade — Ensino Fundamental
## Selos de Pedro — representação de processos e dados

**Situação-problema:**

Pedro coleciona selos. Hoje ganhou 23 selos, ficando com 417 selos na sua coleção. Quantos selos ele tinha antes?
"""

# ╔═╡ 00000002-0000-4000-8000-000000000000
md"""
**Pensamento Computacional em jogo — escolher como representar dados e o processo que os liga.** Podemos representar o problema com variáveis nomeadas (como abaixo) ou com uma tupla `(transformação, estado_final)`. A escolha de representação não muda a resposta, mas muda a clareza do código.

Leia a situação, depois execute a célula de código abaixo (ou edite os números) para ver o Pluto calcular a resposta.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
# representação 1: variáveis nomeadas
transformacao = 23
estado_final = 417
estado_inicial = estado_final - transformacao

# representação 2: o mesmo processo, guardado como uma tupla
dados = (transformacao = 23, estado_final = 417)
dados.estado_final - dados.transformacao

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
