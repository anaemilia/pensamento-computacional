### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade — Ensino Fundamental
## Feira de Maria — pensamento indutivo

**Situação-problema:**

Maria foi fazer compras na feira com R\$ 25,00. Gastou R\$ 18,00 comprando frutas e verduras. Com quantos reais Maria ficou após a feira?

*Categoria 2 — Transformação de medidas (Vergnaud)*
"""

# ╔═╡ 00000386-0000-4000-8000-000000000000
HTML("""
<svg viewBox="0 0 706 190" width="100%" style="max-width:706px" xmlns="http://www.w3.org/2000/svg"><g transform="translate(0,0)">
    <rect x="4" y="4" width="222" height="182" rx="10" fill="#fbfcfd" stroke="#4a5a6a" stroke-width="2"/>
    <text x="115" y="24" text-anchor="middle" font-size="12" fill="#5a3a1a" font-family="sans-serif" font-weight="700">Antes</text>
    <g transform="translate(115,80) scale(1.1)">
    <ellipse cx="0" cy="40" rx="20" ry="9" fill="#000" opacity="0.08"/>
    <path d="M -19 38 Q -23 4 0 2 Q 23 4 19 38 Z" fill="#c65b4e"/>
    <circle cx="0" cy="-14" r="16" fill="#e8b894"/>
    <path d="M -19 -10 Q -22 20 -13 26 Q -16 4 -14 -10 Z" fill="#3a2418"/>
       <path d="M 19 -10 Q 22 20 13 26 Q 16 4 14 -10 Z" fill="#3a2418"/>
       <path d="M -18 -14 Q -18 -32 0 -32 Q 18 -32 18 -14 Q 18 -22 0 -24 Q -18 -22 -18 -14 Z" fill="#3a2418"/>
    <circle cx="-6" cy="-14" r="1.8" fill="#2a2a2a"/>
    <circle cx="6" cy="-14" r="1.8" fill="#2a2a2a"/>
    <path d="M -5 -6 Q 0 -3 5 -6" stroke="#8a4a3a" stroke-width="1.6" fill="none" stroke-linecap="round"/>
    <circle cx="-11" cy="-8" r="2.4" fill="#e0836a" opacity="0.45"/>
    <circle cx="11" cy="-8" r="2.4" fill="#e0836a" opacity="0.45"/>
    <circle cx="-19" cy="-4" r="2.5" fill="#d94f8c"/><circle cx="19" cy="-4" r="2.5" fill="#d94f8c"/>
  </g><g><rect x="73" y="134" width="84" height="26" rx="6" fill="#fff" stroke="#8a97a3" stroke-width="1.5"/>
  <text x="115" y="152" text-anchor="middle" font-size="11" fill="#1a2733" font-family="sans-serif" font-weight="700">R\$25</text></g>
    <text x="115" y="176" text-anchor="middle" font-size="11" fill="#1a2733" font-family="sans-serif">Maria vai à feira com R\?</text>
  </g><g transform="translate(238,0)">
    <rect x="4" y="4" width="222" height="182" rx="10" fill="#fbfcfd" stroke="#4a5a6a" stroke-width="2"/>
    <text x="115" y="24" text-anchor="middle" font-size="12" fill="#5a3a1a" font-family="sans-serif" font-weight="700">Ação</text>
    <g transform="translate(115,80) scale(1.1)">
    <ellipse cx="0" cy="40" rx="20" ry="9" fill="#000" opacity="0.08"/>
    <path d="M -19 38 Q -23 4 0 2 Q 23 4 19 38 Z" fill="#c65b4e"/>
    <circle cx="0" cy="-14" r="16" fill="#e8b894"/>
    <path d="M -19 -10 Q -22 20 -13 26 Q -16 4 -14 -10 Z" fill="#3a2418"/>
       <path d="M 19 -10 Q 22 20 13 26 Q 16 4 14 -10 Z" fill="#3a2418"/>
       <path d="M -18 -14 Q -18 -32 0 -32 Q 18 -32 18 -14 Q 18 -22 0 -24 Q -18 -22 -18 -14 Z" fill="#3a2418"/>
    <circle cx="-6" cy="-14" r="1.8" fill="#2a2a2a"/>
    <circle cx="6" cy="-14" r="1.8" fill="#2a2a2a"/>
    <path d="M -5 -6 Q 0 -3 5 -6" stroke="#8a4a3a" stroke-width="1.6" fill="none" stroke-linecap="round"/>
    <circle cx="-11" cy="-8" r="2.4" fill="#e0836a" opacity="0.45"/>
    <circle cx="11" cy="-8" r="2.4" fill="#e0836a" opacity="0.45"/>
    <circle cx="-19" cy="-4" r="2.5" fill="#d94f8c"/><circle cx="19" cy="-4" r="2.5" fill="#d94f8c"/>
  </g><g><rect x="73" y="134" width="84" height="26" rx="6" fill="#fff" stroke="#8a97a3" stroke-width="1.5"/>
  <text x="115" y="152" text-anchor="middle" font-size="11" fill="#1a2733" font-family="sans-serif" font-weight="700">-R\?</text></g>
    <text x="115" y="176" text-anchor="middle" font-size="11" fill="#1a2733" font-family="sans-serif">Compra frutas e verduras</text>
  </g><g transform="translate(476,0)">
    <rect x="4" y="4" width="222" height="182" rx="10" fill="#fbfcfd" stroke="#4a5a6a" stroke-width="2"/>
    <text x="115" y="24" text-anchor="middle" font-size="12" fill="#5a3a1a" font-family="sans-serif" font-weight="700">Resultado</text>
    <g transform="translate(115,80) scale(1.15)">
    <ellipse cx="0" cy="40" rx="20" ry="9" fill="#000" opacity="0.08"/>
    <path d="M -19 38 Q -23 4 0 2 Q 23 4 19 38 Z" fill="#c65b4e"/>
    <circle cx="0" cy="-14" r="16" fill="#e8b894"/>
    <path d="M -19 -10 Q -22 20 -13 26 Q -16 4 -14 -10 Z" fill="#3a2418"/>
       <path d="M 19 -10 Q 22 20 13 26 Q 16 4 14 -10 Z" fill="#3a2418"/>
       <path d="M -18 -14 Q -18 -32 0 -32 Q 18 -32 18 -14 Q 18 -22 0 -24 Q -18 -22 -18 -14 Z" fill="#3a2418"/>
    <circle cx="-6" cy="-14" r="1.8" fill="#2a2a2a"/>
    <circle cx="6" cy="-14" r="1.8" fill="#2a2a2a"/>
    <path d="M -5 -6 Q 0 -3 5 -6" stroke="#8a4a3a" stroke-width="1.6" fill="none" stroke-linecap="round"/>
    <circle cx="-11" cy="-8" r="2.4" fill="#e0836a" opacity="0.45"/>
    <circle cx="11" cy="-8" r="2.4" fill="#e0836a" opacity="0.45"/>
    <circle cx="-19" cy="-4" r="2.5" fill="#d94f8c"/><circle cx="19" cy="-4" r="2.5" fill="#d94f8c"/>
  </g><g><rect x="73" y="134" width="84" height="26" rx="6" fill="#fff" stroke="#8a97a3" stroke-width="1.5"/>
  <text x="115" y="152" text-anchor="middle" font-size="11" fill="#1a2733" font-family="sans-serif" font-weight="700">R\?</text></g>
    <text x="115" y="176" text-anchor="middle" font-size="11" fill="#1a2733" font-family="sans-serif">Fica com R\?</text>
  </g></svg>
