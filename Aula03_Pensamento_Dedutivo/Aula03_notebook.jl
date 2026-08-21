### A Pluto.jl notebook ###
# v0.19.45

using Markdown
using InteractiveUtils

# ╔═╡ c3246215-b80f-4d15-b3ba-92e998e4647f
md"""
# Aula 03 — Pensamento dedutivo

Notebook Pluto com as 10 tarefas práticas em Julia deste bloco. Cada tarefa tem uma pergunta-guia, os passos sugeridos e um exemplo de código para explorar antes de discutir com a turma.

*Pensamento Computacional — PROFCOMP*
"""

# ╔═╡ 50d37de6-9ebc-4288-8cdc-c0ec2c2f400d
md"""
### Tarefa 3.1 — Como uma regra geral decide se um número é par?

**No Pluto:**
- Defina um número.
- Aplique a regra do resto da divisão.
- Explique por que a conclusão decorre da regra.

*Por que importa:* A dedução torna explícita a relação entre uma propriedade geral e um caso específico.
"""

# ╔═╡ 9b3444de-31c3-4c22-bf59-7e1d30839156
let
    n = 14
    eh_par = n % 2 == 0
end

# ╔═╡ 5c6aa524-6154-4818-92f1-924361725373
md"""
### Tarefa 3.2 — Como transformar uma regra em função dedutiva?

**No Pluto:**
- Escreva a regra em função.
- Teste vários casos.
- Peça justificativa verbal.

*Por que importa:* A função permite aplicar uma regra geral a muitos casos sem confundir teste com prova.
"""

# ╔═╡ 483782f7-0dd0-4614-bd4b-624f4443393e
let
    ehpar(n) = n % 2 == 0
    ehpar.(1:6)
end

# ╔═╡ 5ed95193-7317-4ab8-895a-43740dd86969
md"""
### Tarefa 3.3 — Como representar implicação lógica em código?

**No Pluto:**
- Defina duas proposições.
- Modele “se A então B”.
- Discuta quando a implicação é falsa.

*Por que importa:* A tabela lógica transforma uma frase em estrutura verificável, favorecendo precisão conceitual.
"""

# ╔═╡ e162e4db-e08f-4f79-a0ee-dd500761ca76
let
    A = true
    B = false
    implica = !A || B
end

# ╔═╡ e16da4b2-8693-4f3c-a7dc-0b378bf0109f
md"""
### Tarefa 3.4 — Como uma condição classifica casos?

**No Pluto:**
- Defina um valor.
- Use if/elseif/else.
- Interprete cada ramo.

*Por que importa:* A classificação evidencia que categorias dependem de condições e limites definidos.
"""

# ╔═╡ 912eb584-60be-4a05-9a5e-20b78cc33089
let
    x = 0
    if x > 0
        "positivo"
    elseif x < 0
        "negativo"
    else
        "zero"
    end
end

# ╔═╡ 66f25f03-c2c2-4dc8-a978-b9e843da9e11
md"""
### Tarefa 3.5 — Como deduzir pertencimento a um conjunto?

**No Pluto:**
- Defina um conjunto de valores.
- Teste um elemento.
- Discuta o sentido de pertencer.

*Por que importa:* O pertencimento conecta teoria de conjuntos a decisão computacional.
"""

# ╔═╡ 1f32c429-38e2-4ad7-9047-1451ab8a81a2
let
    A = Set([2,4,6,8])
    4 in A
    5 in A
end

# ╔═╡ ff6e6ca7-b198-4e10-83d4-1ce2655a2704
md"""
### Tarefa 3.6 — Como combinar regras com “e” e “ou”?

**No Pluto:**
- Crie duas condições.
- Combine-as.
- Interprete casos de fronteira.

*Por que importa:* Combinar condições mostra que algoritmos podem depender de várias relações simultâneas.
"""

# ╔═╡ 82c935de-47a3-454d-ac28-5c52ec8ac058
let
    idade = 18
    tem_doc = true
    pode_entrar = idade >= 18 && tem_doc
end

