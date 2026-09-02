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
## Introdução: entrada, processo e saída

**Situação:**

Um fato histórico é uma **entrada** de informação. Podemos fazer um **processo** com ela (um cálculo) para chegar a uma **saída** (uma nova informação).

A Independência do Brasil foi proclamada em 1822 (entrada). Estamos em 2026. Quantos anos se passaram desde a Independência até hoje (saída)?
"""

# ╔═╡ 00000006-0000-4000-8000-000000000000
md"""
### 🔎 Onde está o conceito (entrada, processo, saída)?

- **Entrada:** o ano do fato histórico — a Independência do Brasil, em 1822.
- **Processo:** a subtração ano atual − ano do fato (2026 − 1822).
- **Saída:** o número de anos desde a Independência.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
md"Digite o número de anos:"

# ╔═╡ 00000004-0000-4000-8000-000000000000
@bind anosDesdeAIndependencia NumberField(0:500, default=0)

# ╔═╡ 00000005-0000-4000-8000-000000000000
if anosDesdeAIndependencia == 2026 - 1822
    HTML("<div style='color:#1a7a3c;font-weight:600;padding:8px;background:#eaf7ee;border-radius:6px;'>✅ Isso mesmo! 2026 − 1822 = 204 anos.</div>")
else
    HTML("<div style='color:#b3261e;font-weight:600;padding:8px;background:#fbeceb;border-radius:6px;'>❌ Ainda não — o processo aqui é uma subtração: ano atual menos ano do fato.</div>")
end

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000006-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
# ╠═00000004-0000-4000-8000-000000000000
# ╠═00000005-0000-4000-8000-000000000000
