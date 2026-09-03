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
## Encerramento — comparando idades

**Situação:**

Ana é 3 anos mais velha que Beto. Beto é 5 anos mais jovem que Caio (ou seja, Beto tem uma diferença de −5 em relação a Caio).

Compondo as duas relações, qual é a diferença de idade entre Ana e Caio?
"""

# ╔═╡ 00000006-0000-4000-8000-000000000000
md"""
### 🔎 Onde está o conceito?

- **Relação 1:** Ana em relação a Beto, +3.
- **Relação 2:** Beto em relação a Caio, −5.
- **Composição:** somar as duas relações conhecidas revela a relação final entre Ana e Caio.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
md"Digite sua resposta:"

# ╔═╡ 00000004-0000-4000-8000-000000000000
@bind diferencaEntreAnaECaio NumberField(-50:50, default=0)

# ╔═╡ 00000005-0000-4000-8000-000000000000
if diferencaEntreAnaECaio == 3 + (-5)
    HTML("<div style='color:#1a7a3c;font-weight:600;padding:8px;background:#eaf7ee;border-radius:6px;'>✅ Isso mesmo! 3 + (−5) = −2: Ana tem 2 anos a menos que Caio.</div>")
else
    HTML("<div style='color:#b3261e;font-weight:600;padding:8px;background:#fbeceb;border-radius:6px;'>❌ Ainda não — some as duas diferenças conhecidas (uma delas negativa).</div>")
end

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000006-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
# ╠═00000004-0000-4000-8000-000000000000
# ╠═00000005-0000-4000-8000-000000000000