# ╔═╡ 3192ee59-6da5-4624-abcf-5b594e7d0e3b
md"""
### Tarefa 3.7 — Como deduzir uma saída a partir de uma tabela de regras?

**No Pluto:**
- Crie regras de aprovação.
- Aplique a casos variados.
- Verifique consistência.

*Por que importa:* A regra transforma um dado quantitativo em categoria interpretável.
"""

# ╔═╡ 3b88fd40-6c3b-42ee-b8e0-75cb5bfbcc03
let
    media = 6.2
    situacao = media >= 7 ? "aprovado" : media >= 5 ? "recuperacao" : "reprovado"
end

# ╔═╡ 1212c425-a4ec-4da6-a8a8-a2206960c5a6
md"""
### Tarefa 3.8 — Como testar uma regra dedutiva?

**No Pluto:**
- Liste entradas conhecidas.
- Defina saídas esperadas.
- Compare resultado e expectativa.

*Por que importa:* Testes tornam visível se a regra foi corretamente representada.
"""

# ╔═╡ 9530faeb-553d-458d-a320-63b134b1b9a7
let
    entradas = [4, 5, 6]
    esperado = [true, false, true]
    ehpar.(entradas) == esperado
end

# ╔═╡ 44617f87-baf0-4567-9e50-d3ba2b7736ca
md"""
### Tarefa 3.9 — Como explicar por que uma regra é insuficiente?

**No Pluto:**
- Mostre uma regra simples.
- Apresente caso que escapa.
- Reformule a condição.

*Por que importa:* A regra parcial mostra que dedução correta pode ser inadequada se o modelo ignorar variáveis.
"""

# ╔═╡ a2094095-763b-4eef-b60e-f258b08ac848
let
    nota = 7
    falta = 30
    aprovado = nota >= 7
end

# ╔═╡ eb7c3b9d-8d0b-4f99-aa6a-5db124845dc5
md"""
### Tarefa 3.10 — Como avaliar pensamento dedutivo?

**No Pluto:**
- Peça regra, aplicação e justificativa.
- Observe se há casos de fronteira.
- Solicite revisão da regra.

*Por que importa:* A avaliação da dedução deve verificar a conexão entre regra geral, caso e explicação.
"""

# ╔═╡ 066a4ab4-7d9b-4a71-82a2-a87af88630f6
let
    resposta = (regra="n%2==0", caso=14, justificativa="resto zero")
end

# ╔═╡ Cell order:
# ╟─c3246215-b80f-4d15-b3ba-92e998e4647f
# ╟─50d37de6-9ebc-4288-8cdc-c0ec2c2f400d
# ╠═9b3444de-31c3-4c22-bf59-7e1d30839156
# ╟─5c6aa524-6154-4818-92f1-924361725373
# ╠═483782f7-0dd0-4614-bd4b-624f4443393e
# ╟─5ed95193-7317-4ab8-895a-43740dd86969
# ╠═e162e4db-e08f-4f79-a0ee-dd500761ca76
# ╟─e16da4b2-8693-4f3c-a7dc-0b378bf0109f
# ╠═912eb584-60be-4a05-9a5e-20b78cc33089
# ╟─66f25f03-c2c2-4dc8-a978-b9e843da9e11
# ╠═1f32c429-38e2-4ad7-9047-1451ab8a81a2
# ╟─ff6e6ca7-b198-4e10-83d4-1ce2655a2704
# ╠═82c935de-47a3-454d-ac28-5c52ec8ac058
# ╟─3192ee59-6da5-4624-abcf-5b594e7d0e3b
# ╠═3b88fd40-6c3b-42ee-b8e0-75cb5bfbcc03
# ╟─1212c425-a4ec-4da6-a8a8-a2206960c5a6
# ╠═9530faeb-553d-458d-a320-63b134b1b9a7
# ╟─44617f87-baf0-4567-9e50-d3ba2b7736ca
# ╠═a2094095-763b-4eef-b60e-f258b08ac848
# ╟─eb7c3b9d-8d0b-4f99-aa6a-5db124845dc5
# ╠═066a4ab4-7d9b-4a71-82a2-a87af88630f6
