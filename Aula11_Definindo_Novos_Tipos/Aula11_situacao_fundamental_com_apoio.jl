### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade com apoio — Ensino Fundamental
## Chocolates de Geisa — definindo novos tipos (com apoio)

**Situação-problema:**

Geisa tinha uma caixa com 35 chocolates. Comeu 2 ontem e 5 hoje (7 no total). Quantos chocolates ainda tem?

*Categoria 1 — Composição de medidas (Vergnaud)*
"""

# ╔═╡ 0000c001-0000-4000-8000-000000000000
md"""
🪜 **Dica 1**

Quais são os números conhecidos — o estoque inicial e o total consumido (2 + 5 = 7)? Onde aparecem na frase?
"""

# ╔═╡ 0000c002-0000-4000-8000-000000000000
md"""
🪜 **Dica 2**

O estoque diminuiu com o consumo. Que operação, aplicada ao estoque e ao total consumido, revela o que restou?
"""

# ╔═╡ 0000c003-0000-4000-8000-000000000000
md"""
🪜 **Dica 3**

A operação certa é a subtração: estoque menos total consumido. É exatamente isso que o código abaixo faz, passo a passo.
"""

# ╔═╡ 00000002-0000-4000-8000-000000000000
HTML("""
<svg viewBox="0 0 480 130" width="100%" style="max-width:480px" xmlns="http://www.w3.org/2000/svg">
    <rect x="20" y="40" width="140" height="56" rx="8" fill="#eef2f6" stroke="#4a5a6a" stroke-width="1.5"/>
    <text x="90" y="62" text-anchor="middle" font-size="13" fill="#1a2733" font-family="sans-serif" font-weight="600">35</text>
    <text x="90" y="80" text-anchor="middle" font-size="11" fill="#3a4a58" font-family="sans-serif">Estoque inicial</text>
    <rect x="320" y="40" width="140" height="56" rx="8" fill="#dce8f0" stroke="#1f5c85" stroke-width="1.5"/>
    <text x="390" y="62" text-anchor="middle" font-size="13" fill="#0e3550" font-family="sans-serif" font-weight="700">7</text>
    <text x="390" y="80" text-anchor="middle" font-size="11" fill="#0e3550" font-family="sans-serif">Total consumido (2+5)</text>
    <line x1="166" y1="68" x2="306" y2="68" stroke="#8a97a3" stroke-width="1.5" marker-end="url(#arrow)"/>
    <text x="240" y="58" text-anchor="middle" font-size="12" fill="#5a3a1a" font-family="sans-serif" font-weight="700">−7</text>
    <text x="240" y="114" text-anchor="middle" font-size="11" fill="#5a3a1a" font-family="sans-serif">consumidos ao todo</text>
    <defs><marker id="arrow" markerWidth="8" markerHeight="8" refX="6" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 Z" fill="#8a97a3"/></marker></defs>
  </svg>
""")

# ╔═╡ 00000003-0000-4000-8000-000000000000
md"""
**Pensamento Computacional em jogo — organizar dados relacionados, com apoio a cada passo.** Execute as células de código abaixo, uma por vez.
"""

# ╔═╡ 0000b001-0000-4000-8000-000000000000
md"""
Passo 1 (usa a Dica 1): guardamos o estoque inicial.
"""

# ╔═╡ 00000004-0000-4000-8000-000000000000
qtdEstoqueDeChocolates = 35   # passo 1

# ╔═╡ 0000b002-0000-4000-8000-000000000000
md"""
Passo 2 (usa a Dica 1): guardamos o total consumido (2 ontem + 5 hoje).
"""

# ╔═╡ 00000005-0000-4000-8000-000000000000
qtdConsumidaAoTodo = 7   # passo 2

# ╔═╡ 0000b003-0000-4000-8000-000000000000
md"""
Passo 3 (usa as Dicas 2 e 3): definimos a função subtracao para calcular quantos chocolates restam.
"""

# ╔═╡ 00000006-0000-4000-8000-000000000000
subtracao(qtdEstoqueDeChocolates, qtdConsumidaAoTodo) = qtdEstoqueDeChocolates - qtdConsumidaAoTodo   # passo 3

qtdChocolatesRestantes = subtracao(qtdEstoqueDeChocolates, qtdConsumidaAoTodo)

# ╔═╡ 0000d003-0000-4000-8000-000000000000
if @isdefined(qtdChocolatesRestantes)
    if qtdChocolatesRestantes == 28
        HTML("<div style='color:#1a7a3c;font-weight:600;padding:8px;background:#eaf7ee;border-radius:6px;'>✅ Isso mesmo! qtdChocolatesRestantes = 28</div>")
    else
        HTML("<div style='color:#b3261e;font-weight:600;padding:8px;background:#fbeceb;border-radius:6px;'>❌ Ainda não — revise o cálculo de qtdChocolatesRestantes</div>")
    end
else
    HTML("<div style='color:#8a97a3;padding:8px;'>Aguardando você definir qtdChocolatesRestantes...</div>")
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
