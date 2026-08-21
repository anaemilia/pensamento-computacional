### A Pluto.jl notebook ###
# v0.19.45

using Markdown
using InteractiveUtils

# ╔═╡ 0ee72f17-4e28-4170-89f9-727b0628586b
md"""
# Aula 09 — Noções dos limites da Computação

Notebook Pluto com as 10 tarefas práticas em Julia deste bloco. Cada tarefa tem uma pergunta-guia, os passos sugeridos e um exemplo de código para explorar antes de discutir com a turma.

*Pensamento Computacional — PROFCOMP*
"""

# ╔═╡ 429ae114-4497-4fe9-965b-e3d018e0334a
md"""
### Tarefa 9.1 — O computador resolve ou apenas calcula?

**No Pluto:**
- Execute uma simulação.
- Liste pressupostos.
- Discuta interpretação.

*Por que importa:* Um cálculo correto pode representar mal a realidade se os pressupostos forem inadequados.
"""

# ╔═╡ 1bffd340-6181-4492-a585-34dc4230a831
let
    pop0 = 1000
    taxa = 0.05
    anos = 10
    pop = pop0 * (1+taxa)^anos
end

# ╔═╡ 2686c327-f436-4b68-9553-0bd828b7b8f5
md"""
### Tarefa 9.2 — O que acontece quando faltam dados?

**No Pluto:**
- Defina variáveis incompletas.
- Explique o que não se sabe.
- Evite inferência automática sem contexto.

*Por que importa:* Reconhecer insuficiência de dados é parte da competência computacional.
"""

# ╔═╡ 53d51cae-f23f-415a-b289-d7ee0c428e48
let
    amigos_carlos = 5
    amigos_ana = 6
    # há amigos em comum?
end

# ╔═╡ 83fcc817-7781-4b6c-ac55-6411fb182323
md"""
### Tarefa 9.3 — Como a precisão numérica limita a interpretação?

**No Pluto:**
- Some decimais.
- Observe resultado.
- Discuta representação interna.

*Por que importa:* A tarefa mostra que números no computador têm representação e limitações próprias.
"""

# ╔═╡ 6b1a1ae0-93a4-4338-9a30-401ad1ceb32e
let
    0.1 + 0.2
    (0.1 + 0.2) == 0.3
end

# ╔═╡ e12a1fda-7c1e-4882-8844-51d1cf0f62b5
md"""
### Tarefa 9.4 — Como um modelo pode ignorar variáveis importantes?

**No Pluto:**
- Calcule aprovação por média.
- Inclua frequência depois.
- Compare decisões.

*Por que importa:* Um algoritmo pode ser coerente internamente e ainda injusto ou incompleto.
"""

# ╔═╡ 98a3ab1a-9a9c-4dbf-af85-52d833b42c0f
let
    media = 8
    frequencia = 60
    aprovado = media >= 7
end

# ╔═╡ ad1ee17b-302f-419d-8a8d-1b1e3c72dd13
md"""
### Tarefa 9.5 — Como uma regra pode gerar viés?

**No Pluto:**
- Crie critério simplificado.
- Liste quem fica de fora.
- Discuta implicações.

*Por que importa:* Classificações exigem reflexão sobre fronteiras, contexto e consequências.
"""

# ╔═╡ c8fb866c-488c-482d-9926-a3a7edc988e0
let
    corte = 7
    notas = [6.9, 7.0, 7.1]
    notas .>= corte
end

# ╔═╡ 0e4f1632-bf23-4b34-91a2-96122d9eb034
md"""
### Tarefa 9.6 — Como reconhecer ambiguidade em linguagem natural?

**No Pluto:**
- Escreva uma pergunta ambígua.
- Modele duas interpretações.
- Compare respostas.

*Por que importa:* A computação exige formalização, mas a formulação do problema é humana e contextual.
"""

# ╔═╡ f1ba3fe8-70dc-4023-a52f-493782782944
let
    pergunta = "quanto falta?"
    # falta para 7 ou falta de presença?
end

