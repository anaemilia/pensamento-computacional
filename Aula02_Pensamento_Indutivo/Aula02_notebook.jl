### A Pluto.jl notebook ###
# v0.19.45

using Markdown
using InteractiveUtils

# ╔═╡ 565d919b-9d85-44a1-8ad2-a6034fffad59
md"""
# Aula 02 — Pensamento indutivo

Notebook Pluto com as 10 tarefas práticas em Julia deste bloco. Cada tarefa tem uma pergunta-guia, os passos sugeridos e um exemplo de código para explorar antes de discutir com a turma.

*Pensamento Computacional — PROFCOMP*
"""

# ╔═╡ e624c7c9-577a-43f1-942b-ad945d08ea88
md"""
### Tarefa 2.1 — Que padrão parece surgir nesta sequência?

**No Pluto:**
- Observe os termos.
- Proponha a próxima saída.
- Teste se a hipótese se sustenta.

*Por que importa:* A sequência mobiliza a passagem de casos particulares para uma regra provável, ainda sujeita a revisão.
"""

# ╔═╡ 951febac-ac1c-422a-bd8c-6c7e76c881db
let
    seq = [2, 4, 8, 16]
    proximo = 32
    hipotese = "multiplicar por 2"
end

# ╔═╡ 05f304c5-fa87-481b-809b-9f42fd9f7843
md"""
### Tarefa 2.2 — Como calcular diferenças ajuda a levantar hipóteses?

**No Pluto:**
- Crie uma sequência.
- Calcule diferenças consecutivas.
- Interprete a regularidade.

*Por que importa:* A diferença transforma a sequência em outra representação, destacando relações entre termos vizinhos.
"""

# ╔═╡ 192b21e0-7c39-4037-8156-317929d9b6dd
let
    seq = [3, 6, 9, 12]
    dif = diff(seq)
end

# ╔═╡ 43d7ae52-c1d5-42d3-b0e4-bd877edf5d4f
md"""
### Tarefa 2.3 — Quando uma hipótese indutiva falha?

**No Pluto:**
- Teste uma regra em novo caso.
- Inclua um contraexemplo.
- Discuta a necessidade de revisão.

*Por que importa:* O contraexemplo mostra que indução não é certeza: ela depende de padrões observados e de testes.
"""

# ╔═╡ 6253d87e-10c1-4dd6-a930-79c2052d37b1
let
    seq = [1, 2, 4, 8, 15]
    all(diff(seq) .== 2)
end

# ╔═╡ a383616f-d65e-4588-b9ba-5a1eab939049
md"""
### Tarefa 2.4 — Como usar compreensão de listas para formular padrões?

**No Pluto:**
- Gere dados com uma regra.
- Compare com dados observados.
- Procure coincidências e desvios.

*Por que importa:* A comparação entre observado e gerado torna a hipótese computável e discutível.
"""

# ╔═╡ 425392a5-c533-498d-b6f5-c04dff465410
let
    observado = [1, 4, 9, 16]
    gerado = [n^2 for n in 1:4]
    observado == gerado
end

# ╔═╡ 7430c4dd-2ce3-4eee-91e0-3ec6982ec3b6
md"""
### Tarefa 2.5 — Como a turma pode inventar uma representação não padrão?

**No Pluto:**
- Peça que inventem uma codificação.
- Represente pares ou símbolos.
- Compare com a lista original.

*Por que importa:* Representações inventadas podem ajudar a perceber crescimento, quantidade e regularidade.
"""

# ╔═╡ 05423723-26f4-4605-991b-5ff0e3ae9356
let
    seq = [1, 3, 5, 7]
    marcas = repeat.("*", seq)
end

# ╔═╡ 25fd64f7-875b-4eb9-a525-bd7758d9e9ba
md"""
### Tarefa 2.6 — Como o padrão muda quando mudamos o contexto?

**No Pluto:**
- Use dados de frequência.
- Agrupe por categorias.
- Observe tendências.

*Por que importa:* A indução sobre categorias exige outra organização: contar ocorrências em vez de calcular diferenças.
"""

# ╔═╡ 266b140f-f4fe-47f8-9ea3-d114ad77d1ff
let
    respostas = ["A","B","A","C","A"]
    contagem = Dict(r => count(==(r), respostas) for r in unique(respostas))
