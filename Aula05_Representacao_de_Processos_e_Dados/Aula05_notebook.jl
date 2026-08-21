### A Pluto.jl notebook ###
# v0.19.45

using Markdown
using InteractiveUtils

# ╔═╡ 00c6cc78-596c-49a2-9f34-1fcacbd16d57
md"""
# Aula 05 — Fundamentos da representação de processos e dados

Notebook Pluto com as 10 tarefas práticas em Julia deste bloco. Cada tarefa tem uma pergunta-guia, os passos sugeridos e um exemplo de código para explorar antes de discutir com a turma.

*Pensamento Computacional — PROFCOMP*
"""

# ╔═╡ b2e36f47-d0cb-4e20-8830-db5af8f43458
md"""
### Tarefa 5.1 — Como uma lista representa dados brutos?

**No Pluto:**
- Crie dados em lista.
- Observe ordem e repetição.
- Discuta se a lista conta uma história.

*Por que importa:* A lista registra valores, mas ainda exige organização para comunicar relações.
"""

# ╔═╡ a2fdd56a-4111-4b76-85b5-bf3a8c1ca3a5
let
    vendas = [3, 5, 2, 5, 4]
end

# ╔═╡ 378d4f27-b5cb-44c0-a4d5-29ccd91e8297
md"""
### Tarefa 5.2 — Como uma tabela representa relações?

**No Pluto:**
- Crie pares nome–valor.
- Compare com lista simples.
- Interprete cada linha.

*Por que importa:* A tabela articula categorias e quantidades, fazendo emergir uma relação entre colunas.
"""

# ╔═╡ 2caeec70-9f10-449d-8d33-f176ab694444
let
    produtos = ["A", "B", "C"]
    qtd = [3, 5, 2]
    collect(zip(produtos, qtd))
end

# ╔═╡ e974acfb-f0d3-4daa-8c6d-75884690d42d
md"""
### Tarefa 5.3 — Como um dicionário representa associação?

**No Pluto:**
- Mapeie nomes para valores.
- Consulte uma chave.
- Discuta diferença entre lista e dicionário.

*Por que importa:* O dicionário torna explícita uma relação de acesso e significado.
"""

# ╔═╡ 45a339cb-ccf5-428f-9fcd-a9459c76b00c
let
    estoque = Dict("A"=>3, "B"=>5, "C"=>2)
    estoque["B"]
end

# ╔═╡ 8f8fa355-23de-459e-b945-933be73eba6d
md"""
### Tarefa 5.4 — Como uma matriz representa uma grade?

**No Pluto:**
- Crie matriz 2×3.
- Acesse linha e coluna.
- Interprete posição como relação.

*Por que importa:* A matriz evidencia que dados podem ter estrutura espacial, não apenas sequência.
"""

# ╔═╡ b270f5e5-4b18-48ef-ad07-49ae0cd38b3b
let
    M = [1 2 3; 4 5 6]
    M[2,3]
end

# ╔═╡ c82f643d-c501-407e-ad76-a2c7c8e35950
md"""
### Tarefa 5.5 — Como representar processo por estados?

**No Pluto:**
- Defina estado inicial.
- Aplique mudança.
- Compare antes e depois.

*Por que importa:* A representação de estados ajuda a compreender processos temporais e mudanças.
"""

# ╔═╡ edd9f83f-4185-4f39-901c-89f71eb8b2df
let
    estado0 = 10
    mudanca = -3
    estado1 = estado0 + mudanca
end

# ╔═╡ bf979727-540e-4439-b1e6-6887e0b2b85f
md"""
### Tarefa 5.6 — Como representar frequência?

**No Pluto:**
- Use dados categóricos.
- Conte ocorrências.
- Compare frequências.

*Por que importa:* Contar frequências transforma dados dispersos em estrutura interpretável.
"""

# ╔═╡ 3cca39a9-e979-4183-b69d-27d9acc277fe
let
    dados = ["sim","nao","sim","sim"]
    freq = Dict(x=>count(==(x), dados) for x in unique(dados))
