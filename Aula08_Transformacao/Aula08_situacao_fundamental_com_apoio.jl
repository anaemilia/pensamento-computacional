### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade com apoio — Ensino Fundamental
## Carrinhos de Marcus e Jardel — transformação (com apoio)

**Situação-problema:**

Marcus e Jardel colecionam carrinhos em miniatura. Marcus tem 23 carrinhos e Jardel tem 11 carrinhos. Quantos carrinhos a menos Jardel tem?

*Categoria 3 — Comparação de medidas (diferença desconhecida) (Vergnaud)*
"""

# ╔═╡ 0000c001-0000-4000-8000-000000000000
md"""
🪜 **Dica 1**

Quais são os dois números conhecidos — os carrinhos de Marcus e os de Jardel? Onde aparecem na frase?
"""

# ╔═╡ 0000c002-0000-4000-8000-000000000000
md"""
🪜 **Dica 2**

Você quer a diferença entre dois estados conhecidos. Que operação revela essa diferença?
"""

# ╔═╡ 0000c003-0000-4000-8000-000000000000
md"""
🪜 **Dica 3**

A operação certa é a subtração: carrinhos de Marcus menos carrinhos de Jardel. É exatamente isso que o código abaixo faz, passo a passo.
"""

# ╔═╡ 00000002-0000-4000-8000-000000000000
HTML("""
<svg viewBox="0 0 480 130" width="100%" style="max-width:480px" xmlns="http://www.w3.org/2000/svg">
    <rect x="20" y="40" width="140" height="56" rx="8" fill="#eef2f6" stroke="#4a5a6a" stroke-width="1.5"/>
    <text x="90" y="62" text-anchor="middle" font-size="13" fill="#1a2733" font-family="sans-serif" font-weight="600">23</text>
    <text x="90" y="80" text-anchor="middle" font-size="11" fill="#3a4a58" font-family="sans-serif">Carrinhos de Marcus</text>
    <rect x="320" y="40" width="140" height="56" rx="8" fill="#dce8f0" stroke="#1f5c85" stroke-width="1.5"/>
    <text x="390" y="62" text-anchor="middle" font-size="13" fill="#0e3550" font-family="sans-serif" font-weight="700">11</text>
    <text x="390" y="80" text-anchor="middle" font-size="11" fill="#0e3550" font-family="sans-serif">Carrinhos de Jardel</text>
    <line x1="166" y1="68" x2="306" y2="68" stroke="#8a97a3" stroke-width="1.5" marker-end="url(#arrow)"/>
    <text x="240" y="58" text-anchor="middle" font-size="12" fill="#5a3a1a" font-family="sans-serif" font-weight="700">−12</text>
    <text x="240" y="114" text-anchor="middle" font-size="11" fill="#5a3a1a" font-family="sans-serif">a menos (?)</text>
    <defs><marker id="arrow" markerWidth="8" markerHeight="8" refX="6" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 Z" fill="#8a97a3"/></marker></defs>
  </svg>
""")

# ╔═╡ 00000003-0000-4000-8000-000000000000
md"""
**Pensamento Computacional em jogo — a diferença como transformação entre dois estados, com apoio a cada passo.** Execute as células de código abaixo, uma por vez.
"""

# ╔═╡ 0000b001-0000-4000-8000-000000000000
md"""
Passo 1 (usa a Dica 1): guardamos os carrinhos de Marcus.
"""

# ╔═╡ 00000004-0000-4000-8000-000000000000
qtdCarrinhosDeMarcus = 23   # passo 1

# ╔═╡ 0000b002-0000-4000-8000-000000000000
md"""
Passo 2 (usa a Dica 1): guardamos os carrinhos de Jardel.
"""

# ╔═╡ 00000005-0000-4000-8000-000000000000
qtdCarrinhosDeJardel = 11   # passo 2

# ╔═╡ 0000b003-0000-4000-8000-000000000000
md"""
Passo 3 (usa as Dicas 2 e 3): definimos a função subtracao para calcular a transformação entre os dois estados.
"""

# ╔═╡ 00000006-0000-4000-8000-000000000000
subtracao(qtdCarrinhosDeMarcus, qtdCarrinhosDeJardel) = qtdCarrinhosDeMarcus - qtdCarrinhosDeJardel   # passo 3

diferencaAMenosDeJardel = subtracao(qtdCarrinhosDeMarcus, qtdCarrinhosDeJardel)

# ╔═╡ 0000d003-0000-4000-8000-000000000000
if @isdefined(diferencaAMenosDeJardel)
    if diferencaAMenosDeJardel == 12
        HTML("<div style='color:#1a7a3c;font-weight:600;padding:8px;background:#eaf7ee;border-radius:6px;'>✅ Isso mesmo! diferencaAMenosDeJardel = 12</div>")
    else
        HTML("<div style='color:#b3261e;font-weight:600;padding:8px;background:#fbeceb;border-radius:6px;'>❌ Ainda não — revise o cálculo de diferencaAMenosDeJardel</div>")
    end
else
    HTML("<div style='color:#8a97a3;padding:8px;'>Aguardando você definir diferencaAMenosDeJardel...</div>")
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
