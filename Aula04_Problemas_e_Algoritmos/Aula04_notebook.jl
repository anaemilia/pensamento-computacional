### A Pluto.jl notebook ###
# v0.19.45

using Markdown
using InteractiveUtils

# ╔═╡ 1d3a0532-f542-49c6-98a3-5d37dcbffbe9
md"""
# Aula 04 — Problemas e algoritmos

Notebook Pluto com as 10 tarefas práticas em Julia deste bloco. Cada tarefa tem uma pergunta-guia, os passos sugeridos e um exemplo de código para explorar antes de discutir com a turma.

*Pensamento Computacional — PROFCOMP*
"""

# ╔═╡ ba37f023-e23f-4eb8-aad2-328444e54291
md"""
### Tarefa 4.1 — Qual é o problema antes do algoritmo?

**No Pluto:**
- Escreva a pergunta em texto.
- Identifique dados de entrada.
- Separe o que será calculado.

*Por que importa:* Antes do algoritmo, há uma situação que precisa ser interpretada e modelada.
"""

# ╔═╡ b17f883e-5e3a-4b47-92df-f03f4fb92012
let
    problema = "calcular media de notas"
    entradas = [8.0, 6.0, 7.5]
end

# ╔═╡ c8fd5641-f59b-440c-9f6e-99c414da8334
md"""
### Tarefa 4.2 — Como representar entrada, processo e saída?

**No Pluto:**
- Separe dados, cálculo e resultado.
- Discuta cada papel.
- Modifique uma entrada.

*Por que importa:* A estrutura entrada–processo–saída torna visível o caminho de transformação dos dados.
"""

# ╔═╡ d30efe42-7e75-4440-975c-4d2e7ae5fa0b
let
    notas = [8.0, 6.0, 7.5]
    media = sum(notas)/length(notas)
    media
end

# ╔═╡ ee7bbdcb-8c19-4f50-9698-205acd7c98b8
md"""
### Tarefa 4.3 — Como decompor um algoritmo de média?

**No Pluto:**
- Calcule soma.
- Calcule tamanho.
- Divida soma por tamanho.

*Por que importa:* Dividir a média em partes evita que a fórmula fique opaca.
"""

# ╔═╡ e845e531-69fd-4c20-8532-6badafb742a0
let
    notas = [8.0, 6.0, 7.5]
    soma = sum(notas)
    tamanho = length(notas)
    media = soma / tamanho
end

# ╔═╡ 1998270e-ed78-42de-9f26-f885304814ed
md"""
### Tarefa 4.4 — Como acrescentar uma decisão ao algoritmo?

**No Pluto:**
- Use a média calculada.
- Crie uma regra de situação.
- Teste notas diferentes.

*Por que importa:* A classificação mostra que algoritmos produzem sentidos, não apenas números.
"""

# ╔═╡ 2ceb0579-c691-4f88-a2fb-bb394a8bd775
let
    situacao = media >= 7 ? "aprovado" : "rever"
end

# ╔═╡ f14300bd-d7ad-43b6-9727-ff1cf6070c89
md"""
### Tarefa 4.5 — Como representar um algoritmo em etapas?

**No Pluto:**
- Liste as etapas como strings.
- Compare com as células do Pluto.
- Reordene se necessário.

*Por que importa:* A lista de etapas ajuda a perceber ordem, dependência e possibilidade de erro.
"""

# ╔═╡ 6e87c20a-000e-46d7-9c93-f3ee302d3937
let
    etapas = ["ler notas", "somar", "dividir", "classificar"]
end

# ╔═╡ d5c0356f-1ca5-4f59-a234-59d279f6d1df
md"""
### Tarefa 4.6 — Como um laço executa uma repetição controlada?

**No Pluto:**
- Some valores manualmente.
- Depois use laço.
- Compare as duas estratégias.

*Por que importa:* O laço torna visível o processo repetido que funções prontas escondem.
"""

# ╔═╡ b418e829-bece-4da8-ba41-a545aeb1bc0c
let
    soma = 0
    for n in notas
        soma += n
    end
