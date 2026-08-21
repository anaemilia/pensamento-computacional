### A Pluto.jl notebook ###
# v0.19.45

using Markdown
using InteractiveUtils

# ╔═╡ 685fa919-99dd-4198-9ed8-486b095105de
md"""
# Aula 14 — Complexidade de Algoritmos

Notebook Pluto com os experimentos práticos desta aula: contar passos em laços, comparar curvas de crescimento e comparar estratégias de Fibonacci.

*Pensamento Computacional — PROFCOMP*
"""

# ╔═╡ 32f8940c-ae9c-4adb-9ede-0d2dd8eeff75
md"""
### Experimento 1 — Contando passos em laços

**No Pluto:**
- Conte quantas vezes o corpo de um laço simples executa, para diferentes tamanhos de `n`.
- Faça o mesmo para um laço duplo (aninhado).
- Compare: o laço simples cresce de forma linear; o duplo, quadrática.
"""

# ╔═╡ d41167af-438e-4add-be60-6e23efe8f58f
let
    function passos_laco_simples(n)
        contador = 0
        for i in 1:n
            contador += 1
        end
        contador
    end

    function passos_laco_duplo(n)
        contador = 0
        for i in 1:n, j in 1:n
            contador += 1
        end
        contador
    end

    tamanhos = [5, 10, 20, 40]
    (simples = [passos_laco_simples(n) for n in tamanhos],
     duplo   = [passos_laco_duplo(n) for n in tamanhos])
end

# ╔═╡ dfa32b5f-78a2-4322-8a0f-f3770278525f
md"""
### Experimento 2 — Comparando curvas de crescimento

**No Pluto:**
- Calcule, para os mesmos valores de `n`, quanto valem `n`, `n·log(n)`, `n²` e `2ⁿ`.
- Observe como a distância entre elas aumenta rapidamente — essa é a ideia central por trás do Big O.
"""

# ╔═╡ 8d9e866b-6e61-40f4-ac65-cc6acff33582
let
    ns = [2, 4, 8, 16, 32]
    curvas = (
        linear      = [n for n in ns],
        linearitmica = [round(n * log2(n), digits=1) for n in ns],
        quadratica  = [n^2 for n in ns],
        exponencial = [2^n for n in ns],
    )
    curvas
end

# ╔═╡ 92b0aa78-d081-41db-bee4-654a8126455e
md"""
### Experimento 3 — Fibonacci: recursivo ingênuo vs iterativo

**No Pluto:**
- Implemente Fibonacci de forma recursiva ingênua (que recalcula os mesmos valores várias vezes).
- Implemente Fibonacci de forma iterativa (um laço simples).
- Compare quantas *chamadas* o recursivo faz para `n` pequeno — o crescimento é exponencial.
"""

# ╔═╡ 22f1f2b0-5ba9-4e36-969c-bfe12a16d4dd
let
    function fib_recursivo(n)
        n <= 1 && return n
        fib_recursivo(n - 1) + fib_recursivo(n - 2)
    end

    function fib_iterativo(n)
        n <= 1 && return n
        a, b = 0, 1
        for _ in 2:n
            a, b = b, a + b
        end
        b
    end

    contador_chamadas = Ref(0)
    function fib_contando(n)
        contador_chamadas[] += 1
        n <= 1 && return n
        fib_contando(n - 1) + fib_contando(n - 2)
    end

    resultado = fib_recursivo(10) == fib_iterativo(10)
    contador_chamadas[] = 0
    fib_contando(10)
    chamadas_para_10 = contador_chamadas[]
    (resultado, chamadas_para_10)
end

# ╔═╡ a0571721-3e58-4b08-852d-71e55266cf84
md"""
### Experimento 4 — Custo marginal: quanto cada novo `n` custa a mais

**No Pluto:**
- Calcule o número de chamadas de `fib_recursivo` (via a versão que conta chamadas) para uma sequência de valores de `n`.
- Observe a diferença entre um valor e o seguinte — o "custo marginal" cresce, não é constante.
"""

# ╔═╡ 3c88937a-97ca-4438-b8ae-cf350651d866
let
    function chamadas_fib(n)
        contador = Ref(0)
        function interno(k)
            contador[] += 1
            k <= 1 && return k
            interno(k - 1) + interno(k - 2)
        end
        interno(n)
        contador[]
    end

    valores_n = [5, 10, 15, 20]
    totais = [chamadas_fib(n) for n in valores_n]
    custo_marginal = diff(totais)
    (totais = totais, custo_marginal = custo_marginal)
end

# ╔═╡ Cell order:
# ╟─685fa919-99dd-4198-9ed8-486b095105de
# ╟─32f8940c-ae9c-4adb-9ede-0d2dd8eeff75
# ╠═d41167af-438e-4add-be60-6e23efe8f58f
# ╟─dfa32b5f-78a2-4322-8a0f-f3770278525f
# ╠═8d9e866b-6e61-40f4-ac65-cc6acff33582
# ╟─92b0aa78-d081-41db-bee4-654a8126455e
# ╠═22f1f2b0-5ba9-4e36-969c-bfe12a16d4dd
# ╟─a0571721-3e58-4b08-852d-71e55266cf84
# ╠═3c88937a-97ca-4438-b8ae-cf350651d866
