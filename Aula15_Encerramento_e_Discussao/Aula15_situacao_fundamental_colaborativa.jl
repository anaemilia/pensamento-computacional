### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade colaborativa (duplas) — Ensino Fundamental
## Alturas de Lia, Bea e Cau

**Situação-problema:**

Lia é 4 cm mais alta que Bea. Bea é 6 cm mais baixa que Cau (diferença de −6 em relação a Cau). Qual é a relação entre a altura de Lia e a de Cau?

*Categoria 6 — Composição de relações (Vergnaud)*

👥 **Trabalho em dupla:** um(a) colega faz o Papel A, o(a) outro(a) faz o Papel B. No fim, comparem as respostas antes de conferir.
"""

# ╔═╡ 0000a001-0000-4000-8000-000000000000
md"""
### 🅰️ Papel A — quem estima

Antes de calcular: dê um "chute" educado — Lia é mais alta ou mais baixa que Cau, e por quantos cm? Diga em voz alta para o Papel B.
"""

# ╔═╡ 00000002-0000-4000-8000-000000000000
HTML("""
<svg viewBox="0 0 480 130" width="100%" style="max-width:480px" xmlns="http://www.w3.org/2000/svg">
    <rect x="20" y="40" width="140" height="56" rx="8" fill="#eef2f6" stroke="#4a5a6a" stroke-width="1.5"/>
    <text x="90" y="62" text-anchor="middle" font-size="13" fill="#1a2733" font-family="sans-serif" font-weight="600">+4</text>
    <text x="90" y="80" text-anchor="middle" font-size="11" fill="#3a4a58" font-family="sans-serif">Lia em relação a Bea</text>
    <rect x="320" y="40" width="140" height="56" rx="8" fill="#dce8f0" stroke="#1f5c85" stroke-width="1.5"/>
    <text x="390" y="62" text-anchor="middle" font-size="13" fill="#0e3550" font-family="sans-serif" font-weight="700">−2</text>
    <text x="390" y="80" text-anchor="middle" font-size="11" fill="#0e3550" font-family="sans-serif">Lia em relação a Cau (?)</text>
    <line x1="166" y1="68" x2="306" y2="68" stroke="#8a97a3" stroke-width="1.5" marker-end="url(#arrow)"/>
    <text x="240" y="58" text-anchor="middle" font-size="12" fill="#5a3a1a" font-family="sans-serif" font-weight="700">−6</text>
    <text x="240" y="114" text-anchor="middle" font-size="11" fill="#5a3a1a" font-family="sans-serif">Bea em relação a Cau</text>
    <defs><marker id="arrow" markerWidth="8" markerHeight="8" refX="6" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 Z" fill="#8a97a3"/></marker></defs>
  </svg>
""")

# ╔═╡ 0000a003-0000-4000-8000-000000000000
md"""
### 🅱️ Papel B — quem calcula

Sua tarefa é registrar as duas relações conhecidas e compô-las usando código.

Executem juntos as células de código abaixo, uma por vez, e comparem o resultado com a estimativa do Papel A.
"""

# ╔═╡ 0000b001-0000-4000-8000-000000000000
md"""
Papel B guarda a diferença entre Lia e Bea.
"""

# ╔═╡ 00000004-0000-4000-8000-000000000000
diferencaDeLiaSobreBea = 4

# ╔═╡ 0000b002-0000-4000-8000-000000000000
md"""
Papel B guarda a diferença entre Bea e Cau (negativa).
"""

# ╔═╡ 00000005-0000-4000-8000-000000000000
diferencaDeBeaSobreCau = -6

# ╔═╡ 0000b003-0000-4000-8000-000000000000
md"""
Papel B define a função soma e compõe as duas relações numa relação final.
"""

# ╔═╡ 00000006-0000-4000-8000-000000000000
soma(diferencaDeLiaSobreBea, diferencaDeBeaSobreCau) = diferencaDeLiaSobreBea + diferencaDeBeaSobreCau

diferencaDeLiaSobreCau = soma(diferencaDeLiaSobreBea, diferencaDeBeaSobreCau)

# ╔═╡ 0000d003-0000-4000-8000-000000000000
if @isdefined(diferencaDeLiaSobreCau)
    if diferencaDeLiaSobreCau == -2
        HTML("<div style='color:#1a7a3c;font-weight:600;padding:8px;background:#eaf7ee;border-radius:6px;'>✅ Isso mesmo! diferencaDeLiaSobreCau = -2</div>")
    else
        HTML("<div style='color:#b3261e;font-weight:600;padding:8px;background:#fbeceb;border-radius:6px;'>❌ Ainda não — revise o cálculo de diferencaDeLiaSobreCau</div>")
    end
else
    HTML("<div style='color:#8a97a3;padding:8px;'>Aguardando você definir diferencaDeLiaSobreCau...</div>")
end

# ╔═╡ 0000e001-0000-4000-8000-000000000000
md"""
### 💬 Para a dupla discutir

A estimativa do Papel A ficou perto do resultado calculado pelo Papel B? O que fez a estimativa acertar ou errar?
"""

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═0000a001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═0000a003-0000-4000-8000-000000000000
# ╠═0000b001-0000-4000-8000-000000000000
# ╠═00000004-0000-4000-8000-000000000000
# ╠═0000b002-0000-4000-8000-000000000000
# ╠═00000005-0000-4000-8000-000000000000
# ╠═0000b003-0000-4000-8000-000000000000
# ╠═00000006-0000-4000-8000-000000000000
# ╠═0000d003-0000-4000-8000-000000000000
# ╠═0000e001-0000-4000-8000-000000000000
