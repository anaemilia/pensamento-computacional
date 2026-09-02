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
## Introdução: entrada, processo e saída

**Situação:**

Uma frase no presente é uma **entrada**. Podemos fazer um **processo** (transformar o verbo) para chegar a uma **saída**: a frase no passado.

*"Hoje eu jogo futebol"* (entrada, presente) → processo: colocar o verbo no pretérito perfeito → *"Ontem eu ___ futebol"* (saída).
"""

# ╔═╡ 00000006-0000-4000-8000-000000000000
md"""
### 🔎 Onde está o conceito (entrada, processo, saída)?

- **Entrada:** a frase no presente — *"Hoje eu jogo futebol"*.
- **Processo:** a transformação do verbo para o pretérito perfeito.
- **Saída:** a frase no passado — *"Ontem eu joguei futebol"*.
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
md"Digite a palavra que completa a frase no passado:"

# ╔═╡ 00000004-0000-4000-8000-000000000000
@bind verboNoPassado TextField(default="")

# ╔═╡ 00000005-0000-4000-8000-000000000000
if lowercase(strip(verboNoPassado)) == "joguei"
    HTML("<div style='color:#1a7a3c;font-weight:600;padding:8px;background:#eaf7ee;border-radius:6px;'>✅ Isso mesmo! O processo transformou \"jogo\" em \"joguei\".</div>")
else
    HTML("<div style='color:#b3261e;font-weight:600;padding:8px;background:#fbeceb;border-radius:6px;'>❌ Ainda não — o processo aqui muda o verbo do presente para o pretérito perfeito.</div>")
end

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000006-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
# ╠═00000004-0000-4000-8000-000000000000
# ╠═00000005-0000-4000-8000-000000000000
