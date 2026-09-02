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
# Atividade — Geografia
## Pensamento Indutivo

**Situação:**

Observe dois casos e o padrão entre eles:

- São Paulo (SP) usa o fuso UTC−3. Rio Branco (AC) usa UTC−5: **2 horas a menos**.
- Salvador (BA) usa UTC−3. Manaus (AM) usa UTC−4: **1 hora a menos**.

O padrão (regra) que você pode *induzir* é: **hora da cidade B = hora de referência − diferença de fuso**.

Agora aplique essa regra: se em São Paulo são 10h, e Rio Branco tem 2 horas a menos, que horas são em Rio Branco?
"""

# ╔═╡ 00000006-0000-4000-8000-000000000000
md"""
### 🔎 Onde está o conceito (pensamento indutivo)?

- **Casos observados:** São Paulo → Rio Branco (2h a menos) e Salvador → Manaus (1h a menos).
- **Padrão induzido:** hora da cidade B = hora de referência − diferença de fuso.
- **Aplicação a um novo caso:** São Paulo (10h) → Rio Branco, usando o mesmo padrão.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
md"Digite a hora em Rio Branco (0 a 23):"

# ╔═╡ 00000004-0000-4000-8000-000000000000
@bind horaEmRioBranco NumberField(0:23, default=0)

# ╔═╡ 00000005-0000-4000-8000-000000000000
if horaEmRioBranco == 10 - 2
    HTML("<div style='color:#1a7a3c;font-weight:600;padding:8px;background:#eaf7ee;border-radius:6px;'>✅ Isso mesmo! 10h − 2h = 8h em Rio Branco.</div>")
else
    HTML("<div style='color:#b3261e;font-weight:600;padding:8px;background:#fbeceb;border-radius:6px;'>❌ Ainda não — aplique a regra induzida: hora de referência menos a diferença de fuso.</div>")
end

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000006-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
# ╠═00000004-0000-4000-8000-000000000000
# ╠═00000005-0000-4000-8000-000000000000
