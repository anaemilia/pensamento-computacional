### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade — Português/Literatura
## O livro de contos de Marina — o que é "computar"?

**Situação-problema:**

Marina já tinha escrito 32 páginas do seu livro de contos. Durante as férias, ela escreveu mais 22 páginas. Quantas páginas o livro tem agora?

*Categoria 2 — Transformação de medidas (Vergnaud)*
"""

# ╔═╡ 0000b000-0000-4000-8000-000000000000
md"""
💭 **Para pensar antes de calcular**

Este problema é do tipo *Categoria 2 — Transformação de medidas*: uma quantidade inicial recebe uma transformação (escrever mais páginas) e vira uma quantidade final.

Antes de calcular: o número final de páginas vai ser maior ou menor que 32? Por quê?
"""

# ╔═╡ 00000385-0000-4000-8000-000000000000
HTML("""
<svg viewBox="0 0 480 150" width="100%" style="max-width:480px" xmlns="http://www.w3.org/2000/svg">
  <rect x="10" y="10" width="140" height="120" rx="8" fill="#fbfcfd" stroke="#4a5a6a" stroke-width="2"/>
  <text x="80" y="30" text-anchor="middle" font-size="12" fill="#5a3a1a" font-family="sans-serif" font-weight="700">Antes</text>
  <text x="80" y="80" text-anchor="middle" font-size="22" font-family="sans-serif">📖</text>
  <text x="80" y="108" text-anchor="middle" font-size="12" fill="#1a2733" font-family="sans-serif" font-weight="700">32 páginas</text>
  <rect x="170" y="10" width="140" height="120" rx="8" fill="#fbfcfd" stroke="#4a5a6a" stroke-width="2"/>
  <text x="240" y="30" text-anchor="middle" font-size="12" fill="#5a3a1a" font-family="sans-serif" font-weight="700">Férias</text>
  <text x="240" y="80" text-anchor="middle" font-size="22" font-family="sans-serif">✍️</text>
  <text x="240" y="108" text-anchor="middle" font-size="12" fill="#1a2733" font-family="sans-serif" font-weight="700">+22 páginas</text>
  <rect x="330" y="10" width="140" height="120" rx="8" fill="#dce8f0" stroke="#1f5c85" stroke-width="2"/>
  <text x="400" y="30" text-anchor="middle" font-size="12" fill="#0e3550" font-family="sans-serif" font-weight="700">Depois</text>
  <text x="400" y="80" text-anchor="middle" font-size="22" font-family="sans-serif">📕</text>
  <text x="400" y="108" text-anchor="middle" font-size="12" fill="#0e3550" font-family="sans-serif" font-weight="700">54 páginas</text>
</svg>
""")

# ╔═╡ 00000002-0000-4000-8000-000000000000
HTML("""
<svg viewBox="0 0 480 130" width="100%" style="max-width:480px" xmlns="http://www.w3.org/2000/svg">
    <rect x="20" y="40" width="140" height="56" rx="8" fill="#eef2f6" stroke="#4a5a6a" stroke-width="1.5"/>
    <text x="90" y="62" text-anchor="middle" font-size="13" fill="#1a2733" font-family="sans-serif" font-weight="600">32</text>
    <text x="90" y="80" text-anchor="middle" font-size="11" fill="#3a4a58" font-family="sans-serif">Páginas antes</text>
    <rect x="320" y="40" width="140" height="56" rx="8" fill="#dce8f0" stroke="#1f5c85" stroke-width="1.5"/>
    <text x="390" y="62" text-anchor="middle" font-size="13" fill="#0e3550" font-family="sans-serif" font-weight="700">54</text>
    <text x="390" y="80" text-anchor="middle" font-size="11" fill="#0e3550" font-family="sans-serif">Páginas depois</text>
    <line x1="166" y1="68" x2="306" y2="68" stroke="#8a97a3" stroke-width="1.5" marker-end="url(#arrow)"/>
    <text x="240" y="58" text-anchor="middle" font-size="12" fill="#5a3a1a" font-family="sans-serif" font-weight="700">+22</text>
    <text x="240" y="114" text-anchor="middle" font-size="11" fill="#5a3a1a" font-family="sans-serif">páginas escritas</text>
    <defs><marker id="arrow" markerWidth="8" markerHeight="8" refX="6" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 Z" fill="#8a97a3"/></marker></defs>
  </svg>
""")

# ╔═╡ 00000003-0000-4000-8000-000000000000
md"""
**Pensamento Computacional em jogo — entrada, processamento e saída.** Cada célula abaixo é uma fase: a *entrada*, o *processo* e a *saída*. Execute uma célula por vez.
"""

# ╔═╡ 0000b001-0000-4000-8000-000000000000
md"""
Aqui criamos a **variável** `qtdPaginasIniciais` e guardamos nela o valor 32 — é a *entrada* do problema: as páginas que Marina já tinha escrito.
"""

# ╔═╡ 00000004-0000-4000-8000-000000000000
qtdPaginasIniciais = 32   # entrada 1

# ╔═╡ 0000b002-0000-4000-8000-000000000000
md"""
Nova variável `qtdPaginasEscritas` guarda o segundo valor de entrada: as páginas que Marina escreveu nas férias.
"""

# ╔═╡ 00000005-0000-4000-8000-000000000000
qtdPaginasEscritas = 22   # entrada 2

# ╔═╡ 0000b003-0000-4000-8000-000000000000
md"""
Definimos a **função** `soma`, que recebe dois valores e devolve a soma deles, e a usamos para calcular `qtdPaginasTotal` — é o *processo* e a *saída* juntos.
"""

# ╔═╡ 00000006-0000-4000-8000-000000000000
soma(qtdPaginasIniciais, qtdPaginasEscritas) = qtdPaginasIniciais + qtdPaginasEscritas   # função que soma dois valores

qtdPaginasTotal = soma(qtdPaginasIniciais, qtdPaginasEscritas)   # processo + saída

# ╔═╡ 0000d001-0000-4000-8000-000000000000
md"""
**Desafio extra:** criar uma função `soma3` que soma três valores, e testá-la com um terceiro capítulo escrito depois.
"""

# ╔═╡ 0000d000-0000-4000-8000-000000000000
if @isdefined(qtdPaginasTotal)
    if qtdPaginasTotal == 54
        HTML("<div style='color:#1a7a3c;font-weight:600;padding:8px;background:#eaf7ee;border-radius:6px;'>✅ Isso mesmo! qtdPaginasTotal = 54</div>")
    else
        HTML("<div style='color:#b3261e;font-weight:600;padding:8px;background:#fbeceb;border-radius:6px;'>❌ Ainda não — revise o cálculo de qtdPaginasTotal</div>")
    end
else
    HTML("<div style='color:#8a97a3;padding:8px;'>Aguardando você definir qtdPaginasTotal...</div>")
end

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═0000b000-0000-4000-8000-000000000000
# ╠═00000385-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
# ╠═0000b001-0000-4000-8000-000000000000
# ╠═00000004-0000-4000-8000-000000000000
# ╠═0000b002-0000-4000-8000-000000000000
# ╠═00000005-0000-4000-8000-000000000000
# ╠═0000b003-0000-4000-8000-000000000000
# ╠═00000006-0000-4000-8000-000000000000
# ╠═0000d001-0000-4000-8000-000000000000
# ╠═0000d000-0000-4000-8000-000000000000
