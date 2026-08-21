### A Pluto.jl notebook ###
# v0.19.45

using Markdown
using InteractiveUtils

# ╔═╡ 8f6e7a25-a81f-4273-b9f5-2f54c4b66f4a
md"""
# Aula 06 — Técnicas de construção de algoritmos: decomposição

Notebook Pluto com as 10 tarefas práticas em Julia deste bloco. Cada tarefa tem uma pergunta-guia, os passos sugeridos e um exemplo de código para explorar antes de discutir com a turma.

*Pensamento Computacional — PROFCOMP*
"""

# ╔═╡ d7b3644e-cb76-49ed-8e46-04eb56853ad9
md"""
### Tarefa 6.1 — O que significa decompor um problema?

**No Pluto:**
- Escolha um problema simples.
- Liste subproblemas.
- Associe uma célula do Pluto a cada parte.

*Por que importa:* Decompor reduz a opacidade do algoritmo e revela relações intermediárias.
"""

# ╔═╡ d7a89990-1bdf-4e7e-a842-b5a6cff7c5c7
let
    partes = ["entrada", "processamento", "decisao", "saida"]
end

# ╔═╡ 4145bff9-539e-4ba3-918a-3a6e140463b3
md"""
### Tarefa 6.2 — Como decompor cálculo de média em relações?

**No Pluto:**
- Defina notas.
- Calcule soma.
- Calcule tamanho.
- Calcule média.

*Por que importa:* A média aparece como relação entre soma e cardinalidade, não como fórmula isolada.
"""

# ╔═╡ 55d8480c-a18e-4bfc-9a3c-303bb0c28e87
let
    notas = [8.0, 6.0, 7.5]
    soma = sum(notas)
    tamanho = length(notas)
    media = soma/tamanho
end

# ╔═╡ c78d0135-5db1-4e6e-8943-986541af0c9a
md"""
### Tarefa 6.3 — Como decompor classificação?

**No Pluto:**
- Separe o cálculo da decisão.
- Nomeie a regra.
- Teste fronteiras.

*Por que importa:* A decisão fica interpretável quando se separam critério, comparação e categoria.
"""

# ╔═╡ f4a206f9-b420-49c2-9e3b-db7f6e4fe039
let
    limite = 7
    resultado = media >= limite
    situacao = resultado ? "aprovado" : "rever"
end

# ╔═╡ 3b82e235-8e84-4a30-a238-7af743a1f954
md"""
### Tarefa 6.4 — Como decompor uma simulação?

**No Pluto:**
- Defina estado inicial.
- Defina taxa.
- Defina tempo.
- Calcule resultado.

*Por que importa:* Cada variável passa a representar uma escolha do modelo, abrindo espaço para crítica.
"""

# ╔═╡ 88163b8a-c2c3-4b22-9f43-a3bad492bda2
let
    pop0 = 1000
    taxa = 0.05
    anos = 10
    pop = pop0 * (1+taxa)^anos
end

# ╔═╡ ef2bdd83-68b5-401a-861a-aa9f4adcceba
md"""
### Tarefa 6.5 — Como decompor por funções menores?

**No Pluto:**
- Crie função para média.
- Crie função para situação.
- Combine as duas.

*Por que importa:* Funções menores deixam papéis mais claros e favorecem reutilização.
"""

# ╔═╡ 99b0aace-771e-4e80-bfa0-85e5a4630499
let
    media(notas)=sum(notas)/length(notas)
    situacao(m)=m>=7 ? "aprovado" : "rever"
    situacao(media([8,6,7]))
end

# ╔═╡ 8e55cbbc-903b-43b9-984b-b3e9f7c257e1
md"""
### Tarefa 6.6 — Como decompor um problema de dados?

**No Pluto:**
- Separe coletar, organizar e representar.
- Use uma variável para cada etapa.
- Compare as saídas.

*Por que importa:* A decomposição mostra que representar dados exige seleção, agrupamento e síntese.
"""

# ╔═╡ e09d4499-f350-4935-ad13-ce9e96fb78ff
let
    brutos = ["A","B","A"]
    categorias = unique(brutos)
    freq = Dict(c=>count(==(c), brutos) for c in categorias)
