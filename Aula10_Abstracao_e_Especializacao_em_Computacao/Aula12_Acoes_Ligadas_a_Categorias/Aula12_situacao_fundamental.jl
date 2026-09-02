### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade — Ensino Fundamental
## Bolinhas de gude de João — ações ligadas a categorias

**Situação-problema:**

João jogou duas partidas de bila. Na segunda ele ganhou 12 bolas. Ao final das duas partidas ele tinha ganhado 22 ao todo. Quantas bilas ele ganhou na primeira partida?

*Categoria 4 — Composição de transformações (uma incógnita) (Vergnaud)*
"""

# ╔═╡ 0000b000-0000-4000-8000-000000000000
md"""
💭 **Para pensar antes de calcular**

Este problema é do tipo *Categoria 1 — Composição de medidas*: o total é dividido em duas partidas, e cada parte fica guardada ligada à sua categoria (primeira ou segunda partida).

Antes de calcular: o ganho da primeira partida vai ser maior ou menor que o da segunda?

⚠️ cuidado para não confundir a chave `:segundaPartida` com o valor total ao consultar o dicionário.
"""

# ╔═╡ 00000390-0000-4000-8000-000000000000
HTML("""
<svg viewBox="0 0 706 190" width="100%" style="max-width:706px" xmlns="http://www.w3.org/2000/svg"><g transform="translate(0,0)">
    <rect x="4" y="4" width="222" height="182" rx="10" fill="#fbfcfd" stroke="#4a5a6a" stroke-width="2"/>
    <text x="115" y="24" text-anchor="middle" font-size="12" fill="#5a3a1a" font-family="sans-serif" font-weight="700">1ª partida (?)</text>
    <g transform="translate(115,80) scale(1.1)">
    <ellipse cx="0" cy="40" rx="20" ry="9" fill="#000" opacity="0.08"/>
    <path d="M -16 38 Q -18 4 0 2 Q 18 4 16 38 Z" fill="#4a7ba6"/>
    <circle cx="0" cy="-14" r="16" fill="#c98a5e"/>
    <path d="M -16 -16 Q -16 -29 0 -29 Q 16 -29 16 -16 Q 16 -20 0 -21 Q -16 -20 -16 -16 Z" fill="#241812"/>
       <path d="M -16 -16 L -16 -12" stroke="#241812" stroke-width="2"/>
       <path d="M 16 -16 L 16 -12" stroke="#241812" stroke-width="2"/>
    <circle cx="-6" cy="-14" r="1.8" fill="#2a2a2a"/>
    <circle cx="6" cy="-14" r="1.8" fill="#2a2a2a"/>
    <path d="M -5 -6 Q 0 -3 5 -6" stroke="#8a4a3a" stroke-width="1.6" fill="none" stroke-linecap="round"/>
    <circle cx="-11" cy="-8" r="2.4" fill="#e0836a" opacity="0.45"/>
    <circle cx="11" cy="-8" r="2.4" fill="#e0836a" opacity="0.45"/>
    
  </g><g><rect x="73" y="134" width="84" height="26" rx="6" fill="#fff" stroke="#8a97a3" stroke-width="1.5"/>
  <text x="115" y="152" text-anchor="middle" font-size="11" fill="#1a2733" font-family="sans-serif" font-weight="700">+10?</text></g>
    <text x="115" y="176" text-anchor="middle" font-size="11" fill="#1a2733" font-family="sans-serif">João ganha bolas (incógnita)</text>
  </g><g transform="translate(238,0)">
    <rect x="4" y="4" width="222" height="182" rx="10" fill="#fbfcfd" stroke="#4a5a6a" stroke-width="2"/>
    <text x="115" y="24" text-anchor="middle" font-size="12" fill="#5a3a1a" font-family="sans-serif" font-weight="700">2ª partida</text>
    <g transform="translate(115,78) scale(1.05)">
    <ellipse cx="0" cy="40" rx="20" ry="9" fill="#000" opacity="0.08"/>
    <path d="M -16 38 Q -18 4 0 2 Q 18 4 16 38 Z" fill="#4a7ba6"/>
    <circle cx="0" cy="-14" r="16" fill="#c98a5e"/>
    <path d="M -16 -16 Q -16 -29 0 -29 Q 16 -29 16 -16 Q 16 -20 0 -21 Q -16 -20 -16 -16 Z" fill="#241812"/>
       <path d="M -16 -16 L -16 -12" stroke="#241812" stroke-width="2"/>
       <path d="M 16 -16 L 16 -12" stroke="#241812" stroke-width="2"/>
    <circle cx="-6" cy="-14" r="1.8" fill="#2a2a2a"/>
    <circle cx="6" cy="-14" r="1.8" fill="#2a2a2a"/>
    <path d="M -5 -6 Q 0 -3 5 -6" stroke="#8a4a3a" stroke-width="1.6" fill="none" stroke-linecap="round"/>
    <circle cx="-11" cy="-8" r="2.4" fill="#e0836a" opacity="0.45"/>
    <circle cx="11" cy="-8" r="2.4" fill="#e0836a" opacity="0.45"/>
    
  </g><g><rect x="73" y="134" width="84" height="26" rx="6" fill="#fff" stroke="#8a97a3" stroke-width="1.5"/>
  <text x="115" y="152" text-anchor="middle" font-size="11" fill="#1a2733" font-family="sans-serif" font-weight="700">+12</text></g>
    <text x="115" y="176" text-anchor="middle" font-size="11" fill="#1a2733" font-family="sans-serif">Ganhou 12 na segunda</text>
  </g><g transform="translate(476,0)">
    <rect x="4" y="4" width="222" height="182" rx="10" fill="#fbfcfd" stroke="#4a5a6a" stroke-width="2"/>
    <text x="115" y="24" text-anchor="middle" font-size="12" fill="#5a3a1a" font-family="sans-serif" font-weight="700">Resultado</text>
    <g transform="translate(115,80) scale(1.15)">
    <ellipse cx="0" cy="40" rx="20" ry="9" fill="#000" opacity="0.08"/>
    <path d="M -16 38 Q -18 4 0 2 Q 18 4 16 38 Z" fill="#4a7ba6"/>
    <circle cx="0" cy="-14" r="16" fill="#c98a5e"/>
    <path d="M -16 -16 Q -16 -29 0 -29 Q 16 -29 16 -16 Q 16 -20 0 -21 Q -16 -20 -16 -16 Z" fill="#241812"/>
       <path d="M -16 -16 L -16 -12" stroke="#241812" stroke-width="2"/>
       <path d="M 16 -16 L 16 -12" stroke="#241812" stroke-width="2"/>
    <circle cx="-6" cy="-14" r="1.8" fill="#2a2a2a"/>
    <circle cx="6" cy="-14" r="1.8" fill="#2a2a2a"/>
    <path d="M -5 -6 Q 0 -3 5 -6" stroke="#8a4a3a" stroke-width="1.6" fill="none" stroke-linecap="round"/>
    <circle cx="-11" cy="-8" r="2.4" fill="#e0836a" opacity="0.45"/>
    <circle cx="11" cy="-8" r="2.4" fill="#e0836a" opacity="0.45"/>
    
  </g><g><rect x="73" y="134" width="84" height="26" rx="6" fill="#fff" stroke="#8a97a3" stroke-width="1.5"/>
  <text x="115" y="152" text-anchor="middle" font-size="11" fill="#1a2733" font-family="sans-serif" font-weight="700">22 total</text></g>
    <text x="115" y="176" text-anchor="middle" font-size="11" fill="#1a2733" font-family="sans-serif">Ao todo ganhou 22</text>
  </g></svg>
