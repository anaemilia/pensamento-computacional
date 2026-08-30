### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade — Ensino Fundamental
## Selos de Pedro — estado inicial desconhecido

**Situação-problema:**

Pedro coleciona selos. Hoje ganhou 23 selos, ficando com 417 selos na sua coleção. Quantos selos ele tinha antes?
"""

# ╔═╡ 00000002-0000-4000-8000-000000000000
md"""
**Como isso vira código em Julia:**

A transformação (23) e o estado final (417) são conhecidos; o **estado inicial** é a incógnita. Isolamos subtraindo a transformação do estado final.

Leia a situação, depois execute a célula de código abaixo (ou edite os números) para ver o Pluto calcular a resposta.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
transformacao = 23
estado_final = 417
estado_inicial = estado_final - transformacao

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
