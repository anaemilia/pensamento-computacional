### A Pluto.jl notebook ###
# v0.19.45

using Markdown
using InteractiveUtils

# ╔═╡ 69ff7a86-0b2c-4942-a183-6244cf2b2f2f
md"""
# Aula 07 — Técnicas de construção de algoritmos: generalização

Notebook Pluto com as 10 tarefas práticas em Julia deste bloco. Cada tarefa tem uma pergunta-guia, os passos sugeridos e um exemplo de código para explorar antes de discutir com a turma.

*Pensamento Computacional — PROFCOMP*
"""

# ╔═╡ 74ffa027-281f-4d86-be22-b0013f5367fc
md"""
### Tarefa 7.1 — Como reconhecer repetição que pede generalização?

**No Pluto:**
- Mostre três cálculos parecidos.
- Identifique a parte comum.
- Transforme em função.

*Por que importa:* Generalizar é perceber uma estrutura comum em diferentes casos.
"""

# ╔═╡ 2b59fe76-8d83-43b2-9c7a-c062c28b5022
let
    m1 = (8+6+7)/3
    m2 = (5+9+10)/3
end

# ╔═╡ c4410346-ea5f-484d-adfb-84b47f1b1b9f
md"""
### Tarefa 7.2 — Como transformar cálculo em função?

**No Pluto:**
- Nomeie a função.
- Defina entrada.
- Retorne saída.

*Por que importa:* A função estabiliza uma regra e permite aplicá-la a novos dados.
"""

# ╔═╡ f4652e4f-8d31-496d-85fd-f2326f5f6829
let
    media(notas) = sum(notas)/length(notas)
    media([8,6,7])
end

# ╔═╡ c0d887d5-52bf-429f-b309-3d2f11bedb28
md"""
### Tarefa 7.3 — Como generalizar com parâmetros?

**No Pluto:**
- Substitua número fixo por parâmetro.
- Teste limites diferentes.
- Compare classificações.

*Por que importa:* Parâmetros mostram que um algoritmo pode ser adaptado a contextos diferentes.
"""

# ╔═╡ 1be655cb-ec2c-4b48-b55a-7f391f7acd95
let
    situacao(media, limite) = media >= limite ? "ok" : "rever"
    situacao(6.5, 7)
end

# ╔═╡ 7e999f8c-a8de-41a5-8e06-8806469a815c
md"""
### Tarefa 7.4 — Como generalizar uma transformação?

**No Pluto:**
- Aplique uma regra a vários valores.
- Use broadcasting.
- Interprete coleção transformada.

*Por que importa:* A generalização aparece quando a mesma relação opera sobre todos os elementos.
"""

# ╔═╡ e464e170-1a41-4e50-afd7-31f423a0ab32
let
    dados = [1,2,3,4]
    dobros = dados .* 2
end

# ╔═╡ a6a25dc1-ad76-4444-a725-258f4524f832
md"""
### Tarefa 7.5 — Como generalizar uma classificação?

**No Pluto:**
- Crie lista de médias.
- Classifique todas.
- Compare saídas.

*Por que importa:* A compreensão de lista permite aplicar uma decisão a muitos casos.
"""

# ╔═╡ fcc6af69-f6c4-449c-beab-4cdbafed4736
let
    medias = [4.5, 6.0, 8.0]
    status = [situacao(m, 7) for m in medias]
end

# ╔═╡ 1caee3f9-1146-42bf-89c5-415cfcd1b4ea
md"""
### Tarefa 7.6 — Como generalizar com diferentes tipos de dados?

**No Pluto:**
- Use números inteiros e decimais.
- Observe que a função continua válida.
- Discuta domínio.

*Por que importa:* A generalização exige discutir para quais dados a regra faz sentido.
"""

# ╔═╡ 9bfd3f32-a4e3-4907-879c-04bb7e4f357e
let
    media([8, 6, 7])
    media([8.5, 6.0, 7.5])
