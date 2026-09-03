### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade colaborativa (duplas) — Ensino Fundamental
## Dinheiro de Vitor e Luana

**Situação-problema:**

Vitor tem 9 reais a mais que Luana. Se Luana tem 18 reais, quantos reais Vitor tem?

*Categoria 3 — Comparação de medidas (referendo desconhecido) (Vergnaud)*

👥 **Trabalho em dupla:** um(a) colega faz o Papel A, o(a) outro(a) faz o Papel B. No fim, comparem as respostas antes de conferir.
"""

# ╔═╡ 0000a001-0000-4000-8000-000000000000
md"""
### 🅰️ Papel A — quem estima

Antes de calcular: dê um "chute" educado — quantos reais você imagina que Vitor tem? Diga em voz alta para o Papel B.
"""

# ╔═╡ 00000002-0000-4000-8000-000000000000
HTML("""
<svg viewBox="0 0 480 130" width="100%" style="max-width:480px" xmlns="http://www.w3.org/2000/svg">
    <rect x="20" y="40" width="140" height="56" rx="8" fill="#eef2f6" stroke="#4a5a6a" stroke-width="1.5"/>
    <text x="90" y="62" text-anchor="middle" font-size="13" fill="#1a2733" font-family="sans-serif" font-weight="600">R\$18</text>
    <text x="90" y="80" text-anchor="middle" font-size="11" fill="#3a4a58" font-family="sans-serif">Dinheiro de Luana</text>
    <rect x="320" y="40" width="140" height="56" rx="8" fill="#dce8f0" stroke="#1f5c85" stroke-width="1.5"/>
    <text x="390" y="62" text-anchor="middle" font-size="13" fill="#0e3550" font-family="sans-serif" font-weight="700">R\$27</text>
    <text x="390" y="80" text-anchor="middle" font-size="11" fill="#0e3550" font-family="sans-serif">Dinheiro de Vitor (?)</text>
    <line x1="166" y1="68" x2="306" y2="68" stroke="#8a97a3" stroke-width="1.5" marker-end="url(#arrow)"/>
    <text x="240" y="58" text-anchor="middle" font-size="12" fill="#5a3a1a" font-family="sans-serif" font-weight="700">+9</text>
    <text x="240" y="114" text-anchor="middle" font-size="11" fill="#5a3a1a" font-family="sans-serif">a mais que Luana</text>
    <defs><marker id="arrow" markerWidth="8" markerHeight="8" refX="6" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 Z" fill="#8a97a3"/></marker></defs>
  </svg>
""")

# ╔═╡ 0000a003-0000-4000-8000-000000000000
md"""
### 🅱️ Papel B — quem calcula

Sua tarefa é registrar os dois valores conhecidos e somar usando código — lembre-se que o computador não sabe o que é "dinheiro", só soma números.

Executem juntos as células de código abaixo, uma por vez, e comparem o resultado com a estimativa do Papel A.
"""

# ╔═╡ 0000b001-0000-4000-8000-000000000000
md"""
Papel B guarda o dinheiro de Luana.
"""

# ╔═╡ 00000004-0000-4000-8000-000000000000
dinheiroDeLuana = 18

# ╔═╡ 0000b002-0000-4000-8000-000000000000
md"""
Papel B guarda a diferença.
"""

# ╔═╡ 00000005-0000-4000-8000-000000000000
diferencaDeVitorAMais = 9

# ╔═╡ 0000b003-0000-4000-8000-000000000000
md"""
Papel B define a função soma e calcula o dinheiro de Vitor.
"""

# ╔═╡ 00000006-0000-4000-8000-000000000000
soma(dinheiroDeLuana, diferencaDeVitorAMais) = dinheiroDeLuana + diferencaDeVitorAMais

dinheiroDeVitor = soma(dinheiroDeLuana, diferencaDeVitorAMais)

# ╔═╡ 0000d003-0000-4000-8000-000000000000
if @isdefined(dinheiroDeVitor)
    if dinheiroDeVitor == 27
        HTML("<div style='color:#1a7a3c;font-weight:600;padding:8px;background:#eaf7ee;border-radius:6px;'>✅ Isso mesmo! dinheiroDeVitor = 27</div>")
    else
        HTML("<div style='color:#b3261e;font-weight:600;padding:8px;background:#fbeceb;border-radius:6px;'>❌ Ainda não — revise o cálculo de dinheiroDeVitor</div>")
    end
else
    HTML("<div style='color:#8a97a3;padding:8px;'>Aguardando você definir dinheiroDeVitor...</div>")
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
