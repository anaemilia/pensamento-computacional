### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade — Ensino Fundamental
## Bolas de Paulo e José — generalização

**Situação-problema:**

Paulo tem 6 bolas. José tem 8 bolas a mais que Paulo. Quantas bolas tem José?

*Categoria 3 — Comparação de medidas (referido desconhecido) (Vergnaud)*
"""

# ╔═╡ 0000b000-0000-4000-8000-000000000000
md"""
💭 **Para pensar antes de calcular**

Este problema é do tipo *Categoria 3 — Comparação de medidas*: duas quantidades são comparadas por uma diferença ("a mais que").

Antes de calcular: José tem mais ou menos bolas que Paulo?
"""

# ╔═╡ 0000038b-0000-4000-8000-000000000000
HTML("""
<svg viewBox="0 0 706 190" width="100%" style="max-width:706px" xmlns="http://www.w3.org/2000/svg"><g transform="translate(0,0)">
    <rect x="4" y="4" width="222" height="182" rx="10" fill="#fbfcfd" stroke="#4a5a6a" stroke-width="2"/>
    <text x="115" y="24" text-anchor="middle" font-size="12" fill="#5a3a1a" font-family="sans-serif" font-weight="700">Referente</text>
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
  <text x="115" y="152" text-anchor="middle" font-size="11" fill="#1a2733" font-family="sans-serif" font-weight="700">6 bolas</text></g>
    <text x="115" y="176" text-anchor="middle" font-size="11" fill="#1a2733" font-family="sans-serif">Paulo tem 6 bolas</text>
  </g><g transform="translate(238,0)">
    <rect x="4" y="4" width="222" height="182" rx="10" fill="#fbfcfd" stroke="#4a5a6a" stroke-width="2"/>
    <text x="115" y="24" text-anchor="middle" font-size="12" fill="#5a3a1a" font-family="sans-serif" font-weight="700">Comparação</text>
    <g transform="translate(75,80) scale(0.95)">
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
    
  </g><g transform="translate(155,78) scale(0.95)">
    <ellipse cx="0" cy="40" rx="20" ry="9" fill="#000" opacity="0.08"/>
    <path d="M -16 38 Q -18 4 0 2 Q 18 4 16 38 Z" fill="#4a9d6e"/>
    <circle cx="0" cy="-14" r="16" fill="#e8b894"/>
    <path d="M -16 -16 Q -16 -29 0 -29 Q 16 -29 16 -16 Q 16 -20 0 -21 Q -16 -20 -16 -16 Z" fill="#3a2418"/>
       <path d="M -16 -16 L -16 -12" stroke="#3a2418" stroke-width="2"/>
       <path d="M 16 -16 L 16 -12" stroke="#3a2418" stroke-width="2"/>
    <circle cx="-6" cy="-14" r="1.8" fill="#2a2a2a"/>
    <circle cx="6" cy="-14" r="1.8" fill="#2a2a2a"/>
    <path d="M -5 -6 Q 0 -3 5 -6" stroke="#8a4a3a" stroke-width="1.6" fill="none" stroke-linecap="round"/>
    <circle cx="-11" cy="-8" r="2.4" fill="#e0836a" opacity="0.45"/>
    <circle cx="11" cy="-8" r="2.4" fill="#e0836a" opacity="0.45"/>
    
  </g><g><rect x="113" y="134" width="84" height="26" rx="6" fill="#fff" stroke="#8a97a3" stroke-width="1.5"/>
  <text x="155" y="152" text-anchor="middle" font-size="11" fill="#1a2733" font-family="sans-serif" font-weight="700">+8</text></g>
    <text x="115" y="176" text-anchor="middle" font-size="11" fill="#1a2733" font-family="sans-serif">José tem 8 a mais</text>
  </g><g transform="translate(476,0)">
    <rect x="4" y="4" width="222" height="182" rx="10" fill="#fbfcfd" stroke="#4a5a6a" stroke-width="2"/>
    <text x="115" y="24" text-anchor="middle" font-size="12" fill="#5a3a1a" font-family="sans-serif" font-weight="700">Resultado</text>
    <g transform="translate(115,80) scale(1.15)">
    <ellipse cx="0" cy="40" rx="20" ry="9" fill="#000" opacity="0.08"/>
    <path d="M -16 38 Q -18 4 0 2 Q 18 4 16 38 Z" fill="#4a9d6e"/>
    <circle cx="0" cy="-14" r="16" fill="#e8b894"/>
    <path d="M -16 -16 Q -16 -29 0 -29 Q 16 -29 16 -16 Q 16 -20 0 -21 Q -16 -20 -16 -16 Z" fill="#3a2418"/>
       <path d="M -16 -16 L -16 -12" stroke="#3a2418" stroke-width="2"/>
       <path d="M 16 -16 L 16 -12" stroke="#3a2418" stroke-width="2"/>
    <circle cx="-6" cy="-14" r="1.8" fill="#2a2a2a"/>
    <circle cx="6" cy="-14" r="1.8" fill="#2a2a2a"/>
    <path d="M -5 -6 Q 0 -3 5 -6" stroke="#8a4a3a" stroke-width="1.6" fill="none" stroke-linecap="round"/>
    <circle cx="-11" cy="-8" r="2.4" fill="#e0836a" opacity="0.45"/>
    <circle cx="11" cy="-8" r="2.4" fill="#e0836a" opacity="0.45"/>
    
  </g><g><rect x="73" y="134" width="84" height="26" rx="6" fill="#fff" stroke="#8a97a3" stroke-width="1.5"/>
  <text x="115" y="152" text-anchor="middle" font-size="11" fill="#1a2733" font-family="sans-serif" font-weight="700">? bolas</text></g>
    <text x="115" y="176" text-anchor="middle" font-size="11" fill="#1a2733" font-family="sans-serif">José tem ? bolas</text>
  </g></svg>
