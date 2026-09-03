### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade com apoio — Ensino Fundamental
## Borrachas de Marina — complexidade de algoritmos (com apoio)

**Situação-problema:**

Marina tem borrachas de cores quentes (4 azuis + 3 amarelas = 7) e de cores frias (2 verdes + 5 vermelhas = 7). Quantas borrachas Marina tem ao todo?

*Categoria 1 — Composição de medidas (agrupada) (Vergnaud)*
"""

# ╔═╡ 0000c001-0000-4000-8000-000000000000
md"""
🪜 **Dica 1**

Quais são os dois grupos conhecidos — cores quentes e cores frias? Onde aparecem na frase?
"""

# ╔═╡ 0000c002-0000-4000-8000-000000000000
md"""
🪜 **Dica 2**

Cada grupo já foi somado por dentro. Que operação combina os dois grupos num total?
"""

# ╔═╡ 0000c003-0000-4000-8000-000000000000
md"""
🪜 **Dica 3**

A operação certa é a soma: um grupo mais o outro. É exatamente isso que o código abaixo faz — comparar essa soma direta com a soma de um array é o que torna os algoritmos mais ou menos complexos.
"""

# ╔═╡ 00000002-0000-4000-8000-000000000000
HTML("""
<svg viewBox="0 0 480 130" width="100%" style="max-width:480px" xmlns="http://www.w3.org/2000/svg">
    <rect x="20" y="40" width="140" height="56" rx="8" fill="#eef2f6" stroke="#4a5a6a" stroke-width="1.5"/>
    <text x="90" y="62" text-anchor="middle" font-size="13" fill="#1a2733" font-family="sans-serif" font-weight="600">7</text>
    <text x="90" y="80" text-anchor="middle" font-size="11" fill="#3a4a58" font-family="sans-serif">Cores quentes (4+3)</text>
    <rect x="320" y="40" width="140" height="56" rx="8" fill="#dce8f0" stroke="#1f5c85" stroke-width="1.5"/>
    <text x="390" y="62" text-anchor="middle" font-size="13" fill="#0e3550" font-family="sans-serif" font-weight="700">14</text>
    <text x="390" y="80" text-anchor="middle" font-size="11" fill="#0e3550" font-family="sans-serif">Total de borrachas (?)</text>
    <line x1="166" y1="68" x2="306" y2="68" stroke="#8a97a3" stroke-width="1.5" marker-end="url(#arrow)"/>
    <text x="240" y="58" text-anchor="middle" font-size="12" fill="#5a3a1a" font-family="sans-serif" font-weight="700">+7</text>
    <text x="240" y="114" text-anchor="middle" font-size="11" fill="#5a3a1a" font-family="sans-serif">cores frias (2+5)</text>
    <defs><marker id="arrow" markerWidth="8" markerHeight="8" refX="6" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 Z" fill="#8a97a3"/></marker></defs>
  </svg>
""")

# ╔═╡ 00000003-0000-4000-8000-000000000000
md"""
**Pensamento Computacional em jogo — dois algoritmos, mesma resposta, complexidades diferentes; com apoio a cada passo.** Execute as células de código abaixo, uma por vez.
"""

# ╔═╡ 0000b001-0000-4000-8000-000000000000
md"""
Passo 1 (usa a Dica 1): guardamos o grupo de cores quentes (4+3).
"""

# ╔═╡ 00000004-0000-4000-8000-000000000000
qtdBorrachasQuentes = 7   # passo 1

# ╔═╡ 0000b002-0000-4000-8000-000000000000
md"""
Passo 2 (usa a Dica 1): guardamos o grupo de cores frias (2+5).
"""

# ╔═╡ 00000005-0000-4000-8000-000000000000
qtdBorrachasFrias = 7   # passo 2

# ╔═╡ 0000b003-0000-4000-8000-000000000000
md"""
Passo 3 (usa as Dicas 2 e 3): definimos a função soma para somar os dois grupos.
"""

# ╔═╡ 00000006-0000-4000-8000-000000000000
soma(qtdBorrachasQuentes, qtdBorrachasFrias) = qtdBorrachasQuentes + qtdBorrachasFrias   # passo 3

qtdTotalDeBorrachas = soma(qtdBorrachasQuentes, qtdBorrachasFrias)

# ╔═╡ 0000d003-0000-4000-8000-000000000000
if @isdefined(qtdTotalDeBorrachas)
    if qtdTotalDeBorrachas == 14
        HTML("<div style='color:#1a7a3c;font-weight:600;padding:8px;background:#eaf7ee;border-radius:6px;'>✅ Isso mesmo! qtdTotalDeBorrachas = 14</div>")
    else
        HTML("<div style='color:#b3261e;font-weight:600;padding:8px;background:#fbeceb;border-radius:6px;'>❌ Ainda não — revise o cálculo de qtdTotalDeBorrachas</div>")
    end
else
    HTML("<div style='color:#8a97a3;padding:8px;'>Aguardando você definir qtdTotalDeBorrachas...</div>")
end

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═0000c001-0000-4000-8000-000000000000
# ╠═0000c002-0000-4000-8000-000000000000
# ╠═0000c003-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
# ╠═0000b001-0000-4000-8000-000000000000
# ╠═00000004-0000-4000-8000-000000000000
# ╠═0000b002-0000-4000-8000-000000000000
# ╠═00000005-0000-4000-8000-000000000000
# ╠═0000b003-0000-4000-8000-000000000000
# ╠═00000006-0000-4000-8000-000000000000
# ╠═0000d003-0000-4000-8000-000000000000
