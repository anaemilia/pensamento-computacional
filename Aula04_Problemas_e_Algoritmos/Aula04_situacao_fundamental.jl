### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade — Ensino Fundamental
## Fofoletes de Karla — problema e algoritmo

**Situação-problema:**

Karla coleciona fofoletes. Mês passado, ela tinha 25 fofoletes. Hoje ela contou sua coleção e viu que já possui 34. Quantas fofoletes ela ganhou desde o mês passado?
"""

# ╔═╡ 00000002-0000-4000-8000-000000000000
md"""
**Pensamento Computacional em jogo — transformar um problema em algoritmo.** Um algoritmo é uma sequência finita e ordenada de passos. Aqui: (1) ler o estado inicial, (2) ler o estado final, (3) calcular a diferença, (4) responder. Cada passo é uma linha de código, na ordem em que precisa ser executado.

Leia a situação, depois execute a célula de código abaixo (ou edite os números) para ver o Pluto calcular a resposta.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
# o algoritmo é modelado como uma função com passos numerados e ordenados
function algoritmo_fofoletes(estado_inicial, estado_final)
    passo_1 = estado_inicial          # passo 1: ler o estado inicial
    passo_2 = estado_final            # passo 2: ler o estado final
    passo_3 = passo_2 - passo_1       # passo 3: calcular a diferença
    return passo_3                    # passo 4: responder
end

fofoletes_ganhas = algoritmo_fofoletes(25, 34)

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