""")

# ╔═╡ 00000002-0000-4000-8000-000000000000
HTML("""
<svg viewBox="0 0 318 176" width="100%" style="max-width:520px" xmlns="http://www.w3.org/2000/svg">
    <rect x="20" y="14" width="130" height="56" rx="8" fill="#eef2f6" stroke="#4a5a6a" stroke-width="1.5"/>
      <text x="85" y="36" text-anchor="middle" font-size="13" fill="#1a2733" font-family="sans-serif" font-weight="600">?</text>
      <text x="85" y="54" text-anchor="middle" font-size="11" fill="#3a4a58" font-family="sans-serif">Ganho na 1ª partida</text><rect x="168" y="14" width="130" height="56" rx="8" fill="#eef2f6" stroke="#4a5a6a" stroke-width="1.5"/>
      <text x="233" y="36" text-anchor="middle" font-size="13" fill="#1a2733" font-family="sans-serif" font-weight="600">12</text>
      <text x="233" y="54" text-anchor="middle" font-size="11" fill="#3a4a58" font-family="sans-serif">Ganho na 2ª partida</text><line x1="85" y1="70" x2="159" y2="92" stroke="#8a97a3" stroke-width="1.5"/><line x1="233" y1="70" x2="159" y2="92" stroke="#8a97a3" stroke-width="1.5"/>
    <line x1="159" y1="92" x2="159" y2="132" stroke="#8a97a3" stroke-width="1.5"/>
    <rect x="89" y="132" width="140" height="56" rx="8" fill="#dce8f0" stroke="#1f5c85" stroke-width="1.5"/>
    <text x="159" y="154" text-anchor="middle" font-size="13" fill="#0e3550" font-family="sans-serif" font-weight="700">22</text>
    <text x="159" y="172" text-anchor="middle" font-size="11" fill="#0e3550" font-family="sans-serif">Ganho total</text>
  </svg>
