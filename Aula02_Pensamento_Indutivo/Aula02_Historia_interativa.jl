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
## Pensamento Indutivo

**Situação:**

Observe dois casos e o padrão entre eles:

- O Brasil foi Colônia de 1500 a 1822: **1822 − 1500 = 322 anos**.
- O Brasil foi Império de 1822 a 1889: **1889 − 1822 = 67 anos**.

O padrão (regra) que você pode *induzir* desses casos é: **duração = ano final − ano inicial**.

Agora aplique essa mesma regra: o Brasil foi República Velha de 1889 a 1930. Quantos anos durou a República Velha?
"""

# ╔═╡ 00000006-0000-4000-8000-000000000000
md"""
### 🔎 Onde está o conceito (pensamento indutivo)?

- **Casos observados:** duração da Colônia (1822 − 1500 = 322) e do Império (1889 − 1822 = 67).
- **Padrão induzido:** duração = ano final − ano inicial.
- **Aplicação a um novo caso:** a duração da República Velha (1889 a 1930), usando o mesmo padrão.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
md"Digite a duração em anos:"

# ╔═╡ 00000004-0000-4000-8000-000000000000
@bind duracaoRepublicaVelha NumberField(0:200, default=0)

# ╔═╡ 00000005-0000-4000-8000-000000000000
if duracaoRepublicaVelha == 1930 - 1889
    HTML("<div style='color:#1a7a3c;font-weight:600;padding:8px;background:#eaf7ee;border-radius:6px;'>✅ Isso mesmo! 1930 − 1889 = 41 anos.</div>")
else
    HTML("<div style='color:#b3261e;font-weight:600;padding:8px;background:#fbeceb;border-radius:6px;'>❌ Ainda não — aplique a regra induzida: ano final menos ano inicial.</div>")
end

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000006-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
# ╠═00000004-0000-4000-8000-000000000000
# ╠═00000005-0000-4000-8000-000000000000
