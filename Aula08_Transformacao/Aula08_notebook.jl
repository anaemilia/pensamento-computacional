### A Pluto.jl notebook ###
# v0.19.45

using Markdown
using InteractiveUtils

# ╔═╡ 601f4066-6839-4038-950e-8e80bbf246fc
md"""
# Aula 08 — Técnicas de construção de algoritmos: transformação

Notebook Pluto com as 10 tarefas práticas em Julia deste bloco. Cada tarefa tem uma pergunta-guia, os passos sugeridos e um exemplo de código para explorar antes de discutir com a turma.

*Pensamento Computacional — PROFCOMP*
"""

# ╔═╡ 7e23d48a-281a-4e5c-8c00-815c4e562b17
md"""
### Tarefa 8.1 — Como transformar unidades?

**No Pluto:**
- Crie valores em Celsius.
- Aplique fórmula.
- Compare escalas.

*Por que importa:* A transformação evidencia que o mesmo fenômeno pode ser representado em diferentes sistemas.
"""

# ╔═╡ 127c3fd9-4287-46c7-a714-009b947217d9
let
    celsius = [25, 28, 30]
    fahrenheit = celsius .* 9/5 .+ 32
end

# ╔═╡ ad277bf4-6dca-417f-8121-78ccfe2d9ddf
md"""
### Tarefa 8.2 — Como transformar valores em categorias?

**No Pluto:**
- Use médias numéricas.
- Classifique cada uma.
- Discuta perda e ganho de informação.

*Por que importa:* Categorizar simplifica a leitura, mas pode esconder nuances dos dados.
"""

# ╔═╡ 70f28559-16e4-4cef-bffa-57dc6726a55e
let
    medias = [4.5, 6.5, 8.0]
    categorias = [m>=7 ? "ok" : "rever" for m in medias]
end

# ╔═╡ a37d0f1e-51c5-4479-98ac-020efcf5ffae
md"""
### Tarefa 8.3 — Como transformar dados brutos em frequência?

**No Pluto:**
- Conte ocorrências.
- Crie dicionário.
- Interprete a distribuição.

*Por que importa:* Frequência transforma respostas individuais em padrão coletivo.
"""

# ╔═╡ bb186749-42c6-4be8-8d09-873085045714
let
    dados = ["A","B","A","C","A"]
    freq = Dict(x=>count(==(x), dados) for x in unique(dados))
end

# ╔═╡ 68ccfbc4-8414-4acf-a4ac-af052b4c146c
md"""
### Tarefa 8.4 — Como transformar uma lista filtrando valores?

**No Pluto:**
- Defina critério.
- Selecione elementos.
- Discuta o que ficou fora.

*Por que importa:* Filtrar exige explicitar critério e refletir sobre a parte do conjunto selecionada.
"""

# ╔═╡ a3923b26-2c44-4c21-a09a-e0a23b6e3263
let
    notas = [4, 6, 8, 9]
    altas = [n for n in notas if n >= 7]
end

# ╔═╡ 7e9f7451-4d22-4007-8cb7-4f199e267b69
md"""
### Tarefa 8.5 — Como transformar dados por normalização?

**No Pluto:**
- Subtraia o mínimo.
- Divida pelo intervalo.
- Compare antes e depois.

*Por que importa:* Normalizar mostra que dados podem manter ordem relativa mesmo mudando de escala.
"""

# ╔═╡ 63ddffdf-7d59-4da1-ac8e-a0a1ba2b3fcc
let
    x = [10, 20, 30]
    normalizado = (x .- minimum(x)) ./ (maximum(x)-minimum(x))
end

# ╔═╡ 9cf5f07c-930b-4be9-8827-95a75dd0e0f3
md"""
### Tarefa 8.6 — Como transformar forma de representação?

**No Pluto:**
- Converta lista para pares.
- Depois para dicionário.
- Compare acessos.

*Por que importa:* A relação nome–valor pode ser vista como tabela, pares ou dicionário, cada qual com um uso.
"""

