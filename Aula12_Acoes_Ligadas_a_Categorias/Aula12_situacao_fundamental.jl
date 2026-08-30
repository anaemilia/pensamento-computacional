### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade — Ensino Fundamental
## Bolinhas de gude de João — transformação desconhecida entre duas etapas

**Situação-problema:**

João jogou duas partidas de bila. Na segunda ele ganhou 12 bolas. Ao final das duas partidas ele tinha ganhado 22 ao todo. Quantas bolas ele ganhou na primeira partida?
"""

# ╔═╡ 00000002-0000-4000-8000-000000000000
md"""
**Como isso vira código em Julia:**

O total das duas transformações (22) e a segunda transformação (12) são conhecidos; a primeira é a incógnita — ação ligada à categoria "ganhar em uma partida".

Leia a situação, depois execute a célula de código abaixo (ou edite os números) para ver o Pluto calcular a resposta.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
total_ganho_nas_duas_partidas = 22
ganho_na_segunda_partida = 12
ganho_na_primeira_partida = total_ganho_nas_duas_partidas - ganho_na_segunda_partida

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
