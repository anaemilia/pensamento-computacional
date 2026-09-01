### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils
using PlutoUI

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade — Ensino Fundamental
## Borrachas de Marina — complexidade de algoritmos

**Situação-problema:**

Marina tem quatro borrachas azuis, três amarelas, duas verdes e cinco vermelhas. Quantas borrachas Marina tem?

*Categoria 1 — Composição de medidas (4 partes) (Vergnaud)*
"""

# ╔═╡ 0000b000-0000-4000-8000-000000000000
md"""
💭 **Para pensar antes de calcular**

Este problema é do tipo *Categoria 1 — Composição de medidas (4 partes)*: o todo é formado por quatro partes conhecidas — aqui o interessante é comparar dois jeitos de somar essas partes.

Antes de calcular: dá para saber o total sem somar tudo, só de olhar os números 4, 3, 2 e 5?
"""

# ╔═╡ 00000392-0000-4000-8000-000000000000
HTML("""
<svg viewBox="0 0 706 190" width="100%" style="max-width:706px" xmlns="http://www.w3.org/2000/svg"><g transform="translate(0,0)">
    <rect x="4" y="4" width="222" height="182" rx="10" fill="#fbfcfd" stroke="#4a5a6a" stroke-width="2"/>
    <text x="115" y="24" text-anchor="middle" font-size="12" fill="#5a3a1a" font-family="sans-serif" font-weight="700">Cores</text>
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
  <text x="115" y="152" text-anchor="middle" font-size="11" fill="#1a2733" font-family="sans-serif" font-weight="700">4+3+2+5</text></g>
    <text x="115" y="176" text-anchor="middle" font-size="11" fill="#1a2733" font-family="sans-serif">Marina tem borrachas de 4 cores</text>
  </g><g transform="translate(238,0)">
    <rect x="4" y="4" width="222" height="182" rx="10" fill="#fbfcfd" stroke="#4a5a6a" stroke-width="2"/>
    <text x="115" y="24" text-anchor="middle" font-size="12" fill="#5a3a1a" font-family="sans-serif" font-weight="700">Contagem</text>
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
  <text x="115" y="152" text-anchor="middle" font-size="11" fill="#1a2733" font-family="sans-serif" font-weight="700">soma</text></g>
    <text x="115" y="176" text-anchor="middle" font-size="11" fill="#1a2733" font-family="sans-serif">Soma-se cada quantidade</text>
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
  <text x="115" y="152" text-anchor="middle" font-size="11" fill="#1a2733" font-family="sans-serif" font-weight="700">? total</text></g>
    <text x="115" y="176" text-anchor="middle" font-size="11" fill="#1a2733" font-family="sans-serif">Marina tem ? borrachas</text>
  </g></svg>
""")

# ╔═╡ 00000002-0000-4000-8000-000000000000
HTML("""
<svg viewBox="0 0 614 176" width="100%" style="max-width:520px" xmlns="http://www.w3.org/2000/svg">
    <rect x="20" y="14" width="130" height="56" rx="8" fill="#eef2f6" stroke="#4a5a6a" stroke-width="1.5"/>
      <text x="85" y="36" text-anchor="middle" font-size="13" fill="#1a2733" font-family="sans-serif" font-weight="600">4</text>
      <text x="85" y="54" text-anchor="middle" font-size="11" fill="#3a4a58" font-family="sans-serif">Azuis</text><rect x="168" y="14" width="130" height="56" rx="8" fill="#eef2f6" stroke="#4a5a6a" stroke-width="1.5"/>
      <text x="233" y="36" text-anchor="middle" font-size="13" fill="#1a2733" font-family="sans-serif" font-weight="600">3</text>
      <text x="233" y="54" text-anchor="middle" font-size="11" fill="#3a4a58" font-family="sans-serif">Amarelas</text><rect x="316" y="14" width="130" height="56" rx="8" fill="#eef2f6" stroke="#4a5a6a" stroke-width="1.5"/>
      <text x="381" y="36" text-anchor="middle" font-size="13" fill="#1a2733" font-family="sans-serif" font-weight="600">2</text>
      <text x="381" y="54" text-anchor="middle" font-size="11" fill="#3a4a58" font-family="sans-serif">Verdes</text><rect x="464" y="14" width="130" height="56" rx="8" fill="#eef2f6" stroke="#4a5a6a" stroke-width="1.5"/>
      <text x="529" y="36" text-anchor="middle" font-size="13" fill="#1a2733" font-family="sans-serif" font-weight="600">5</text>
      <text x="529" y="54" text-anchor="middle" font-size="11" fill="#3a4a58" font-family="sans-serif">Vermelhas</text><line x1="85" y1="70" x2="307" y2="92" stroke="#8a97a3" stroke-width="1.5"/><line x1="233" y1="70" x2="307" y2="92" stroke="#8a97a3" stroke-width="1.5"/><line x1="381" y1="70" x2="307" y2="92" stroke="#8a97a3" stroke-width="1.5"/><line x1="529" y1="70" x2="307" y2="92" stroke="#8a97a3" stroke-width="1.5"/>
    <line x1="307" y1="92" x2="307" y2="132" stroke="#8a97a3" stroke-width="1.5"/>
    <rect x="237" y="132" width="140" height="56" rx="8" fill="#dce8f0" stroke="#1f5c85" stroke-width="1.5"/>
    <text x="307" y="154" text-anchor="middle" font-size="13" fill="#0e3550" font-family="sans-serif" font-weight="700">?</text>
    <text x="307" y="172" text-anchor="middle" font-size="11" fill="#0e3550" font-family="sans-serif">Total de borrachas</text>
  </svg>
