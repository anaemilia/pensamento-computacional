### A Pluto.jl notebook ###
# v0.19.45

using Markdown
using InteractiveUtils

# ╔═╡ 1ac71fe2-72ea-4e68-a78a-3371d5735d7d
md"""
# Aula 15 — Encerramento e Discussão

Notebook Pluto para a discussão final: uma revisão rápida em código dos pilares trabalhados no curso, seguida das perguntas de fechamento para a turma.

*Pensamento Computacional — PROFCOMP*
"""

# ╔═╡ b3be5ba0-f270-4a02-af00-2820b967fc5d
md"""
### Revisão — Indução e Dedução lado a lado

**No Pluto:**
- Relembre a diferença: indução parte de casos e propõe uma regra; dedução parte de uma regra e aplica a um caso.
- Veja os dois raciocínios lado a lado no mesmo código.
"""

# ╔═╡ 66ec8821-a274-4dfb-87cb-84fe2cd3f54d
let
    # Indução: observo casos e proponho uma regra
    casos = [2, 4, 6, 8]
    regra_proposta(n) = 2n

    # Dedução: aplico a regra a um caso novo, com certeza lógica
    caso_novo = 5
    previsao = regra_proposta(caso_novo)

    (casos_batem = [regra_proposta(i) for i in 1:4] == casos, previsao = previsao)
end

# ╔═╡ c90c67a2-f0f8-47d3-b0c7-5e096d88035e
md"""
### Revisão — Decomposição, generalização e transformação juntas

**No Pluto:**
- Decomponha o cálculo de uma média em passos.
- Generalize o cálculo como uma função reutilizável.
- Transforme uma lista de médias em categorias (aprovado/reprovado).
"""

# ╔═╡ 1078bf5b-094e-4727-86d4-66f9e453bb6e
let
    # Decomposição: separar em passos
    notas_ana = [8.5, 9.0, 7.5]
    soma = sum(notas_ana)
    quantidade = length(notas_ana)
    media_ana = soma / quantidade

    # Generalização: função reutilizável para qualquer aluno
    media(notas) = sum(notas) / length(notas)

    # Transformação: de número para categoria
    categoria(m) = m >= 6.0 ? "aprovado" : "reprovado"

    (media_ana, categoria(media_ana), categoria(media([4.0, 5.0, 3.5])))
end

# ╔═╡ e9784cdf-3fdd-4942-8318-4e3eea4cb44a
md"""
### Perguntas para a discussão final

1. O que o Pluto tornou visível que ficaria menos evidente em um editor de código comum?
2. A reatividade do Pluto ajudou a perceber relações entre dados e resultado?
3. Em quais tarefas do curso vocês usaram pensamento indutivo? E dedutivo?
4. Quais tarefas exigiram decompor um problema em partes menores?
5. Onde apareceu generalização — transformar um caso específico em algo reutilizável?
6. Onde apareceu transformação de dados — mudar a forma sem perder o sentido?
7. Quais são os limites dos modelos que construímos ao longo do curso?
8. O que vocês levam deste curso para a sala de aula de vocês?
"""

# ╔═╡ Cell order:
# ╟─1ac71fe2-72ea-4e68-a78a-3371d5735d7d
# ╟─b3be5ba0-f270-4a02-af00-2820b967fc5d
# ╠═66ec8821-a274-4dfb-87cb-84fe2cd3f54d
# ╟─c90c67a2-f0f8-47d3-b0c7-5e096d88035e
# ╠═1078bf5b-094e-4727-86d4-66f9e453bb6e
# ╟─e9784cdf-3fdd-4942-8318-4e3eea4cb44a
