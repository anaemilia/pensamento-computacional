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
## Pensamento Indutivo — o crescimento da planta

**Situação:**

Uma planta cresce sempre 2 cm por semana. Observe os casos: na semana 1 ela tem 2 cm de crescimento acumulado; na semana 2, 4 cm.

O padrão (regra) que você pode *induzir* é: **crescimento acumulado = número de semanas × 2**.

Aplicando o padrão induzido, quantos cm de crescimento acumulado a planta terá na semana 5?
"""

# ╔═╡ 00000006-0000-4000-8000-000000000000
md"""
### 🔎 Onde está o conceito?

- **Casos observados:** semana 1 → 2 cm; semana 2 → 4 cm.
- **Padrão induzido:** crescimento = semanas × 2.
- **Aplicação a um novo caso:** semana 5, usando o mesmo padrão.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
md"Digite sua resposta:"

# ╔═╡ 00000004-0000-4000-8000-000000000000
@bind crescimentoNaSemana5 NumberField(0:100, default=0)

# ╔═╡ 00000005-0000-4000-8000-000000000000
if crescimentoNaSemana5 == 5 * 2
    HTML("<div style='color:#1a7a3c;font-weight:600;padding:8px;background:#eaf7ee;border-radius:6px;'>✅ Isso mesmo! 5 × 2 = 10 cm.</div>")
else
    HTML("<div style='color:#b3261e;font-weight:600;padding:8px;background:#fbeceb;border-radius:6px;'>❌ Ainda não — aplique o padrão induzido: número de semanas vezes 2.</div>")
end

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000006-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
# ╠═00000004-0000-4000-8000-000000000000
# ╠═00000005-0000-4000-8000-000000000000