end

# ╔═╡ 5d7d1341-ea2e-4a7e-94c4-6cb338f2d543
md"""
### Tarefa 6.7 — Como decompor um erro?

**No Pluto:**
- Isole a linha problemática.
- Verifique entradas.
- Verifique regra.
- Reexecute.

*Por que importa:* O erro deixa de ser falha final e vira pista sobre qual relação foi mal modelada.
"""

# ╔═╡ d524613b-76f2-49a2-b719-ad7d75744a59
let
    entrada = [8, 6, 7]
    divisor = 2
    media_errada = sum(entrada)/divisor
end

# ╔═╡ 34afce04-27e6-40b3-8632-d366dd486d94
md"""
### Tarefa 6.8 — Como decompor uma explicação?

**No Pluto:**
- Peça que o estudante explique dados, regra e saída.
- Registre cada parte.
- Analise lacunas.

*Por que importa:* Explicações decompostas revelam se o estudante entende cada componente do modelo.
"""

# ╔═╡ 11327425-305b-449b-a27b-93cb5ee4997d
let
    explicacao = (dados="notas", regra="media", saida="situacao")
end

# ╔═╡ d86d12a3-891f-4a03-9d30-2fd1a9403b11
md"""
### Tarefa 6.9 — Como decompor tarefas para colaboração?

**No Pluto:**
- Atribua papéis: dados, regra, teste.
- Combine resultados.
- Discuta dependências.

*Por que importa:* A decomposição também organiza o trabalho colaborativo e explicita responsabilidades.
"""

# ╔═╡ c00c2049-87e4-415a-b2fe-50cf45f2d0f9
let
    grupo = Dict("dados"=>"Ana", "regra"=>"Joao", "teste"=>"Lia")
end

# ╔═╡ 91bb4d59-2e3e-4f3c-b528-3c0382eac6db
md"""
### Tarefa 6.10 — Como avaliar decomposição?

**No Pluto:**
- Verifique se há subproblemas com sentido.
- Observe dependências.
- Peça recomposição do resultado.

*Por que importa:* A boa decomposição não fragmenta aleatoriamente; ela preserva as relações do problema.
"""

# ╔═╡ 8ae38d76-0351-4a27-8369-bf99bc4ef6a4
let
    rubrica = ["partes", "dependencias", "recomposicao"]
end

# ╔═╡ Cell order:
# ╟─8f6e7a25-a81f-4273-b9f5-2f54c4b66f4a
# ╟─d7b3644e-cb76-49ed-8e46-04eb56853ad9
# ╠═d7a89990-1bdf-4e7e-a842-b5a6cff7c5c7
# ╟─4145bff9-539e-4ba3-918a-3a6e140463b3
# ╠═55d8480c-a18e-4bfc-9a3c-303bb0c28e87
# ╟─c78d0135-5db1-4e6e-8943-986541af0c9a
# ╠═f4a206f9-b420-49c2-9e3b-db7f6e4fe039
# ╟─3b82e235-8e84-4a30-a238-7af743a1f954
# ╠═88163b8a-c2c3-4b22-9f43-a3bad492bda2
# ╟─ef2bdd83-68b5-401a-861a-aa9f4adcceba
# ╠═99b0aace-771e-4e80-bfa0-85e5a4630499
# ╟─8e55cbbc-903b-43b9-984b-b3e9f7c257e1
# ╠═e09d4499-f350-4935-ad13-ce9e96fb78ff
# ╟─5d7d1341-ea2e-4a7e-94c4-6cb338f2d543
# ╠═d524613b-76f2-49a2-b719-ad7d75744a59
# ╟─34afce04-27e6-40b3-8632-d366dd486d94
# ╠═11327425-305b-449b-a27b-93cb5ee4997d
# ╟─d86d12a3-891f-4a03-9d30-2fd1a9403b11
# ╠═c00c2049-87e4-415a-b2fe-50cf45f2d0f9
# ╟─91bb4d59-2e3e-4f3c-b528-3c0382eac6db
# ╠═8ae38d76-0351-4a27-8369-bf99bc4ef6a4