""")

# ╔═╡ 00000002-0000-4000-8000-000000000000
HTML("""
<svg viewBox="0 0 480 130" width="100%" style="max-width:480px" xmlns="http://www.w3.org/2000/svg">
    <rect x="20" y="40" width="140" height="56" rx="8" fill="#eef2f6" stroke="#4a5a6a" stroke-width="1.5"/>
    <text x="90" y="62" text-anchor="middle" font-size="13" fill="#1a2733" font-family="sans-serif" font-weight="600">R\$25,00</text>
    <text x="90" y="80" text-anchor="middle" font-size="11" fill="#3a4a58" font-family="sans-serif">Dinheiro inicial</text>
    <rect x="320" y="40" width="140" height="56" rx="8" fill="#dce8f0" stroke="#1f5c85" stroke-width="1.5"/>
    <text x="390" y="62" text-anchor="middle" font-size="13" fill="#0e3550" font-family="sans-serif" font-weight="700">R\?</text>
    <text x="390" y="80" text-anchor="middle" font-size="11" fill="#0e3550" font-family="sans-serif">Dinheiro final</text>
    <line x1="166" y1="68" x2="306" y2="68" stroke="#8a97a3" stroke-width="1.5" marker-end="url(#arrow)"/>
    <text x="240" y="58" text-anchor="middle" font-size="12" fill="#5a3a1a" font-family="sans-serif" font-weight="700">−R\$18,00</text>
    <text x="240" y="114" text-anchor="middle" font-size="11" fill="#5a3a1a" font-family="sans-serif">gasto na feira</text>
    <defs><marker id="arrow" markerWidth="8" markerHeight="8" refX="6" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 Z" fill="#8a97a3"/></marker></defs>
  </svg>
""")

# ╔═╡ 0000e002-0000-4000-8000-000000000000
md"""
### Passo a passo sugerido

Para escrever o código, clique no botão **+** abaixo desta célula para criar uma nova célula e siga o passo a passo:

1. Guarde o dinheiro inicial na feira, por exemplo `dinheiroInicialNaFeira = 25`.
2. Guarde o valor gasto, por exemplo `gastoComFrutasEVerduras = 18`.
3. Defina uma função que subtrai dois valores, por exemplo `subtracao(a, b) = a - b`, e use-a para calcular `dinheiroFinalDeMaria` neste caso.
4. Escreva a regra geral que esse caso revela, com um novo nome, por exemplo `sobraDoDinheiro(valorInicial, valorGasto) = valorInicial - valorGasto`.
5. Aplique a regra geral aos mesmos valores de Maria para confirmar que dá a mesma resposta.
"""

# ╔═╡ Cell order:
# ╠═0000e002-0000-4000-8000-000000000000
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000386-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