end

# ╔═╡ a59d3558-f50e-4a09-8799-30bb7c7c7c92
md"""
### Tarefa 5.7 — Como representar proporção?

**No Pluto:**
- Conte total e parte.
- Calcule razão.
- Interprete percentual.

*Por que importa:* A proporção desloca a atenção do número absoluto para a relação entre conjuntos.
"""

# ╔═╡ 39b551f5-f940-4168-a029-4c9f73086954
let
    total = 30
    parte = 12
    percentual = parte / total * 100
end

# ╔═╡ f70e7006-9e46-4e0d-b462-27fc62065365
md"""
### Tarefa 5.8 — Como escolher a representação adequada?

**No Pluto:**
- Mostre os mesmos dados como lista e frequência.
- Compare mensagens.
- Decida qual comunica melhor.

*Por que importa:* Escolher representação é uma decisão conceitual e comunicativa.
"""

# ╔═╡ 177ae6eb-7615-4c53-9732-791d78d01536
let
    dados = ["A","B","A","C","A"]
    lista = dados
    freq = Dict(x=>count(==(x), dados) for x in unique(dados))
end

# ╔═╡ 0eab6dcb-c60e-4577-89c8-efddc6aac259
md"""
### Tarefa 5.9 — Como representar processo com função composta?

**No Pluto:**
- Defina duas etapas.
- Aplique em sequência.
- Interprete a composição.

*Por que importa:* A composição de funções mostra que processos computacionais podem ser encadeados.
"""

# ╔═╡ 52d690cb-5d3b-498a-826a-98f73ab3d8ee
let
    dobro(x)=2x
    soma1(x)=x+1
    resultado = soma1(dobro(5))
end

# ╔═╡ 4e666302-026b-48ce-9bfc-b02b54df75ea
md"""
### Tarefa 5.10 — Como avaliar representações de dados?

**No Pluto:**
- Peça duas formas de representar.
- Compare o que cada uma mostra.
- Relacione com objetivo da tarefa.

*Por que importa:* Avaliar representação é observar adequação, clareza e relações que ela permite perceber.
"""

# ╔═╡ c3976e38-5ad4-4736-89e5-da23e6782a41
let
    formas = ["lista", "tabela", "frequencia"]
end

# ╔═╡ Cell order:
# ╟─00c6cc78-596c-49a2-9f34-1fcacbd16d57
# ╟─b2e36f47-d0cb-4e20-8830-db5af8f43458
# ╠═a2fdd56a-4111-4b76-85b5-bf3a8c1ca3a5
# ╟─378d4f27-b5cb-44c0-a4d5-29ccd91e8297
# ╠═2caeec70-9f10-449d-8d33-f176ab694444
# ╟─e974acfb-f0d3-4daa-8c6d-75884690d42d
# ╠═45a339cb-ccf5-428f-9fcd-a9459c76b00c
# ╟─8f8fa355-23de-459e-b945-933be73eba6d
# ╠═b270f5e5-4b18-48ef-ad07-49ae0cd38b3b
# ╟─c82f643d-c501-407e-ad76-a2c7c8e35950
# ╠═edd9f83f-4185-4f39-901c-89f71eb8b2df
# ╟─bf979727-540e-4439-b1e6-6887e0b2b85f
# ╠═3cca39a9-e979-4183-b69d-27d9acc277fe
# ╟─a59d3558-f50e-4a09-8799-30bb7c7c7c92
# ╠═39b551f5-f940-4168-a029-4c9f73086954
# ╟─f70e7006-9e46-4e0d-b462-27fc62065365
# ╠═177ae6eb-7615-4c53-9732-791d78d01536
# ╟─0eab6dcb-c60e-4577-89c8-efddc6aac259
# ╠═52d690cb-5d3b-498a-826a-98f73ab3d8ee
# ╟─4e666302-026b-48ce-9bfc-b02b54df75ea
# ╠═c3976e38-5ad4-4736-89e5-da23e6782a41
