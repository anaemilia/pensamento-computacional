### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

macro bind(def, element)
    quote
        local iv = try Base.loaded_modules[Base.PkgId(Base.UUID("6e696c72-6542-2067-7265-42206c756150"), "AbstractPlutoDingetjes")].Bonds.initial_value catch; b -> missing; end
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(iv, el) ? iv(el) : missing
        el
    end
end

# ╔═╡ 00000001-0000-4000-8000-000000000000
using PlutoUI

# ╔═╡ 00000002-0000-4000-8000-000000000000
md"""
# Atividade — Matemática/Ciências
## Complexidade de algoritmos — a fórmula de Gauss

**Situação:**

Somar 1+2+3+...+10 um a um é um algoritmo lento à medida que os números crescem. A fórmula n×(n+1)/2, com n=10, chega ao mesmo resultado num único passo, independente do tamanho de n.

Usando a fórmula, qual é o resultado de 1+2+...+10?
"""

# ╔═╡ 00000006-0000-4000-8000-000000000000
md"""
### 🔎 Onde está o conceito?

- **Algoritmo lento:** somar um a um, custo que cresce com n.
- **Algoritmo rápido (fórmula):** n×(n+1)/2, custo constante.
- **Aplicação:** n = 10.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
md"Digite sua resposta:"

# ╔═╡ 00000004-0000-4000-8000-000000000000
@bind somaDeUmA10 NumberField(0:200, default=0)

# ╔═╡ 00000005-0000-4000-8000-000000000000
if somaDeUmA10 == 10 * 11 ÷ 2
    HTML("<div style='color:#1a7a3c;font-weight:600;padding:8px;background:#eaf7ee;border-radius:6px;'>✅ Isso mesmo! 10 × 11 ÷ 2 = 55.</div>")
else
    HTML("<div style='color:#b3261e;font-weight:600;padding:8px;background:#fbeceb;border-radius:6px;'>❌ Ainda não — aplique a fórmula: n × (n+1) ÷ 2, com n = 10.</div>")
end

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000006-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
# ╠═00000004-0000-4000-8000-000000000000
# ╠═00000005-0000-4000-8000-000000000000
