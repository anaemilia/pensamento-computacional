### A Pluto.jl notebook ###
# v0.19.45

using Markdown
using InteractiveUtils

# ╔═╡ 434f8658-3f68-49a9-87e8-812c46b731ab
md"""
# Aula 11 — Definindo Novos Tipos

Notebook Pluto com exemplos práticos de definição de tipos (`struct`), instâncias, e a diferença entre dados mutáveis e imutáveis em Julia.

*Pensamento Computacional — PROFCOMP*
"""

# ╔═╡ da712dd8-8141-47e4-95ad-8bfa5f0c4be4
md"""
### Tarefa 11.1 — Definindo um novo tipo: Pessoa

**No Pluto:**
- Defina um tipo `Pessoa` com nome, idade e e-mail.
- Crie uma instância para representar a Ana.
- Acesse os campos da instância.
"""

# ╔═╡ 8aad10c5-424c-4755-9bc0-6d9e3e9ccbfb
begin
    struct Pessoa
        nome::String
        idade::Int
        email::String
    end
    ana = Pessoa("Ana", 30, "ana@exemplo.com")
    (ana.nome, ana.idade)
end

# ╔═╡ 59d63040-50d7-4cfc-9da4-0184e4f00e0d
md"""
### Tarefa 11.2 — Criando várias instâncias do mesmo tipo

**No Pluto:**
- Defina um tipo `Carro`.
- Crie duas instâncias diferentes.
- Compare seus campos.
"""

# ╔═╡ c4070559-2205-46ae-a939-f01ec1823e41
begin
    struct Carro
        marca::String
        modelo::String
        ano::Int
    end
    carro1 = Carro("Toyota", "Corolla", 2023)
    carro2 = Carro("Fiat", "Uno", 2015)
    (carro1.marca, carro2.marca, carro1.ano - carro2.ano)
end

# ╔═╡ a3d58b8e-f8b6-4659-91f4-6b75ea60f022
md"""
### Tarefa 11.3 — O que não muda: tipos imutáveis

**No Pluto:**
- Tente alterar um campo de uma `Pessoa` (tipo imutável, definido na Tarefa 11.1).
- Observe o erro — e discuta por que isso pode ser útil (segurança, previsibilidade).
"""

# ╔═╡ 1fa97ac7-d069-4f15-853d-0dfbe3c8ac30
let
    pessoa_teste = Pessoa("João", 25, "joao@exemplo.com")
    try
        pessoa_teste.idade = 26
        "conseguiu alterar (inesperado)"
    catch e
        "erro esperado: campos de Pessoa são imutáveis -> $(typeof(e))"
    end
end

# ╔═╡ df73a632-7515-4985-956c-760ac7c7227d
md"""
### Tarefa 11.4 — O que pode mudar: tipos mutáveis

**No Pluto:**
- Defina uma `ContaBancaria` como tipo mutável (`mutable struct`).
- Crie uma conta e altere o saldo depois de criada.
"""

# ╔═╡ 8b22fe53-e251-47ef-ae5f-4cf508e03ef1
begin
    mutable struct ContaBancaria
        titular::String
        saldo::Float64
        ativa::Bool
    end
    conta = ContaBancaria("Maria Silva", 1000.0, true)
    conta.saldo = 1500.0
    conta.ativa = false
    (conta.saldo, conta.ativa)
end

# ╔═╡ Cell order:
# ╟─434f8658-3f68-49a9-87e8-812c46b731ab
# ╟─da712dd8-8141-47e4-95ad-8bfa5f0c4be4
# ╠═8aad10c5-424c-4755-9bc0-6d9e3e9ccbfb
# ╟─59d63040-50d7-4cfc-9da4-0184e4f00e0d
# ╠═c4070559-2205-46ae-a939-f01ec1823e41
# ╟─a3d58b8e-f8b6-4659-91f4-6b75ea60f022
# ╠═1fa97ac7-d069-4f15-853d-0dfbe3c8ac30
# ╟─df73a632-7515-4985-956c-760ac7c7227d
# ╠═8b22fe53-e251-47ef-ae5f-4cf508e03ef1
