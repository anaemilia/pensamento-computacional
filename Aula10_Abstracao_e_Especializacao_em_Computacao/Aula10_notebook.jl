### A Pluto.jl notebook ###
# v0.19.45

using Markdown
using InteractiveUtils

# ╔═╡ 7539a368-21e1-4a4b-853a-bf68f597ce20
md"""
# Aula 10 — Abstração e Especialização em Computação

Notebook Pluto com exemplos práticos de abstração, especialização e arrays em Julia.

*Pensamento Computacional — PROFCOMP*
"""

# ╔═╡ e02c8ad1-e276-4aea-920f-7fb83a99ef95
md"""
### Tarefa 10.1 — A mesma ideia, tipos diferentes (abstração de dados)

**No Pluto:**
- Represente o número "um" de quatro formas diferentes.
- Veja o tipo de cada uma com `typeof`.
- Discuta: o que muda e o que permanece igual?
"""

# ╔═╡ 03f17420-6079-4532-a8bc-36705fb95346
let
    inteiro = 1
    decimal = 1.0
    texto = "one"
    fracao = 1//1
    (typeof(inteiro), typeof(decimal), typeof(texto), typeof(fracao))
end

# ╔═╡ d7ac0c17-8fbc-4bf7-be9e-20c84ea291bc
md"""
### Tarefa 10.2 — Especialização: de Veículo a Carro, Moto e Ônibus

**No Pluto:**
- Crie um tipo abstrato `Veiculo`.
- Crie subtipos concretos para `Carro`, `Moto` e `Onibus`.
- Verifique a relação de especialização com `<:` e `isa`.
"""

# ╔═╡ 2b32d8f3-83a0-4ecf-a015-d48a3ce45bea
begin
    abstract type Veiculo end
    struct Carro <: Veiculo end
    struct Moto <: Veiculo end
    struct Onibus <: Veiculo end
    (Carro <: Veiculo, Moto() isa Veiculo, subtypes(Veiculo))
end

# ╔═╡ 6380566a-d756-4ae4-88ec-4f3006e72708
md"""
### Tarefa 10.3 — Criando e acessando um array

**No Pluto:**
- Crie um array de nomes.
- Acesse o primeiro e o terceiro elemento (lembrando que Julia começa em 1).
- Descubra quantos elementos existem com `length`.
"""

# ╔═╡ 124716c4-e067-415d-9ba9-399688a258be
let
    nomes = ["Ana", "João", "Maria", "Lucas"]
    (nomes[1], nomes[3], length(nomes))
end

# ╔═╡ 180d7e4a-9967-4a8e-87c1-6a4ae7789e82
md"""
### Tarefa 10.4 — Array bidimensional (uma tabela de notas)

**No Pluto:**
- Represente as notas de 3 alunos em 3 provas como uma matriz.
- Acesse a nota da segunda aluna na terceira prova.
- Calcule a média de cada aluno pela linha.
"""

# ╔═╡ f4bf9165-8f46-40f8-8cfa-a5b56be9f6fc
let
    notas = [8.5 9.0 7.5;
             7.0 8.0 6.5;
             9.5 8.5 10.0]
    nota_joao_prova3 = notas[2, 3]
    medias = [sum(notas[i, :]) / size(notas, 2) for i in 1:size(notas, 1)]
    (nota_joao_prova3, medias)
end

# ╔═╡ 01828309-3f5b-4d83-b70a-93684c39c94d
md"""
### Tarefa 10.5 — Array de arrays (aninhamento)

**No Pluto:**
- Represente as notas de cada aluno como uma lista própria, agrupadas em um dicionário.
- Compare com a versão em matriz da tarefa anterior: o que cada representação facilita?
"""

# ╔═╡ 61073343-8de5-4d29-917e-17d47986ac07
let
    notas_por_aluno = Dict(
        "Ana"   => [8.5, 9.0, 7.5],
        "João"  => [7.0, 8.0, 6.5],
        "Maria" => [9.5, 8.5, 10.0],
    )
    notas_por_aluno["Maria"]
end

# ╔═╡ Cell order:
# ╟─7539a368-21e1-4a4b-853a-bf68f597ce20
# ╟─e02c8ad1-e276-4aea-920f-7fb83a99ef95
# ╠═03f17420-6079-4532-a8bc-36705fb95346
# ╟─d7ac0c17-8fbc-4bf7-be9e-20c84ea291bc
# ╠═2b32d8f3-83a0-4ecf-a015-d48a3ce45bea
# ╟─6380566a-d756-4ae4-88ec-4f3006e72708
# ╠═124716c4-e067-415d-9ba9-399688a258be
# ╟─180d7e4a-9967-4a8e-87c1-6a4ae7789e82
# ╠═f4bf9165-8f46-40f8-8cfa-a5b56be9f6fc
# ╟─01828309-3f5b-4d83-b70a-93684c39c94d
# ╠═61073343-8de5-4d29-917e-17d47986ac07