end

# ╔═╡ cc73f8cd-3531-415d-91a7-ada4480b7fc3
md"""
### Tarefa 7.7 — Como generalizar por composição?

**No Pluto:**
- Combine funções menores.
- Crie uma função maior.
- Teste novos casos.

*Por que importa:* A composição mostra que generalizações podem ser construídas a partir de outras generalizações.
"""

# ╔═╡ d5bbc2e3-2a5f-482d-a015-7a1362cee63d
let
    avaliar(notas) = situacao(media(notas), 7)
    avaliar([8,6,7])
end

# ╔═╡ 87e890ce-915b-4bb6-8058-27c96e80bdab
md"""
### Tarefa 7.8 — Como evitar generalização indevida?

**No Pluto:**
- Inclua caso vazio.
- Observe erro ou resultado inválido.
- Crie tratamento.

*Por que importa:* Nem toda regra geral é válida para todos os casos; generalizar exige explicitar restrições.
"""

# ╔═╡ f397ea71-0f75-4052-b972-1a5e0b9554c9
let
    notas = []
    # media(notas) causaria divisão por zero
end

# ╔═╡ 39a2ef58-1bd8-427b-bb2b-5ac62409587d
md"""
### Tarefa 7.9 — Como documentar uma generalização?

**No Pluto:**
- Escreva a intenção da função.
- Indique entrada e saída.
- Inclua exemplo.

*Por que importa:* Documentar torna a generalização comunicável e revisável.
"""

# ╔═╡ e7b3aa5a-5783-45df-803b-1e6e6d5d7a9c
let
    md"""media(notas): soma valores e divide pela quantidade."""
end

# ╔═╡ 7ad9a4f1-b0d4-4bca-a37f-b473cf33d67e
md"""
### Tarefa 7.10 — Como avaliar generalização?

**No Pluto:**
- Peça novo exemplo.
- Peça contraexemplo.
- Peça adaptação da regra.

*Por que importa:* A generalização é melhor avaliada quando o estudante aplica, limita e adapta a regra.
"""

# ╔═╡ 32bab947-7eff-4d41-8003-030034adf2bb
let
    teste = media([10, 0]) == 5
end

# ╔═╡ Cell order:
# ╟─69ff7a86-0b2c-4942-a183-6244cf2b2f2f
# ╟─74ffa027-281f-4d86-be22-b0013f5367fc
# ╠═2b59fe76-8d83-43b2-9c7a-c062c28b5022
# ╟─c4410346-ea5f-484d-adfb-84b47f1b1b9f
# ╠═f4652e4f-8d31-496d-85fd-f2326f5f6829
# ╟─c0d887d5-52bf-429f-b309-3d2f11bedb28
# ╠═1be655cb-ec2c-4b48-b55a-7f391f7acd95
# ╟─7e999f8c-a8de-41a5-8e06-8806469a815c
# ╠═e464e170-1a41-4e50-afd7-31f423a0ab32
# ╟─a6a25dc1-ad76-4444-a725-258f4524f832
# ╠═fcc6af69-f6c4-449c-beab-4cdbafed4736
# ╟─1caee3f9-1146-42bf-89c5-415cfcd1b4ea
# ╠═9bfd3f32-a4e3-4907-879c-04bb7e4f357e
# ╟─cc73f8cd-3531-415d-91a7-ada4480b7fc3
# ╠═d5bbc2e3-2a5f-482d-a015-7a1362cee63d
# ╟─87e890ce-915b-4bb6-8058-27c96e80bdab
# ╠═f397ea71-0f75-4052-b972-1a5e0b9554c9
# ╟─39a2ef58-1bd8-427b-bb2b-5ac62409587d
# ╠═e7b3aa5a-5783-45df-803b-1e6e6d5d7a9c
# ╟─7ad9a4f1-b0d4-4bca-a37f-b473cf33d67e
# ╠═32bab947-7eff-4d41-8003-030034adf2bb
