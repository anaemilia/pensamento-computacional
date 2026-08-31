### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade — Ensino Fundamental
## Bolas de Paulo e José — generalização

**Situação-problema:**

Paulo tem seis bolas. José tem oito bolas a mais que Paulo. Quantas bolas tem José?
"""

# ╔═╡ 00000002-0000-4000-8000-000000000000
md"""
**Pensamento Computacional em jogo — generalizar uma solução para qualquer entrada.** Em vez de calcular só para Paulo e José, escrevemos uma função que resolve *qualquer* comparação "a mais que": `referido(referente, diferenca) = referente + diferenca`. A função generaliza o cálculo para além deste caso específico.

Leia a situação, depois execute a célula de código abaixo (ou edite os números) para ver o Pluto calcular a resposta.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
bolas_de_paulo = 6
diferenca = 8

# solução generalizada para qualquer comparação "a mais que":
referido(referente, diferenca) = referente + diferenca
bolas_de_jose = referido(bolas_de_paulo, diferenca)

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
