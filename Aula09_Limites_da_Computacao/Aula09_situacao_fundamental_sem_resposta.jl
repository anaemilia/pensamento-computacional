### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade — Ensino Fundamental
## Dinheiro de Ingrid e Ligianne — limites da computação

**Situação-problema:**

Ingrid tem 12 reais a mais que Ligianne. Se Ligianne possui 27 reais, quantos reais Ingrid tem?

*Categoria 3 — Comparação de medidas (referendo desconhecido) (Vergnaud)*
"""

# ╔═╡ 0000038d-0000-4000-8000-000000000000
HTML("""
<svg viewBox="0 0 706 190" width="100%" style="max-width:706px" xmlns="http://www.w3.org/2000/svg"><g transform="translate(0,0)">
    <rect x="4" y="4" width="222" height="182" rx="10" fill="#fbfcfd" stroke="#4a5a6a" stroke-width="2"/>
    <text x="115" y="24" text-anchor="middle" font-size="12" fill="#5a3a1a" font-family="sans-serif" font-weight="700">Ligianne</text>
    <g transform="translate(115,80) scale(1.1)">
    <ellipse cx="0" cy="40" rx="20" ry="9" fill="#000" opacity="0.08"/>
    <path d="M -19 38 Q -23 4 0 2 Q 23 4 19 38 Z" fill="#a15fb0"/>
    <circle cx="0" cy="-14" r="16" fill="#c98a5e"/>
    <path d="M -19 -10 Q -22 20 -13 26 Q -16 4 -14 -10 Z" fill="#241812"/>
       <path d="M 19 -10 Q 22 20 13 26 Q 16 4 14 -10 Z" fill="#241812"/>
       <path d="M -18 -14 Q -18 -32 0 -32 Q 18 -32 18 -14 Q 18 -22 0 -24 Q -18 -22 -18 -14 Z" fill="#241812"/>
    <circle cx="-6" cy="-14" r="1.8" fill="#2a2a2a"/>
    <circle cx="6" cy="-14" r="1.8" fill="#2a2a2a"/>
    <path d="M -5 -6 Q 0 -3 5 -6" stroke="#8a4a3a" stroke-width="1.6" fill="none" stroke-linecap="round"/>
    <circle cx="-11" cy="-8" r="2.4" fill="#e0836a" opacity="0.45"/>
    <circle cx="11" cy="-8" r="2.4" fill="#e0836a" opacity="0.45"/>
    <circle cx="-19" cy="-4" r="2.5" fill="#d94f8c"/><circle cx="19" cy="-4" r="2.5" fill="#d94f8c"/>
  </g><g><rect x="73" y="134" width="84" height="26" rx="6" fill="#fff" stroke="#8a97a3" stroke-width="1.5"/>
  <text x="115" y="152" text-anchor="middle" font-size="11" fill="#1a2733" font-family="sans-serif" font-weight="700">R\$27</text></g>
    <text x="115" y="176" text-anchor="middle" font-size="11" fill="#1a2733" font-family="sans-serif">Ligianne tem R\$27</text>
  </g><g transform="translate(238,0)">
    <rect x="4" y="4" width="222" height="182" rx="10" fill="#fbfcfd" stroke="#4a5a6a" stroke-width="2"/>
    <text x="115" y="24" text-anchor="middle" font-size="12" fill="#5a3a1a" font-family="sans-serif" font-weight="700">Comparação</text>
    <g transform="translate(75,80) scale(0.95)">
    <ellipse cx="0" cy="40" rx="20" ry="9" fill="#000" opacity="0.08"/>
    <path d="M -19 38 Q -23 4 0 2 Q 23 4 19 38 Z" fill="#a15fb0"/>
    <circle cx="0" cy="-14" r="16" fill="#c98a5e"/>
    <path d="M -19 -10 Q -22 20 -13 26 Q -16 4 -14 -10 Z" fill="#241812"/>
       <path d="M 19 -10 Q 22 20 13 26 Q 16 4 14 -10 Z" fill="#241812"/>
       <path d="M -18 -14 Q -18 -32 0 -32 Q 18 -32 18 -14 Q 18 -22 0 -24 Q -18 -22 -18 -14 Z" fill="#241812"/>
    <circle cx="-6" cy="-14" r="1.8" fill="#2a2a2a"/>
    <circle cx="6" cy="-14" r="1.8" fill="#2a2a2a"/>
    <path d="M -5 -6 Q 0 -3 5 -6" stroke="#8a4a3a" stroke-width="1.6" fill="none" stroke-linecap="round"/>
    <circle cx="-11" cy="-8" r="2.4" fill="#e0836a" opacity="0.45"/>
    <circle cx="11" cy="-8" r="2.4" fill="#e0836a" opacity="0.45"/>
    <circle cx="-19" cy="-4" r="2.5" fill="#d94f8c"/><circle cx="19" cy="-4" r="2.5" fill="#d94f8c"/>
  </g><g transform="translate(155,78) scale(0.95)">
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
  </g><g><rect x="113" y="134" width="84" height="26" rx="6" fill="#fff" stroke="#8a97a3" stroke-width="1.5"/>
  <text x="155" y="152" text-anchor="middle" font-size="11" fill="#1a2733" font-family="sans-serif" font-weight="700">?</text></g>
    <text x="115" y="176" text-anchor="middle" font-size="11" fill="#1a2733" font-family="sans-serif">Ingrid tem ? a mais</text>
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
    <text x="115" y="176" text-anchor="middle" font-size="11" fill="#1a2733" font-family="sans-serif">Ingrid tem R\?</text>
  </g></svg>
