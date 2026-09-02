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
## Introdução: entrada, processo e saída

**Situação:**

Um fato geográfico é uma **entrada** de informação. Podemos fazer um **processo** com ela (um cálculo) para chegar a uma **saída**.

Salvador fica na Bahia e usa o fuso horário UTC−3 (entrada). Manaus fica no Amazonas e usa o fuso horário UTC−4, ou seja, 1 hora a menos que Salvador (processo). Se em Salvador são 15h, que horas são em Manaus (saída)?
"""

# ╔═╡ 00000006-0000-4000-8000-000000000000
md"""
### 🔎 Onde está o conceito (entrada, processo, saída)?

- **Entrada:** a hora em Salvador (15h) e a diferença de fuso entre Salvador e Manaus.
- **Processo:** a subtração de 1 hora, referente à diferença de fuso.
- **Saída:** a hora correspondente em Manaus.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
md"Digite a hora em Manaus (0 a 23):"

# ╔═╡ 00000004-0000-4000-8000-000000000000
@bind horaEmManaus NumberField(0:23, default=0)

# ╔═╡ 00000005-0000-4000-8000-000000000000
if horaEmManaus == 15 - 1
    HTML("<div style='color:#1a7a3c;font-weight:600;padding:8px;background:#eaf7ee;border-radius:6px;'>✅ Isso mesmo! 15h − 1h = 14h em Manaus.</div>")
else
    HTML("<div style='color:#b3261e;font-weight:600;padding:8px;background:#fbeceb;border-radius:6px;'>❌ Ainda não — o processo aqui é uma subtração: hora de Salvador menos 1 hora de diferença de fuso.</div>")
end

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000006-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
# ╠═00000004-0000-4000-8000-000000000000
# ╠═00000005-0000-4000-8000-000000000000
