### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade com apoio — Ensino Fundamental
## Bolinhas de gude de João — ações ligadas a categorias (com apoio)

**Situação-problema:**

João jogou duas partidas de bila. Na segunda ele ganhou 12 bolas. Ao final das duas partidas ele tinha ganhado 22 ao todo. Quantas bilas ele ganhou na primeira partida?

*Categoria 1 — Composição de medidas (uma incógnita) (Vergnaud)*
"""

# ╔═╡ 0000c001-0000-4000-8000-000000000000
md"""
🪜 **Dica 1**

Quais são os dois números conhecidos — o total ganho e o ganho da segunda partida? Onde aparecem na frase?
"""

# ╔═╡ 0000c002-0000-4000-8000-000000000000
md"""
🪜 **Dica 2**

O total é formado pelas duas partidas. Que operação, aplicada ao total e ao ganho conhecido, revela o outro ganho?
"""

# ╔═╡ 0000c003-0000-4000-8000-000000000000
md"""
🪜 **Dica 3**

A operação certa é a subtração: total menos o ganho da segunda partida. É exatamente isso que o código abaixo faz, passo a passo.
"""

# ╔═╡ 00000002-0000-4000-8000-000000000000
HTML("""
<svg viewBox="0 0 480 130" width="100%" style="max-width:480px" xmlns="http://www.w3.org/2000/svg">
    <rect x="20" y="40" width="140" height="56" rx="8" fill="#eef2f6" stroke="#4a5a6a" stroke-width="1.5"/>
    <text x="90" y="62" text-anchor="middle" font-size="13" fill="#1a2733" font-family="sans-serif" font-weight="600">22</text>
    <text x="90" y="80" text-anchor="middle" font-size="11" fill="#3a4a58" font-family="sans-serif">Ganho total</text>
    <rect x="320" y="40" width="140" height="56" rx="8" fill="#dce8f0" stroke="#1f5c85" stroke-width="1.5"/>
    <text x="390" y="62" text-anchor="middle" font-size="13" fill="#0e3550" font-family="sans-serif" font-weight="700">12</text>
    <text x="390" y="80" text-anchor="middle" font-size="11" fill="#0e3550" font-family="sans-serif">Ganho na 2ª partida</text>
    <line x1="166" y1="68" x2="306" y2="68" stroke="#8a97a3" stroke-width="1.5" marker-end="url(#arrow)"/>
    <text x="240" y="58" text-anchor="middle" font-size="12" fill="#5a3a1a" font-family="sans-serif" font-weight="700">−10</text>
    <text x="240" y="114" text-anchor="middle" font-size="11" fill="#5a3a1a" font-family="sans-serif">ganho na 1ª partida (?)</text>
    <defs><marker id="arrow" markerWidth="8" markerHeight="8" refX="6" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 Z" fill="#8a97a3"/></marker></defs>
  </svg>
""")

# ╔═╡ 00000003-0000-4000-8000-000000000000
md"""
**Pensamento Computacional em jogo — associar uma ação a uma categoria, com apoio a cada passo.** Execute as células de código abaixo, uma por vez.
"""

# ╔═╡ 0000b001-0000-4000-8000-000000000000
md"""
Passo 1 (usa a Dica 1): guardamos o ganho total.
"""

# ╔═╡ 00000004-0000-4000-8000-000000000000
qtdGanhoTotalNasDuasPartidas = 22   # passo 1

# ╔═╡ 0000b002-0000-4000-8000-000000000000
md"""
Passo 2 (usa a Dica 1): guardamos o ganho da segunda partida.
"""

# ╔═╡ 00000005-0000-4000-8000-000000000000
qtdGanhoSegundaPartida = 12   # passo 2

# ╔═╡ 0000b003-0000-4000-8000-000000000000
md"""
Passo 3 (usa as Dicas 2 e 3): definimos a função subtracao para descobrir o ganho da primeira partida.
"""

# ╔═╡ 00000006-0000-4000-8000-000000000000
subtracao(qtdGanhoTotalNasDuasPartidas, qtdGanhoSegundaPartida) = qtdGanhoTotalNasDuasPartidas - qtdGanhoSegundaPartida   # passo 3

qtdGanhoNaPrimeiraPartida = subtracao(qtdGanhoTotalNasDuasPartidas, qtdGanhoSegundaPartida)

# ╔═╡ 0000d003-0000-4000-8000-000000000000
if @isdefined(qtdGanhoNaPrimeiraPartida)
    if qtdGanhoNaPrimeiraPartida == 10
        HTML("<div style='color:#1a7a3c;font-weight:600;padding:8px;background:#eaf7ee;border-radius:6px;'>✅ Isso mesmo! qtdGanhoNaPrimeiraPartida = 10</div>")
    else
        HTML("<div style='color:#b3261e;font-weight:600;padding:8px;background:#fbeceb;border-radius:6px;'>❌ Ainda não — revise o cálculo de qtdGanhoNaPrimeiraPartida</div>")
    end
else
    HTML("<div style='color:#8a97a3;padding:8px;'>Aguardando você definir qtdGanhoNaPrimeiraPartida...</div>")
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
