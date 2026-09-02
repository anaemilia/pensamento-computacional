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
## Pensamento Indutivo

**Situação:**

Observe estes verbos regulares no pretérito perfeito:

- jogar → jog**uei**
- andar → and**ei**
- falar → fal**ei**

O padrão (regra) que você pode *induzir* é: **verbos terminados em "-ar" trocam o "-ar" por "-ei" no pretérito perfeito (eu)**.

Agora aplique essa regra ao verbo **estudar**: qual é a forma no pretérito perfeito ("eu ___")?
"""

# ╔═╡ 00000006-0000-4000-8000-000000000000
md"""
### 🔎 Onde está o conceito (pensamento indutivo)?

- **Casos observados:** jogar → joguei, andar → andei, falar → falei.
- **Padrão induzido:** verbos terminados em "-ar" trocam o "-ar" por "-ei" no pretérito perfeito (eu).
- **Aplicação a um novo caso:** estudar → estudei, usando o mesmo padrão.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
md"Digite a palavra:"

# ╔═╡ 00000004-0000-4000-8000-000000000000
@bind formaDeEstudar TextField(default="")

# ╔═╡ 00000005-0000-4000-8000-000000000000
if lowercase(strip(formaDeEstudar)) == "estudei"
    HTML("<div style='color:#1a7a3c;font-weight:600;padding:8px;background:#eaf7ee;border-radius:6px;'>✅ Isso mesmo! Aplicando a regra: estud + ei = estudei.</div>")
else
    HTML("<div style='color:#b3261e;font-weight:600;padding:8px;background:#fbeceb;border-radius:6px;'>❌ Ainda não — troque o \"-ar\" de \"estudar\" por \"-ei\", seguindo o padrão dos exemplos.</div>")
end

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000006-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
# ╠═00000004-0000-4000-8000-000000000000
# ╠═00000005-0000-4000-8000-000000000000
