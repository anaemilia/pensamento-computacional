### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade — Ensino Fundamental
## Figurinhas de Maria — o que é "computar"?

**Situação-problema:**

Maria faz coleção de figurinhas. Ela tem 32 figurinhas. Sua mãe a presenteou com mais 22 figurinhas. Quantas figurinhas Maria tem em sua coleção agora?
"""

# ╔═╡ 00000002-0000-4000-8000-000000000000
md"""
**Pensamento Computacional em jogo — entrada, processamento e saída.** Antes de qualquer conta, um computador precisa que a situação seja traduzida em dados: uma *entrada* (32 e 22), um *processo* (somar) e uma *saída* (o total). Só depois disso ela se torna uma linha de código.

Leia a situação, depois execute a célula de código abaixo (ou edite os números) para ver o Pluto calcular a resposta.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
# o próprio código separa as três fases de "computar":
entrada(a, b) = (a, b)              # ENTRADA: junta os dados brutos
processar((a, b)) = a + b            # PROCESSO: a operação que transforma dados
saida(resultado) = resultado         # SAÍDA: o que é devolvido ao usuário

saida(processar(entrada(32, 22)))

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
