### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

# ╔═╡ 00000001-0000-4000-8000-000000000000
md"""
# Atividade com apoio — Ensino Fundamental
## Dinheiro de Ingrid e Ligianne — limites da computação (com apoio)

**Situação-problema:**

Ingrid tem 12 reais a mais que Ligianne. Se Ligianne possui 27 reais, quantos reais Ingrid tem?

*Categoria 3 — Comparação de medidas (referendo desconhecido) (Vergnaud)*
"""

# ╔═╡ 0000c001-0000-4000-8000-000000000000
md"""
🪜 **Dica 1**

Quais são os dois números conhecidos — o dinheiro de Ligianne e a diferença? Onde aparecem na frase?
"""

# ╔═╡ 0000c002-0000-4000-8000-000000000000
md"""
🪜 **Dica 2**

Ingrid tem "a mais" que Ligianne — isso é uma soma ou uma subtração aplicada aos dois valores conhecidos?
"""

# ╔═╡ 0000c003-0000-4000-8000-000000000000
md"""
🪜 **Dica 3**

A operação certa é a soma: dinheiro de Ligianne mais a diferença. Lembre-se: o computador só manipula os números — ele soma perfeitamente, mas não sabe o que é "dinheiro".
"""

# ╔═╡ 00000002-0000-4000-8000-000000000000
HTML("""
<svg viewBox="0 0 480 130" width="100%" style="max-width:480px" xmlns="http://www.w3.org/2000/svg">
    <rect x="20" y="40" width="140" height="56" rx="8" fill="#eef2f6" stroke="#4a5a6a" stroke-width="1.5"/>
    <text x="90" y="62" text-anchor="middle" font-size="13" fill="#1a2733" font-family="sans-serif" font-weight="600">R\$27</text>
    <text x="90" y="80" text-anchor="middle" font-size="11" fill="#3a4a58" font-family="sans-serif">Dinheiro de Ligianne</text>
    <rect x="320" y="40" width="140" height="56" rx="8" fill="#dce8f0" stroke="#1f5c85" stroke-width="1.5"/>
    <text x="390" y="62" text-anchor="middle" font-size="13" fill="#0e3550" font-family="sans-serif" font-weight="700">R\$39</text>
    <text x="390" y="80" text-anchor="middle" font-size="11" fill="#0e3550" font-family="sans-serif">Dinheiro de Ingrid (?)</text>
    <line x1="166" y1="68" x2="306" y2="68" stroke="#8a97a3" stroke-width="1.5" marker-end="url(#arrow)"/>
    <text x="240" y="58" text-anchor="middle" font-size="12" fill="#5a3a1a" font-family="sans-serif" font-weight="700">+12</text>
    <text x="240" y="114" text-anchor="middle" font-size="11" fill="#5a3a1a" font-family="sans-serif">a mais que Ligianne</text>
    <defs><marker id="arrow" markerWidth="8" markerHeight="8" refX="6" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 Z" fill="#8a97a3"/></marker></defs>
  </svg>
""")

# ╔═╡ 00000003-0000-4000-8000-000000000000
md"""
**Pensamento Computacional em jogo — o que o computador calcula vs. o que ele entende, com apoio a cada passo.** Execute as células de código abaixo, uma por vez.
"""

# ╔═╡ 0000b001-0000-4000-8000-000000000000
md"""
Passo 1 (usa a Dica 1): guardamos o dinheiro de Ligianne.
"""

# ╔═╡ 00000004-0000-4000-8000-000000000000
dinheiroDeLigianne = 27   # passo 1

# ╔═╡ 0000b002-0000-4000-8000-000000000000
md"""
Passo 2 (usa a Dica 1): guardamos a diferença.
"""

# ╔═╡ 00000005-0000-4000-8000-000000000000
diferencaDeIngridAMais = 12   # passo 2

# ╔═╡ 0000b003-0000-4000-8000-000000000000
md"""
Passo 3 (usa as Dicas 2 e 3): definimos a função soma e a usamos para calcular o dinheiro de Ingrid.
"""

# ╔═╡ 00000006-0000-4000-8000-000000000000
soma(dinheiroDeLigianne, diferencaDeIngridAMais) = dinheiroDeLigianne + diferencaDeIngridAMais   # passo 3

dinheiroDeIngrid = soma(dinheiroDeLigianne, diferencaDeIngridAMais)

# ╔═╡ 0000d003-0000-4000-8000-000000000000
if @isdefined(dinheiroDeIngrid)
    if dinheiroDeIngrid == 39
        HTML("<div style='color:#1a7a3c;font-weight:600;padding:8px;background:#eaf7ee;border-radius:6px;'>✅ Isso mesmo! dinheiroDeIngrid = 39</div>")
    else
        HTML("<div style='color:#b3261e;font-weight:600;padding:8px;background:#fbeceb;border-radius:6px;'>❌ Ainda não — revise o cálculo de dinheiroDeIngrid</div>")
    end
else
    HTML("<div style='color:#8a97a3;padding:8px;'>Aguardando você definir dinheiroDeIngrid...</div>")
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
