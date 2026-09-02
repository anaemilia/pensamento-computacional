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
# Atividade — História
## Pensamento Dedutivo

**Situação:**

Regra geral conhecida: **um século é o número (ano − 1) dividido por 100, arredondado para cima.**

Aplique essa regra dedutivamente: em que século estamos, sendo o ano atual 2026?
"""

# ╔═╡ 00000006-0000-4000-8000-000000000000
md"""
### 🔎 Onde está o conceito (pensamento dedutivo)?

- **Regra geral (premissa):** século = (ano − 1) ÷ 100, arredondado para cima.
- **Caso particular:** o ano atual, 2026.
- **Conclusão:** aplicando a regra ao caso, chegamos ao século 21.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
md"Digite o número do século:"

# ╔═╡ 00000004-0000-4000-8000-000000000000
@bind seculoAtual NumberField(1:30, default=1)

# ╔═╡ 00000005-0000-4000-8000-000000000000
if seculoAtual == ceil(Int, (2026 - 1) / 100)
    HTML("<div style='color:#1a7a3c;font-weight:600;padding:8px;background:#eaf7ee;border-radius:6px;'>✅ Isso mesmo! Estamos no século 21.</div>")
else
    HTML("<div style='color:#b3261e;font-weight:600;padding:8px;background:#fbeceb;border-radius:6px;'>❌ Ainda não — aplique a regra geral: (ano − 1) ÷ 100, arredondado para cima.</div>")
end

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000006-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
# ╠═00000004-0000-4000-8000-000000000000
# ╠═00000005-0000-4000-8000-000000000000