end

# ╔═╡ e0aec9ba-ee45-4f41-bf87-bb6cebea8136
md"""
### Tarefa 4.7 — Como transformar algoritmo em função?

**No Pluto:**
- Receba notas como entrada.
- Calcule média internamente.
- Devolva a saída.

*Por que importa:* A função transforma uma sequência de passos em ferramenta reutilizável.
"""

# ╔═╡ a13343fb-8a1c-4863-a39d-9e77aa632ede
let
    function calcula_media(notas)
        sum(notas) / length(notas)
    end
end

# ╔═╡ 99281d49-0477-4e00-aef4-5d1c43901772
md"""
### Tarefa 4.8 — Como depurar um algoritmo?

**No Pluto:**
- Crie um erro proposital.
- Localize a etapa incorreta.
- Corrija e explique.

*Por que importa:* Depurar é reconstruir a relação entre procedimento e significado.
"""

# ╔═╡ 35df3802-b7b8-4aaf-b701-2d871d67093f
let
    notas = [8, 6, 7]
    media_errada = sum(notas) / 2
end

# ╔═╡ 4ee3501d-e560-411c-8361-e8a0fcc850f1
md"""
### Tarefa 4.9 — Como testar um algoritmo com casos diversos?

**No Pluto:**
- Monte casos simples.
- Inclua extremos.
- Compare com expectativa.

*Por que importa:* Testar casos mostra se o algoritmo funciona além do exemplo inicial.
"""

# ╔═╡ 8eb41534-71b2-46d4-8ee1-ff4b3ba671eb
let
    casos = [[10,10], [0,0], [7,7]]
    [calcula_media(c) for c in casos]
end

# ╔═╡ 260680c7-05ef-4d6b-8468-66e9557b833e
md"""
### Tarefa 4.10 — Como avaliar um algoritmo pedagogicamente?

**No Pluto:**
- Peça explicação das etapas.
- Observe as relações intermediárias.
- Discuta limites da regra.

*Por que importa:* A qualidade do algoritmo aparece na clareza com que o estudante explica dados, etapas e decisões.
"""

# ╔═╡ 4a3ba86c-1860-49ca-89a8-77ff1b9e5810
let
    avaliar = (entrada=true, processo=true, saida=true, justificativa=true)
end

# ╔═╡ Cell order:
# ╟─1d3a0532-f542-49c6-98a3-5d37dcbffbe9
# ╟─ba37f023-e23f-4eb8-aad2-328444e54291
# ╠═b17f883e-5e3a-4b47-92df-f03f4fb92012
# ╟─c8fd5641-f59b-440c-9f6e-99c414da8334
# ╠═d30efe42-7e75-4440-975c-4d2e7ae5fa0b
# ╟─ee7bbdcb-8c19-4f50-9698-205acd7c98b8
# ╠═e845e531-69fd-4c20-8532-6badafb742a0
# ╟─1998270e-ed78-42de-9f26-f885304814ed
# ╠═2ceb0579-c691-4f88-a2fb-bb394a8bd775
# ╟─f14300bd-d7ad-43b6-9727-ff1cf6070c89
# ╠═6e87c20a-000e-46d7-9c93-f3ee302d3937
# ╟─d5c0356f-1ca5-4f59-a234-59d279f6d1df
# ╠═b418e829-bece-4da8-ba41-a545aeb1bc0c
# ╟─e0aec9ba-ee45-4f41-bf87-bb6cebea8136
# ╠═a13343fb-8a1c-4863-a39d-9e77aa632ede
# ╟─99281d49-0477-4e00-aef4-5d1c43901772
# ╠═35df3802-b7b8-4aaf-b701-2d871d67093f
# ╟─4ee3501d-e560-411c-8361-e8a0fcc850f1
# ╠═8eb41534-71b2-46d4-8ee1-ff4b3ba671eb
# ╟─260680c7-05ef-4d6b-8468-66e9557b833e
# ╠═4a3ba86c-1860-49ca-89a8-77ff1b9e5810