""")

# ╔═╡ 00000002-0000-4000-8000-000000000000
HTML("""
<svg viewBox="0 0 420 150" width="100%" style="max-width:420px" xmlns="http://www.w3.org/2000/svg">
    <text x="10" y="41" font-size="11" fill="#3a4a58" font-family="sans-serif">Dinheiro de Ligianne</text>
    <rect x="90" y="20" width="70.2" height="34" rx="6" fill="#eef2f6" stroke="#4a5a6a" stroke-width="1.5"/>
    <text x="125.1" y="41" text-anchor="middle" font-size="12" fill="#1a2733" font-family="sans-serif" font-weight="600">27</text>
    <text x="10" y="97" font-size="11" fill="#0e3550" font-family="sans-serif">Dinheiro de Ingrid (?)</text>
    <rect x="90" y="76" width="101.4" height="34" rx="6" fill="#dce8f0" stroke="#1f5c85" stroke-width="1.5"/>
    <text x="140.7" y="97" text-anchor="middle" font-size="12" fill="#0e3550" font-family="sans-serif" font-weight="700">?</text>
    <path d="M 160.2 54 L 201.4 54 L 201.4 76 L 191.4 76" fill="none" stroke="#8a97a3" stroke-width="1.5"/>
    <text x="217.4" y="69" font-size="12" fill="#5a3a1a" font-family="sans-serif" font-weight="700">12</text>
    <text x="217.4" y="85" font-size="11" fill="#5a3a1a" font-family="sans-serif">a mais</text>
  </svg>
""")

# ╔═╡ 0000e009-0000-4000-8000-000000000000
md"""
### Passo a passo sugerido

1. Guarde o dinheiro de Ligianne, por exemplo `dinheiroDeLigianne = 27`.
2. Guarde a diferença, por exemplo `diferencaDeIngridAMais = 12`.
3. Defina a função `soma(a, b) = a + b` e use-a para calcular o dinheiro de Ingrid, por exemplo `dinheiroDeIngrid = soma(dinheiroDeLigianne, diferencaDeIngridAMais)`.
"""

# ╔═╡ Cell order:
# ╠═0000e009-0000-4000-8000-000000000000
# ╠═00000001-0000-4000-8000-000000000000
# ╠═0000038d-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
