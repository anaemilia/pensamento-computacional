### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade — Ensino Fundamental
## Dinheiro de Carlos, João e Pedro — encerramento: juntando os conceitos

**Situação-problema:**

Carlos tem 7 reais a mais que João. João tem 2 reais a menos que Pedro. Qual é a relação entre a quantia de Carlos e a de Pedro?

*Categoria 6 — Composição de relações (Vergnaud)*
"""

# ╔═╡ 00000002-0000-4000-8000-000000000000
HTML("""
<svg viewBox="0 0 480 150" width="100%" style="max-width:480px" xmlns="http://www.w3.org/2000/svg">
    <rect x="40" y="20" width="120" height="50" rx="8" fill="#eef2f6" stroke="#4a5a6a" stroke-width="1.5"/>
      <text x="100" y="50" text-anchor="middle" font-size="13" fill="#1a2733" font-family="sans-serif" font-weight="600">Pedro</text><rect x="180" y="20" width="120" height="50" rx="8" fill="#eef2f6" stroke="#4a5a6a" stroke-width="1.5"/>
      <text x="240" y="50" text-anchor="middle" font-size="13" fill="#1a2733" font-family="sans-serif" font-weight="600">João</text><rect x="320" y="20" width="120" height="50" rx="8" fill="#eef2f6" stroke="#4a5a6a" stroke-width="1.5"/>
      <text x="380" y="50" text-anchor="middle" font-size="13" fill="#1a2733" font-family="sans-serif" font-weight="600">Carlos</text>
    <line x1="160" y1="45" x2="174" y2="45" stroke="#8a97a3" stroke-width="1.5" marker-end="url(#arrow2)"/>
    <text x="170" y="37" text-anchor="middle" font-size="11" fill="#5a3a1a" font-family="sans-serif" font-weight="700">−2</text>
    <line x1="300" y1="45" x2="314" y2="45" stroke="#8a97a3" stroke-width="1.5" marker-end="url(#arrow2)"/>
    <text x="310" y="37" text-anchor="middle" font-size="11" fill="#5a3a1a" font-family="sans-serif" font-weight="700">+7</text>
    <path d="M 100 80 L 100 100 L 380 100 L 380 80" fill="none" stroke="#1f5c85" stroke-width="1.5"/>
    <text x="240" y="118" text-anchor="middle" font-size="12" fill="#0e3550" font-family="sans-serif" font-weight="700">Carlos em relação a Pedro: +5</text>
    <defs><marker id="arrow2" markerWidth="8" markerHeight="8" refX="6" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 Z" fill="#8a97a3"/></marker></defs>
  </svg>
""")

# ╔═╡ 00000003-0000-4000-8000-000000000000
md"""
**Pensamento Computacional em jogo — decompor, abstrair e compor a solução final.** Duas relações conhecidas (Carlos-João e João-Pedro) são compostas numa relação final (Carlos-Pedro), encadeando os conceitos vistos ao longo do semestre.

Execute as células de código abaixo, uma por vez, e observe o resultado de cada uma antes de seguir para a próxima.
"""

# ╔═╡ 00000004-0000-4000-8000-000000000000
diferencaDeCarlosSobreJoao = 7   # Carlos tem 7 reais a mais que João

# ╔═╡ 00000005-0000-4000-8000-000000000000
diferencaDeJoaoSobrePedro = -2   # João tem 2 reais a menos que Pedro

# ╔═╡ 00000006-0000-4000-8000-000000000000
diferencaDeCarlosSobrePedro = diferencaDeCarlosSobreJoao + diferencaDeJoaoSobrePedro   # composição das duas relações

# ╔═╡ Cell order:
# ╠═00000001-0000-4000-8000-000000000000
# ╠═00000002-0000-4000-8000-000000000000
# ╠═00000003-0000-4000-8000-000000000000
# ╠═00000004-0000-4000-8000-000000000000
# ╠═00000005-0000-4000-8000-000000000000
# ╠═00000006-0000-4000-8000-000000000000
