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
## Pensamento Dedutivo — a área da mesa

**Situação:**

Regra geral conhecida: **a área de um retângulo é base × altura.**

Uma mesa retangular mede 2 metros de base e 3 metros de altura.

Aplicando a regra dedutivamente, qual é a área da mesa, em m²?
"""

# ╔═╡ 00000006-0000-4000-8000-000000000000
md"""
### 🔎 Onde está o conceito?

- **Regra geral (premissa):** área do retângulo = base × altura.
- **Caso particular:** a mesa, com base 2 m e altura 3 m.
- **Conclusão:** aplicando a regra ao caso, chegamos à área da mesa.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
md"Digite sua resposta:"

# ╔═╡ 00000004-0000-4000-8000-000000000000
@bind areaDaMesa NumberField(0:100, default=0)

# ╔═╡ 00000005-0000-4000-8000-000000000000
if areaDaMesa == 2 * 3
    HTML("<div style='color:#1a7a3c;font-weight:600;padding:8px;background:#eaf7ee;border-radius:6px;'>✅ Isso mesmo! 2 m × 3 m = 6 m².</div>")
else
    HTML("<div style='color:#b3261e;font-weight:600;padding:8px;background:#fbeceb;border-radius:6px;'>❌ Ainda não — aplique a regra geral: base vezes altura.</div>")
end

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000006-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
# ╠═00000004-0000-4000-8000-000000000000
# ╠═00000005-0000-4000-8000-000000000000
