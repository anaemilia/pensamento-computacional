### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the values of interactive components are the same as their initial value.
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
## O tempo verbal correto

**Pergunta:**

Complete a frase com o tempo verbal correto do verbo **jogar**:

*"Ontem eu ___ futebol com meus amigos."*
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
md"Digite a palavra que completa a frase:"

# ╔═╡ 00000004-0000-4000-8000-000000000000
@bind verboCompletado TextField(default="")

# ╔═╡ 00000005-0000-4000-8000-000000000000
if lowercase(strip(verboCompletado)) == "joguei"
    HTML("<div style='color:#1a7a3c;font-weight:600;padding:8px;background:#eaf7ee;border-radius:6px;'>✅ Isso mesmo! \"Joguei\" está no pretérito perfeito do indicativo, tempo usado para uma ação concluída no passado (\"ontem\").</div>")
else
    HTML("<div style='color:#b3261e;font-weight:600;padding:8px;background:#fbeceb;border-radius:6px;'>❌ Ainda não — a frase fala de \"ontem\", uma ação já concluída. Que tempo verbal indica isso?</div>")
end

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
# ╠═00000004-0000-4000-8000-000000000000
# ╠═00000005-0000-4000-8000-000000000000
