### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade — Ensino Fundamental
## Bolas azuis e vermelhas de Paulo — decomposição

**Situação-problema:**

Paulo tem 17 bolas azuis e vermelhas. Se ele tem 11 bolas azuis, quantas bolas vermelhas ele tem?

*Categoria 1 — Composição de medidas (parte desconhecida) (Vergnaud)*
"""

# ╔═╡ 0000038a-0000-4000-8000-000000000000
HTML("""
<svg viewBox="0 0 706 190" width="100%" style="max-width:706px" xmlns="http://www.w3.org/2000/svg"><g transform="translate(0,0)">
    <rect x="4" y="4" width="222" height="182" rx="10" fill="#fbfcfd" stroke="#4a5a6a" stroke-width="2"/>
    <text x="115" y="24" text-anchor="middle" font-size="12" fill="#5a3a1a" font-family="sans-serif" font-weight="700">O todo</text>
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
  <text x="115" y="152" text-anchor="middle" font-size="11" fill="#1a2733" font-family="sans-serif" font-weight="700">17 bolas</text></g>
    <text x="115" y="176" text-anchor="middle" font-size="11" fill="#1a2733" font-family="sans-serif">Paulo tem 17 bolas ao todo</text>
  </g><g transform="translate(238,0)">
    <rect x="4" y="4" width="222" height="182" rx="10" fill="#fbfcfd" stroke="#4a5a6a" stroke-width="2"/>
    <text x="115" y="24" text-anchor="middle" font-size="12" fill="#5a3a1a" font-family="sans-serif" font-weight="700">Parte conhecida</text>
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
  <text x="115" y="152" text-anchor="middle" font-size="11" fill="#1a2733" font-family="sans-serif" font-weight="700">11 azuis</text></g>
    <text x="115" y="176" text-anchor="middle" font-size="11" fill="#1a2733" font-family="sans-serif">11 são azuis</text>
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
  <text x="115" y="152" text-anchor="middle" font-size="11" fill="#1a2733" font-family="sans-serif" font-weight="700">? verm.</text></g>
    <text x="115" y="176" text-anchor="middle" font-size="11" fill="#1a2733" font-family="sans-serif">As outras ? são vermelhas</text>
  </g></svg>
""")

# ╔═╡ 00000002-0000-4000-8000-000000000000
HTML("""
<svg viewBox="0 0 318 176" width="100%" style="max-width:520px" xmlns="http://www.w3.org/2000/svg">
    <rect x="20" y="14" width="130" height="56" rx="8" fill="#eef2f6" stroke="#4a5a6a" stroke-width="1.5"/>
      <text x="85" y="36" text-anchor="middle" font-size="13" fill="#1a2733" font-family="sans-serif" font-weight="600">11</text>
      <text x="85" y="54" text-anchor="middle" font-size="11" fill="#3a4a58" font-family="sans-serif">Bolas azuis</text><rect x="168" y="14" width="130" height="56" rx="8" fill="#eef2f6" stroke="#4a5a6a" stroke-width="1.5"/>
      <text x="233" y="36" text-anchor="middle" font-size="13" fill="#1a2733" font-family="sans-serif" font-weight="600">?</text>
      <text x="233" y="54" text-anchor="middle" font-size="11" fill="#3a4a58" font-family="sans-serif">Bolas vermelhas</text><line x1="85" y1="70" x2="159" y2="92" stroke="#8a97a3" stroke-width="1.5"/><line x1="233" y1="70" x2="159" y2="92" stroke="#8a97a3" stroke-width="1.5"/>
    <line x1="159" y1="92" x2="159" y2="132" stroke="#8a97a3" stroke-width="1.5"/>
    <rect x="89" y="132" width="140" height="56" rx="8" fill="#dce8f0" stroke="#1f5c85" stroke-width="1.5"/>
    <text x="159" y="154" text-anchor="middle" font-size="13" fill="#0e3550" font-family="sans-serif" font-weight="700">?</text>
    <text x="159" y="172" text-anchor="middle" font-size="11" fill="#0e3550" font-family="sans-serif">Total de bolas</text>
  </svg>
""")

# ╔═╡ 0000e006-0000-4000-8000-000000000000
md"""
### Passo a passo sugerido

Para escrever o código, clique no botão **+** abaixo desta célula para criar uma nova célula e siga o passo a passo:

1. Guarde o todo, por exemplo `qtdBolasTotal = 17`.
2. Guarde a parte já conhecida, por exemplo `qtdBolasAzuis = 11`.
3. Defina a função `subtracao(total, parte) = total - parte` e use-a para decompor o todo na parte que falta, por exemplo `qtdBolasVermelhas = subtracao(qtdBolasTotal, qtdBolasAzuis)`.
"""

# ╔═╡ Cell order:
# ╠═0000e006-0000-4000-8000-000000000000
# ╠═00000001-0000-4000-8000-000000000000
# ╠═0000038a-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
