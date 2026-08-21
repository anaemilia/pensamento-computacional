### A Pluto.jl notebook ###
# v0.19.45

using Markdown
using InteractiveUtils

# ╔═╡ 021a7c90-3ffc-4a03-b61e-9193047bf085
md"""
# Aula 12 — Ações Ligadas a Categorias

Notebook Pluto com exemplos de ações genéricas e especializadas usando múltiplo despacho (*multiple dispatch*) em Julia.

*Pensamento Computacional — PROFCOMP*
"""

# ╔═╡ d39fe055-3c4f-4193-819e-4b461596486c
md"""
### Tarefa 12.1 — Uma ação genérica: calcular área

**No Pluto:**
- Defina tipos para `Quadrado` e `Circulo`.
- Escreva um método de `area` especializado para cada tipo.
- Chame `area(...)` para as duas formas — a função "genérica" se comporta de modo diferente conforme o tipo.
"""

# ╔═╡ 5cfd753f-04d6-4061-9711-7e7d8ed80573
begin
    struct Quadrado
        lado::Float64
    end
    struct Circulo
        raio::Float64
    end
    area(f::Quadrado) = f.lado^2
    area(f::Circulo) = pi * f.raio^2
    (area(Quadrado(4.0)), round(area(Circulo(3.0)), digits=2))
end

# ╔═╡ addd2203-0866-42b3-aeb2-1632af5b2c50
md"""
### Tarefa 12.2 — Ação especializada por tipo (despacho múltiplo)

**No Pluto:**
- Escreva uma função `descrever` com um método genérico e um método especializado para números.
- Observe como Julia escolhe automaticamente o método certo conforme o tipo do argumento.
"""

# ╔═╡ c5868434-0502-4e91-b193-3257dbfd495c
let
    descrever(x) = "valor genérico: $x"
    descrever(x::Number) = "número: $x (o dobro é $(2x))"
    (descrever("texto"), descrever(21))
end

# ╔═╡ 2d21b181-af1e-4c27-ad66-34338b815d2d
md"""
### Tarefa 12.3 — Quando a ação é sempre a mesma (função genérica pura)

**No Pluto:**
- Escreva uma função `contar` que funcione para qualquer coleção (lista de números, lista de textos, etc.).
- Teste com dois tipos diferentes de coleção.
"""

# ╔═╡ 77b83be3-57be-457a-8066-48c04c030233
let
    contar(colecao) = length(colecao)
    (contar([1, 2, 3, 4]), contar(["maçã", "banana", "pera"]))
end

# ╔═╡ Cell order:
# ╟─021a7c90-3ffc-4a03-b61e-9193047bf085
# ╟─d39fe055-3c4f-4193-819e-4b461596486c
# ╠═5cfd753f-04d6-4061-9711-7e7d8ed80573
# ╟─addd2203-0866-42b3-aeb2-1632af5b2c50
# ╠═c5868434-0502-4e91-b193-3257dbfd495c
# ╟─2d21b181-af1e-4c27-ad66-34338b815d2d
# ╠═77b83be3-57be-457a-8066-48c04c030233
