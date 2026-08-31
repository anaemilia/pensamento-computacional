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
**Pensamento Computacional em jogo — generalizar uma solução para qualquer entrada.** Em vez de calcular só para Paulo e José, definimos uma função que resolve qualquer comparação "a mais que", e depois a aplicamos a este caso.

Execute as células de código abaixo, uma por vez, e observe o resultado de cada uma antes de seguir para a próxima.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
qtdBolasDePaulo = 6

# ╔═╡ 00000004-0000-4000-8000-000000000000
diferencaDeJoseAMais = 8

# ╔═╡ 00000005-0000-4000-8000-000000000000
# solução generalizada para qualquer comparação "a mais que"
calcularReferido(qtdDoReferente, diferenca) = qtdDoReferente + diferenca

# ╔═╡ 00000006-0000-4000-8000-000000000000
qtdBolasDeJose = calcularReferido(qtdBolasDePaulo, diferencaDeJoseAMais)

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
# ╠═00000004-0000-4000-8000-000000000000
# ╠═00000005-0000-4000-8000-000000000000
# ╠═00000006-0000-4000-8000-000000000000
