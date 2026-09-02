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
# Atividade — Português/Literatura
## Pensamento Dedutivo

**Situação:**

Regra geral conhecida: **o plural de palavras terminadas em vogal se forma acrescentando "s".**

Aplique essa regra dedutivamente: qual é o plural de "caderno"?
"""

# ╔═╡ 00000006-0000-4000-8000-000000000000
md"""
### 🔎 Onde está o conceito (pensamento dedutivo)?

- **Regra geral (premissa):** o plural de palavras terminadas em vogal se forma acrescentando "s".
- **Caso particular:** a palavra "caderno", terminada em vogal.
- **Conclusão:** aplicando a regra ao caso, chegamos a "cadernos".
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
md"Digite a palavra no plural:"

# ╔═╡ 00000004-0000-4000-8000-000000000000
@bind pluralDeCaderno TextField(default="")

# ╔═╡ 00000005-0000-4000-8000-000000000000
if lowercase(strip(pluralDeCaderno)) == "cadernos"
    HTML("<div style='color:#1a7a3c;font-weight:600;padding:8px;background:#eaf7ee;border-radius:6px;'>✅ Isso mesmo! Aplicando a regra: caderno + s = cadernos.</div>")
else
    HTML("<div style='color:#b3261e;font-weight:600;padding:8px;background:#fbeceb;border-radius:6px;'>❌ Ainda não — aplique a regra geral: acrescente \"s\" à palavra.</div>")
end

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000006-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
# ╠═00000004-0000-4000-8000-000000000000
# ╠═00000005-0000-4000-8000-000000000000