# ╔═╡ c65f22b8-ab42-49aa-a926-ced64d496178
md"""
### Tarefa 9.7 — Como um laço pode não terminar?

**No Pluto:**
- Mostre condição problemática.
- Identifique a ausência de mudança.
- Discuta parada.

*Por que importa:* Algoritmos precisam de critérios claros de término e segurança.
"""

# ╔═╡ 80716374-938f-45c2-98f4-b7f4d8ffeedb
let
    x = 1
    # while x > 0
    #     x += 1
    # end
end

# ╔═╡ d57bbb0d-8dfa-4e2f-b4df-81f0bed59675
md"""
### Tarefa 9.8 — Como avaliar a adequação de uma representação?

**No Pluto:**
- Compare duas formas de saída.
- Pergunte qual responde melhor.
- Explique escolha.

*Por que importa:* A saída adequada depende da pergunta; média, máximo e distribuição contam histórias diferentes.
"""

# ╔═╡ 4fe7bff0-65f8-4d94-af4e-b90c3660e263
let
    dados = [1,1,2,3,5,8]
    media = sum(dados)/length(dados)
    maximo = maximum(dados)
end

# ╔═╡ fcfb921f-5781-4507-bd80-35b8a6827aaf
md"""
### Tarefa 9.9 — Como discutir limites com a turma?

**No Pluto:**
- Peça pressupostos.
- Peça variáveis ignoradas.
- Peça consequências de uso.

*Por que importa:* Discutir limites transforma o código em objeto de reflexão pedagógica e ética.
"""

# ╔═╡ a019413d-a4e5-4b32-a729-005a34d7be87
let
    limites = ["dados incompletos", "regra simplificada", "contexto ignorado"]
end

# ╔═╡ d87cb053-4236-407d-9f46-454f1a4be311
md"""
### Tarefa 9.10 — Como avaliar noções de limites da Computação?

**No Pluto:**
- Peça que o estudante diga o que o código faz.
- Peça o que ele não faz.
- Peça como melhoraria o modelo.

*Por que importa:* A aprendizagem aparece quando o estudante diferencia cálculo, modelo, realidade e decisão humana.
"""

# ╔═╡ b8046a3b-78d5-4c5d-8c86-722222408c05
let
    avaliacao = (faz="calcula", nao_faz="julga contexto", melhorar="incluir variaveis")
end

# ╔═╡ Cell order:
# ╟─0ee72f17-4e28-4170-89f9-727b0628586b
# ╟─429ae114-4497-4fe9-965b-e3d018e0334a
# ╠═1bffd340-6181-4492-a585-34dc4230a831
# ╟─2686c327-f436-4b68-9553-0bd828b7b8f5
# ╠═53d51cae-f23f-415a-b289-d7ee0c428e48
# ╟─83fcc817-7781-4b6c-ac55-6411fb182323
# ╠═6b1a1ae0-93a4-4338-9a30-401ad1ceb32e
# ╟─e12a1fda-7c1e-4882-8844-51d1cf0f62b5
# ╠═98a3ab1a-9a9c-4dbf-af85-52d833b42c0f
# ╟─ad1ee17b-302f-419d-8a8d-1b1e3c72dd13
# ╠═c8fb866c-488c-482d-9926-a3a7edc988e0
# ╟─0e4f1632-bf23-4b34-91a2-96122d9eb034
# ╠═f1ba3fe8-70dc-4023-a52f-493782782944
# ╟─c65f22b8-ab42-49aa-a926-ced64d496178
# ╠═80716374-938f-45c2-98f4-b7f4d8ffeedb
# ╟─d57bbb0d-8dfa-4e2f-b4df-81f0bed59675
# ╠═4fe7bff0-65f8-4d94-af4e-b90c3660e263
# ╟─fcfb921f-5781-4507-bd80-35b8a6827aaf
# ╠═a019413d-a4e5-4b32-a729-005a34d7be87
# ╟─d87cb053-4236-407d-9f46-454f1a4be311
# ╠═b8046a3b-78d5-4c5d-8c86-722222408c05