""")

# ╔═╡ 00000002-0000-4000-8000-000000000000
HTML("""
<svg viewBox="0 0 420 150" width="100%" style="max-width:420px" xmlns="http://www.w3.org/2000/svg">
    <text x="10" y="41" font-size="11" fill="#3a4a58" font-family="sans-serif">Bolas de Paulo</text>
    <rect x="90" y="20" width="15.600000000000001" height="34" rx="6" fill="#eef2f6" stroke="#4a5a6a" stroke-width="1.5"/>
    <text x="97.8" y="41" text-anchor="middle" font-size="12" fill="#1a2733" font-family="sans-serif" font-weight="600">6</text>
    <text x="10" y="97" font-size="11" fill="#0e3550" font-family="sans-serif">Bolas de José (?)</text>
    <rect x="90" y="76" width="36.4" height="34" rx="6" fill="#dce8f0" stroke="#1f5c85" stroke-width="1.5"/>
    <text x="108.2" y="97" text-anchor="middle" font-size="12" fill="#0e3550" font-family="sans-serif" font-weight="700">?</text>
    <path d="M 105.6 54 L 136.4 54 L 136.4 76 L 126.4 76" fill="none" stroke="#8a97a3" stroke-width="1.5"/>
    <text x="152.4" y="69" font-size="12" fill="#5a3a1a" font-family="sans-serif" font-weight="700">8</text>
    <text x="152.4" y="85" font-size="11" fill="#5a3a1a" font-family="sans-serif">a mais</text>
  </svg>
""")

# ╔═╡ 0000e007-0000-4000-8000-000000000000
md"""
### Passo a passo sugerido

Para escrever o código, clique no botão **+** abaixo desta célula para criar uma nova célula e siga o passo a passo:

1. Guarde a quantidade de bolas de Paulo, por exemplo `qtdBolasDePaulo = 6`.
2. Guarde a diferença, por exemplo `diferencaDeJoseAMais = 8`.
3. Defina uma função generalizada para qualquer comparação "a mais que", por exemplo `soma(qtdBolasDePaulo, diferencaDeJoseAMais) = qtdBolasDePaulo + diferencaDeJoseAMais`.
4. Aplique a função e guarde o resultado, por exemplo `qtdBolasDeJose = soma(qtdBolasDePaulo, diferencaDeJoseAMais)`.

**Desafio extra:** testar a função `soma` com uma segunda pessoa comparada a José.
"""

# ╔═╡ 000ba007-0000-4000-8000-000000000000
md"""
### Rubrica de avaliação (professor)

- [ ] `qtdBolasDePaulo` e `diferencaDeJoseAMais` definidas com os valores corretos (6 e 8)
- [ ] Função `soma` generalizada definida
- [ ] `qtdBolasDeJose` calculado usando a função
- [ ] Resultado final igual a 14
"""

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═0000b000-0000-4000-8000-000000000000
# ╠═0000038b-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═0000e007-0000-4000-8000-000000000000
# ╠═000ba007-0000-4000-8000-000000000000
