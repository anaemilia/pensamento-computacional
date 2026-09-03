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
## Limites da computação — o saldo do cofrinho

**Situação:**

Uma conta tem R\$45 guardados. Ela recebe um bônus de R\$10. O computador soma os números perfeitamente, mas não entende que "R\$" representa dinheiro real — ele só manipula os valores que damos a ele.

Qual é o novo saldo, em reais?
"""

# ╔═╡ 00000006-0000-4000-8000-000000000000
md"""
### 🔎 Onde está o conceito?

- **O que o computador entende:** os números 45 e 10, e a operação de soma.
- **O que o computador NÃO entende:** o que é "dinheiro" ou o que ele significa para uma pessoa.
- **Cálculo:** apenas a soma dos dois números.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
md"Digite sua resposta:"

# ╔═╡ 00000004-0000-4000-8000-000000000000
@bind novoSaldo NumberField(0:1000, default=0)

# ╔═╡ 00000005-0000-4000-8000-000000000000
if novoSaldo == 45 + 10
    HTML("<div style='color:#1a7a3c;font-weight:600;padding:8px;background:#eaf7ee;border-radius:6px;'>✅ Isso mesmo! R\$45 + R\$10 = R\$55.</div>")
else
    HTML("<div style='color:#b3261e;font-weight:600;padding:8px;background:#fbeceb;border-radius:6px;'>❌ Ainda não — some o saldo inicial ao bônus recebido.</div>")
end

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000006-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
# ╠═00000004-0000-4000-8000-000000000000
# ╠═00000005-0000-4000-8000-000000000000
