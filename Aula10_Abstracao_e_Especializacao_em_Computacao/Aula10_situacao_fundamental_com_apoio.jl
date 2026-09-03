### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade com apoio — Ensino Fundamental
## Dinheiro de Claudia e Joana — abstração e especialização (com apoio)

**Situação-problema:**

Claudia tem 15 reais. Ela tem 7 reais a mais que Joana. Quantos reais Joana tem?

*Categoria 3 — Comparação de medidas (referente desconhecido) (Vergnaud)*
"""

# ╔═╡ 0000c001-0000-4000-8000-000000000000
md"""
🪜 **Dica 1**

Quais são os dois números conhecidos — o dinheiro de Claudia e a diferença? Onde aparecem na frase?
"""

# ╔═╡ 0000c002-0000-4000-8000-000000000000
md"""
🪜 **Dica 2**

Claudia tem "a mais" que Joana — para achar o valor de Joana, você soma ou subtrai a diferença do valor de Claudia?
"""

# ╔═╡ 0000c003-0000-4000-8000-000000000000
md"""
🪜 **Dica 3**

A operação certa é a subtração: dinheiro de Claudia menos a diferença. É a regra geral (abstração) especializada para este caso.
"""

# ╔═╡ 00000002-0000-4000-8000-000000000000
HTML("""
<svg viewBox="0 0 480 130" width="100%" style="max-width:480px" xmlns="http://www.w3.org/2000/svg">
    <rect x="20" y="40" width="140" height="56" rx="8" fill="#eef2f6" stroke="#4a5a6a" stroke-width="1.5"/>
    <text x="90" y="62" text-anchor="middle" font-size="13" fill="#1a2733" font-family="sans-serif" font-weight="600">R\$15</text>
    <text x="90" y="80" text-anchor="middle" font-size="11" fill="#3a4a58" font-family="sans-serif">Dinheiro de Claudia</text>
    <rect x="320" y="40" width="140" height="56" rx="8" fill="#dce8f0" stroke="#1f5c85" stroke-width="1.5"/>
    <text x="390" y="62" text-anchor="middle" font-size="13" fill="#0e3550" font-family="sans-serif" font-weight="700">R\$8</text>
    <text x="390" y="80" text-anchor="middle" font-size="11" fill="#0e3550" font-family="sans-serif">Dinheiro de Joana (?)</text>
    <line x1="166" y1="68" x2="306" y2="68" stroke="#8a97a3" stroke-width="1.5" marker-end="url(#arrow)"/>
    <text x="240" y="58" text-anchor="middle" font-size="12" fill="#5a3a1a" font-family="sans-serif" font-weight="700">−7</text>
    <text x="240" y="114" text-anchor="middle" font-size="11" fill="#5a3a1a" font-family="sans-serif">a menos que Claudia</text>
    <defs><marker id="arrow" markerWidth="8" markerHeight="8" refX="6" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 Z" fill="#8a97a3"/></marker></defs>
  </svg>
""")

# ╔═╡ 00000003-0000-4000-8000-000000000000
md"""
**Pensamento Computacional em jogo — abstrair uma regra e depois especializá-la, com apoio a cada passo.** Execute as células de código abaixo, uma por vez.
"""

# ╔═╡ 0000b001-0000-4000-8000-000000000000
md"""
Passo 1 (usa a Dica 1): guardamos o dinheiro de Claudia.
"""

# ╔═╡ 00000004-0000-4000-8000-000000000000
dinheiroDeClaudia = 15   # passo 1

# ╔═╡ 0000b002-0000-4000-8000-000000000000
md"""
Passo 2 (usa a Dica 1): guardamos a diferença.
"""

# ╔═╡ 00000005-0000-4000-8000-000000000000
diferencaDeClaudiaAMais = 7   # passo 2

# ╔═╡ 0000b003-0000-4000-8000-000000000000
md"""
Passo 3 (usa as Dicas 2 e 3): escrevemos a regra geral (abstração) e a especializamos para Claudia e Joana.
"""

# ╔═╡ 00000006-0000-4000-8000-000000000000
subtracao(dinheiroDeClaudia, diferencaDeClaudiaAMais) = dinheiroDeClaudia - diferencaDeClaudiaAMais   # passo 3

dinheiroDeJoana = subtracao(dinheiroDeClaudia, diferencaDeClaudiaAMais)

# ╔═╡ 0000d003-0000-4000-8000-000000000000
if @isdefined(dinheiroDeJoana)
    if dinheiroDeJoana == 8
        HTML("<div style='color:#1a7a3c;font-weight:600;padding:8px;background:#eaf7ee;border-radius:6px;'>✅ Isso mesmo! dinheiroDeJoana = 8</div>")
    else
        HTML("<div style='color:#b3261e;font-weight:600;padding:8px;background:#fbeceb;border-radius:6px;'>❌ Ainda não — revise o cálculo de dinheiroDeJoana</div>")
    end
else
    HTML("<div style='color:#8a97a3;padding:8px;'>Aguardando você definir dinheiroDeJoana...</div>")
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
