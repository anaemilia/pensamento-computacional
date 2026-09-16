### A Pluto.jl notebook ###
# v0.19.27

using Markdown
using InteractiveUtils

macro bind(def, element)
    quote
        local iv = try Base.loaded_modules[Base.PkgId(Base.UUID("6e696c72-6542-2067-7265-42206c756150"), "AbstractPlutoDingetjes")].Bonds.initial_value catch; b -> missing; end
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(iv, el) ? iv(el) : missing
        el
    end
end

# ╔═╡ 00000001-0000-4000-8000-000000000000
using PlutoUI

# ╔═╡ 00000002-0000-4000-8000-000000000000
md"""
# Atividades — Transformações ao longo do Tempo

## 🔄 O Raciocínio Histórico de Transformação

Em História, compreendemos as mudanças através de um processo que conecta:

**Situação no passado → Acontecimento ou Processo Histórico → Nova Situação**

**Exemplo:**
- Trabalho artesanal → Revolução Industrial → Trabalho nas fábricas

---

## 📚 Tarefas de Transformação
"""

# ╔═╡ 00000003-0000-4000-8000-000000000000
md"""
### 1️⃣ Antes e depois da agricultura

Explique como a vida dos grupos humanos mudou depois do desenvolvimento da agricultura. Compare alimentação, moradia e modo de vida.

**Situação no passado → Desenvolvimento da agricultura → Nova situação**
"""

# ╔═╡ 00000004-0000-4000-8000-000000000000
md"""
### 2️⃣ Transformações nas cidades

Observe uma imagem de uma cidade antiga e uma cidade atual. Escreva três mudanças que ocorreram ao longo do tempo.

**Situação no passado → Urbanização e desenvolvimento → Nova situação**
"""

# ╔═╡ 00000005-0000-4000-8000-000000000000
md"""
### 3️⃣ Do trabalho escravizado ao trabalho livre

Explique quais mudanças ocorreram nas relações de trabalho no Brasil após a abolição da escravidão.

**Trabalho escravizado → Abolição da escravidão (1888) → Relações de trabalho livres**
"""

# ╔═╡ 00000006-0000-4000-8000-000000000000
md"""
### 4️⃣ Revolução Industrial

Como o trabalho das pessoas se transformou com o surgimento das máquinas e das fábricas?

**Trabalho artesanal → Revolução Industrial → Trabalho nas fábricas**
"""

# ╔═╡ 00000007-0000-4000-8000-000000000000
md"""
### 5️⃣ Meios de transporte

Compare os meios de transporte utilizados no passado com os atuais. O que mudou? O que permaneceu?

**Transportes primitivos → Inovações tecnológicas → Transportes modernos**
"""

# ╔═╡ 00000008-0000-4000-8000-000000000000
md"""
### 6️⃣ Comunicação ao longo do tempo

Organize em ordem histórica: carta, telégrafo, telefone, celular e internet. Depois explique como essas mudanças transformaram a comunicação entre as pessoas.

**Comunicação oral/manuscrita → Meios eletrônicos → Comunicação digital**
"""

# ╔═╡ 00000009-0000-4000-8000-000000000000
md"""
### 7️⃣ Mudanças na escola

Pergunte a uma pessoa mais velha como era a escola na época em que ela estudava. Compare com a escola atual e registre as principais transformações.

**Escola do passado → Inovações pedagógicas e tecnológicas → Escola atual**
"""

# ╔═╡ 00000010-0000-4000-8000-000000000000
md"""
### 8️⃣ Transformação das moradias

Como as formas de moradia mudaram desde as primeiras comunidades humanas até as cidades atuais?

**Habitações primitivas → Desenvolvimento urbano → Habitações modernas**
"""

# ╔═╡ 00000011-0000-4000-8000-000000000000
md"""
### 9️⃣ Mudanças provocadas pela chegada dos portugueses

Como a chegada dos portugueses transformou a vida dos povos indígenas que já habitavam o território brasileiro?

**Povos indígenas isolados → Colonização portuguesa → Nova configuração social e econômica**
"""

# ╔═╡ 00000012-0000-4000-8000-000000000000
md"""
### 🔟 Transformações no campo

Compare o trabalho agrícola feito com ferramentas manuais com a agricultura mecanizada. Quais mudanças ocorreram?

**Agricultura familiar/manual → Mecanização → Agronegócio/agricultura industrial**
"""

# ╔═╡ 00000013-0000-4000-8000-000000000000
md"""
### 1️⃣1️⃣ Linha do tempo das transformações

Escolha um objeto, como telefone, televisão, carro ou computador. Faça uma linha do tempo mostrando como ele se transformou.

**Objeto primitivo/inexistente → Inovações sucessivas → Objeto atual**
"""

# ╔═╡ 00000014-0000-4000-8000-000000000000
md"""
### 1️⃣2️⃣ Mudança e permanência

Escolha uma festa, costume ou tradição da sua comunidade. Identifique:
- Como era antigamente
- Como é atualmente
- O que mudou
- O que permaneceu

**Tradição histórica → Adaptações culturais → Tradição contemporânea**
"""

# ╔═╡ 00000015-0000-4000-8000-000000000000
md"""
### 1️⃣3️⃣ Reflexão Final

Escolha uma das transformações estudadas acima e analise:

1. **Qual era a situação no passado?**
2. **Qual foi o acontecimento ou processo que causou a transformação?**
3. **Qual é a situação atual?**
4. **Como você explica essa transformação?**

---

## 📖 Resumo do Raciocínio

O pensamento histórico sobre transformações segue sempre este padrão:

```
Situação no passado 
        ↓
Acontecimento/Processo Histórico
        ↓
Nova Situação
```

Compreender esse raciocínio nos ajuda a:
- Reconhecer que mudanças têm causas
- Identificar permanências (o que não mudou)
- Avaliar impactos das transformações na sociedade
- Desenvolver pensamento crítico sobre o presente
"""