end

# ╔═╡ 4964360b-eed2-46ef-a883-3e1b5cc7ea97
md"""
### Tarefa 2.7 — Como um gráfico textual pode apoiar a indução?

**No Pluto:**
- Crie barras de texto.
- Compare visualmente as frequências.
- Formule a tendência dominante.

*Por que importa:* A visualização textual amplia a percepção de maior, menor e tendência sem depender de gráfico formal.
"""

# ╔═╡ 60dff4dd-158d-4abb-b2e7-6eb386b59b48
let
    valores = [2, 5, 3]
    barras = repeat.("█", valores)
end

# ╔═╡ 18c080b1-ffc5-43bf-ba98-b6bd4fe07160
md"""
### Tarefa 2.8 — Como distinguir padrão real de coincidência?

**No Pluto:**
- Use poucos dados.
- Proponha duas regras possíveis.
- Mostre que ambas explicam os casos.

*Por que importa:* A tarefa mostra que poucos casos podem sustentar várias regras; a indução exige cautela.
"""

# ╔═╡ f254dcab-1659-4c49-a347-8962a6563682
let
    dados = [2, 4, 6]
    regra1(n)=2n
    regra2(n)=n^2-n+2
end

# ╔═╡ a2b769aa-0bfd-4d7d-ab1b-317d5fdb506a
md"""
### Tarefa 2.9 — Como registrar uma hipótese para ser testada?

**No Pluto:**
- Escreva uma hipótese em texto.
- Crie uma função correspondente.
- Teste a função em novos casos.

*Por que importa:* O registro transforma a hipótese em objeto compartilhável e testável pela turma.
"""

# ╔═╡ a08872a1-34d6-44be-a1db-6b58745bd86b
let
    hipotese = "dobrar e somar 1"
    f(n)=2n+1
    [f(n) for n in 1:5]
end

# ╔═╡ 92570643-11c0-478b-ac48-80e1a7c03354
md"""
### Tarefa 2.10 — Como avaliar pensamento indutivo?

**No Pluto:**
- Peça hipótese, teste e revisão.
- Analise se o estudante justifica a regra.
- Valorize o percurso, não só o acerto.

*Por que importa:* Avaliar a indução significa observar como o estudante gera, testa e reformula explicações.
"""

# ╔═╡ 221134ea-5c2b-485a-89b7-b1f27868dea2
let
    avaliacao = (hipotese="2n", teste=true, revisao="incluir mais casos")
end

# ╔═╡ Cell order:
# ╟─565d919b-9d85-44a1-8ad2-a6034fffad59
# ╟─e624c7c9-577a-43f1-942b-ad945d08ea88
# ╠═951febac-ac1c-422a-bd8c-6c7e76c881db
# ╟─05f304c5-fa87-481b-809b-9f42fd9f7843
# ╠═192b21e0-7c39-4037-8156-317929d9b6dd
# ╟─43d7ae52-c1d5-42d3-b0e4-bd877edf5d4f
# ╠═6253d87e-10c1-4dd6-a930-79c2052d37b1
# ╟─a383616f-d65e-4588-b9ba-5a1eab939049
# ╠═425392a5-c533-498d-b6f5-c04dff465410
# ╟─7430c4dd-2ce3-4eee-91e0-3ec6982ec3b6
# ╠═05423723-26f4-4605-991b-5ff0e3ae9356
# ╟─25fd64f7-875b-4eb9-a525-bd7758d9e9ba
# ╠═266b140f-f4fe-47f8-9ea3-d114ad77d1ff
# ╟─4964360b-eed2-46ef-a883-3e1b5cc7ea97
# ╠═60dff4dd-158d-4abb-b2e7-6eb386b59b48
# ╟─18c080b1-ffc5-43bf-ba98-b6bd4fe07160
# ╠═f254dcab-1659-4c49-a347-8962a6563682
# ╟─a2b769aa-0bfd-4d7d-ab1b-317d5fdb506a
# ╠═a08872a1-34d6-44be-a1db-6b58745bd86b
# ╟─92570643-11c0-478b-ac48-80e1a7c03354
# ╠═221134ea-5c2b-485a-89b7-b1f27868dea2
