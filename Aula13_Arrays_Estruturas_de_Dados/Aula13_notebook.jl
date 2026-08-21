### A Pluto.jl notebook ###
# v0.19.45

using Markdown
using InteractiveUtils

# ╔═╡ f123cf61-7cde-40b5-91b1-33c165be00fe
md"""
# Aula 13 — Arrays / Estruturas de Dados

O material de referência desta aula (`Aula13_Teoria.pptx`) é um capítulo do livro *Introduction to Java Programming* (Y. Daniel Liang) sobre arrays multidimensionais. Este notebook traduz as mesmas ideias para Julia, para praticar no Pluto.

*Pensamento Computacional — PROFCOMP*
"""

# ╔═╡ ae74579e-f7f1-46e3-b24e-09d1d3782e72
md"""
### Tarefa 13.1 — Array unidimensional

**No Pluto:**
- Crie um array com os nomes dos alunos de uma turma.
- Acesse o terceiro nome.
- Percorra o array com um laço, imprimindo cada nome.
"""

# ╔═╡ 1f36cff6-789c-4bc3-85ea-b6d9662e8528
let
    alunos = ["Ana", "João", "Maria", "Lucas"]
    terceiro = alunos[3]
    maiusculos = [uppercase(nome) for nome in alunos]
    (terceiro, maiusculos)
end

# ╔═╡ bd5ecddd-b345-44fb-b815-bd5b7c3b7490
md"""
### Tarefa 13.2 — Array bidimensional (linhas e colunas)

**No Pluto:**
- Represente as notas dos alunos em 3 provas como uma matriz.
- Acesse a nota da Maria (linha 3) na prova 3 (coluna 3).
"""

# ╔═╡ 00b3e3d3-f119-44f1-a40d-ed2dfded5170
let
    notas = [8.5 9.0 7.5;
             7.0 8.0 6.5;
             9.5 8.5 10.0]
    nota_maria_prova3 = notas[3, 3]
    nota_maria_prova3
end

# ╔═╡ 82d368f2-fec9-4c66-8e07-7feeb4fd560d
md"""
### Tarefa 13.3 — Percorrendo uma matriz com laços aninhados

**No Pluto:**
- Some todas as notas da matriz (mesmos dados da Tarefa 13.2) usando dois laços `for` aninhados (um para linha, um para coluna).
- Compare o resultado com a função `sum` de Julia.
"""

# ╔═╡ ec58c8c9-acae-4ccf-af87-8b94afcfcf8f
let
    notas = [8.5 9.0 7.5;
             7.0 8.0 6.5;
             9.5 8.5 10.0]
    total_manual = 0.0
    for linha in 1:size(notas, 1)
        for coluna in 1:size(notas, 2)
            total_manual += notas[linha, coluna]
        end
    end
    (total_manual, sum(notas))
end

# ╔═╡ 7a2c12a4-e4de-45c1-acb7-ad3429f8fd0e
md"""
### Tarefa 13.4 — Array tridimensional (uma imagem simples)

**No Pluto:**
- Represente uma imagem 2×2 onde cada pixel tem 3 valores de cor (R, G, B).
- Acesse a cor do pixel da linha 1, coluna 2.
"""

# ╔═╡ c2f80cc8-43bd-4428-8dd8-0ffeec59b0a0
let
    imagem = [
        [[255, 0, 0], [0, 255, 0]],
        [[0, 0, 255], [255, 255, 0]],
    ]
    pixel_1_2 = imagem[1][2]
    pixel_1_2
end

# ╔═╡ Cell order:
# ╟─f123cf61-7cde-40b5-91b1-33c165be00fe
# ╟─ae74579e-f7f1-46e3-b24e-09d1d3782e72
# ╠═1f36cff6-789c-4bc3-85ea-b6d9662e8528
# ╟─bd5ecddd-b345-44fb-b815-bd5b7c3b7490
# ╠═00b3e3d3-f119-44f1-a40d-ed2dfded5170
# ╟─82d368f2-fec9-4c66-8e07-7feeb4fd560d
# ╠═ec58c8c9-acae-4ccf-af87-8b94afcfcf8f
# ╟─7a2c12a4-e4de-45c1-acb7-ad3429f8fd0e
# ╠═c2f80cc8-43bd-4428-8dd8-0ffeec59b0a0