# ╔═╡ b31b0487-c9a8-43fe-a3d5-2231c271013d
let
    nomes = ["A","B"]
    valores = [10,20]
    pares = collect(zip(nomes,valores))
    dict = Dict(pares)
end

# ╔═╡ c38aa515-f223-4f0c-9936-9f3ed45eabb0
md"""
### Tarefa 8.7 — Como transformar processo em pipeline?

**No Pluto:**
- Aplique várias operações em sequência.
- Nomeie cada etapa.
- Interprete o resultado.

*Por que importa:* A pipeline torna visível que resultados podem surgir de transformações encadeadas.
"""

# ╔═╡ ced88e76-4742-4247-84f1-39315f4b8fdb
let
    dados = [1,2,3,4]
    resultado = sum(dados .^ 2)
end

# ╔═╡ a3a4c451-559f-45db-a78d-b183fbbb3b3a
md"""
### Tarefa 8.8 — Como transformar texto em dados?

**No Pluto:**
- Quebre uma frase.
- Conte palavras.
- Interprete frequência.

*Por que importa:* Texto também pode ser modelado como dados, aproximando linguagem e computação.
"""

# ╔═╡ 122647f3-3897-4eed-8c42-ae5cde305f84
let
    frase = "dados viram modelo"
    palavras = split(frase)
    length(palavras)
end

# ╔═╡ 7dc2a6ed-c17d-4bdd-828d-739452bac316
md"""
### Tarefa 8.9 — Como transformar sem perder sentido?

**No Pluto:**
- Compare dado original e transformado.
- Identifique informação preservada.
- Identifique informação perdida.

*Por que importa:* Transformações devem ser avaliadas pelo que tornam visível e pelo que ocultam.
"""

# ╔═╡ 0fa47197-a8c4-418b-a290-329fabbefa6e
let
    original = [1, 2, 3]
    transformado = original .> 2
end

# ╔═╡ b33a8388-9831-49ef-9983-33cd3bb5df78
md"""
### Tarefa 8.10 — Como avaliar transformação de dados?

**No Pluto:**
- Peça regra, antes/depois e interpretação.
- Solicite justificativa da escolha.
- Analise adequação.

*Por que importa:* Avaliar transformação é verificar se a nova forma ajuda a responder melhor à pergunta.
"""

# ╔═╡ 8b2cd76a-de6e-4073-b530-1b6f2a43c3fd
let
    registro = (antes="lista", depois="frequencia", regra="contar")
end

# ╔═╡ Cell order:
# ╟─601f4066-6839-4038-950e-8e80bbf246fc
# ╟─7e23d48a-281a-4e5c-8c00-815c4e562b17
# ╠═127c3fd9-4287-46c7-a714-009b947217d9
# ╟─ad277bf4-6dca-417f-8121-78ccfe2d9ddf
# ╠═70f28559-16e4-4cef-bffa-57dc6726a55e
# ╟─a37d0f1e-51c5-4479-98ac-020efcf5ffae
# ╠═bb186749-42c6-4be8-8d09-873085045714
# ╟─68ccfbc4-8414-4acf-a4ac-af052b4c146c
# ╠═a3923b26-2c44-4c21-a09a-e0a23b6e3263
# ╟─7e9f7451-4d22-4007-8cb7-4f199e267b69
# ╠═63ddffdf-7d59-4da1-ac8e-a0a1ba2b3fcc
# ╟─9cf5f07c-930b-4be9-8827-95a75dd0e0f3
# ╠═b31b0487-c9a8-43fe-a3d5-2231c271013d
# ╟─c38aa515-f223-4f0c-9936-9f3ed45eabb0
# ╠═ced88e76-4742-4247-84f1-39315f4b8fdb
# ╟─a3a4c451-559f-45db-a78d-b183fbbb3b3a
# ╠═122647f3-3897-4eed-8c42-ae5cde305f84
# ╟─7dc2a6ed-c17d-4bdd-828d-739452bac316
# ╠═0fa47197-a8c4-418b-a290-329fabbefa6e
# ╟─b33a8388-9831-49ef-9983-33cd3bb5df78
# ╠═8b2cd76a-de6e-4073-b530-1b6f2a43c3fd