""")

# ╔═╡ 00000003-0000-4000-8000-000000000000
md"""
**Pensamento Computacional em jogo — associar uma ação a uma categoria de dado.** "Ganhar numa partida" só faz sentido ligado à categoria `partida`.

Execute as células de código abaixo, uma por vez, e observe o resultado de cada uma antes de seguir para a próxima.
"""

# ╔═╡ 0000b001-0000-4000-8000-000000000000
md"""
Criamos um **dicionário** `ganhoPorPartida`, que liga a categoria `:segundaPartida` ao valor ganho nela — a ação "ganhar" só faz sentido associada a essa categoria.
"""

# ╔═╡ 00000004-0000-4000-8000-000000000000
ganhoPorPartida = Dict(:segundaPartida => 12)   # ação ligada à categoria "partida"

# ╔═╡ 0000b002-0000-4000-8000-000000000000
md"""
Variável com o ganho total somando as duas partidas.
"""

# ╔═╡ 00000005-0000-4000-8000-000000000000
qtdGanhoTotalNasDuasPartidas = 22

# ╔═╡ 0000b003-0000-4000-8000-000000000000
md"""
Definimos a função `subtracao` e a usamos para descobrir o ganho da primeira partida, buscando o valor da segunda no dicionário com `ganhoPorPartida[:segundaPartida]`.
"""

# ╔═╡ 00000006-0000-4000-8000-000000000000
subtracao(qtdGanhoTotal, qtdGanhoSegundaPartida) = qtdGanhoTotal - qtdGanhoSegundaPartida   # função que subtrai dois valores

qtdGanhoNaPrimeiraPartida = subtracao(qtdGanhoTotalNasDuasPartidas, ganhoPorPartida[:segundaPartida])

# ╔═╡ 0000d012-0000-4000-8000-000000000000
md"""
**Desafio extra:** adicionar uma `:terceiraPartida` ao dicionário e recalcular o total.
"""

# ╔═╡ 0000d201-0000-4000-8000-000000000000
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
# ╠═0000b000-0000-4000-8000-000000000000
# ╠═00000390-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
# ╠═0000b001-0000-4000-8000-000000000000
# ╠═00000004-0000-4000-8000-000000000000
# ╠═0000b002-0000-4000-8000-000000000000
# ╠═00000005-0000-4000-8000-000000000000
# ╠═0000b003-0000-4000-8000-000000000000
# ╠═00000006-0000-4000-8000-000000000000
# ╠═0000d012-0000-4000-8000-000000000000
# ╠═0000d201-0000-4000-8000-000000000000