""")

# ╔═╡ 0000c00d-0000-4000-8000-000000000000
md"""
### Digite os valores do problema

Use os campos abaixo para inserir os valores de entrada — você pode testar com os números do problema ou com outros valores.
"""

# ╔═╡ 0000c00e-0000-4000-8000-000000000000
@bind qtdBorrachasAzuis NumberField(0:100, default=4)

# ╔═╡ 0000c00f-0000-4000-8000-000000000000
@bind qtdBorrachasAmarelas NumberField(0:100, default=3)

# ╔═╡ 0000c010-0000-4000-8000-000000000000
@bind qtdBorrachasVerdes NumberField(0:100, default=2)

# ╔═╡ 0000c011-0000-4000-8000-000000000000
@bind qtdBorrachasVermelhas NumberField(0:100, default=5)

# ╔═╡ 0000e014-0000-4000-8000-000000000000
md"""
### Passo a passo sugerido

Esta atividade pede para resolver o problema de **duas formas diferentes** e comparar os resultados. Para escrever o código, clique no botão **+** abaixo desta célula para criar uma nova célula e siga o passo a passo:

**Primeira forma — soma direta (funciona só para 4 cores):**
1. Guarde cada quantidade de borrachas por cor numa variável, por exemplo `qtdBorrachasAzuis = 4`, `qtdBorrachasAmarelas = 3`, `qtdBorrachasVerdes = 2`, `qtdBorrachasVermelhas = 5`.
2. Defina uma função que soma diretamente os quatro valores, por exemplo `soma(qtdAzuis, qtdAmarelas, qtdVerdes, qtdVermelhas) = qtdAzuis + qtdAmarelas + qtdVerdes + qtdVermelhas`.
3. Aplique a função às quatro variáveis e guarde o resultado, por exemplo `qtdTotalPorSomaDireta = soma(qtdBorrachasAzuis, qtdBorrachasAmarelas, qtdBorrachasVerdes, qtdBorrachasVermelhas)`.

**Segunda forma — array (funciona para qualquer quantidade de cores):**
4. Guarde as mesmas quantidades num array, por exemplo `qtdBorrachasPorCor = [qtdBorrachasAzuis, qtdBorrachasAmarelas, qtdBorrachasVerdes, qtdBorrachasVermelhas]`.
5. Use a função `sum` sobre o array para chegar ao total, por exemplo `qtdTotalComArray = sum(qtdBorrachasPorCor)`.
6. Confirme que `qtdTotalPorSomaDireta` e `qtdTotalComArray` dão o mesmo resultado.

**Desafio extra:** testar as duas funções com uma quinta cor de borracha e comparar o esforço de mudar cada uma.
"""

# ╔═╡ 000ba014-0000-4000-8000-000000000000
md"""
### Rubrica de avaliação (professor)

- [ ] Quatro variáveis de cor definidas com os valores corretos (4, 3, 2, 5)
- [ ] Função `soma` de custo fixo definida e usada
- [ ] Array `qtdBorrachasPorCor` criado com as quatro variáveis
- [ ] `sum` usado sobre o array e resultado igual em ambas as abordagens (14)
"""

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═0000b000-0000-4000-8000-000000000000
# ╠═00000392-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═0000c00d-0000-4000-8000-000000000000
# ╠═0000c00e-0000-4000-8000-000000000000
# ╠═0000c00f-0000-4000-8000-000000000000
# ╠═0000c010-0000-4000-8000-000000000000
# ╠═0000c011-0000-4000-8000-000000000000
# ╠═0000e014-0000-4000-8000-000000000000
# ╠═000ba014-0000-4000-8000-000000000000
