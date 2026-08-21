# Organização das Aulas — Pensamento Computacional

Todos os .pptx/.ppt/.potx da pasta original (incluindo subpastas) foram lidos e reorganizados em ordem de conteúdo, uma pasta por aula. Cada aula = 2 horas, considerando 1 tema central por sessão. Cada pasta também tem um notebook Pluto (`AulaNN_notebook.jl`) com as tarefas práticas em Julia daquela aula.

## Como a ordem foi definida

- Aulas 1 a 9 seguem exatamente a ementa oficial da disciplina (arquivo "_Pensamento computacional.docx.pdf", 60H = 30H teórica + 30H prática) e a sequência já numerada 01-09 encontrada em PROFCOMP_Julia_Pluto_9_Blocos, confirmada pelo material PROFCOMP_Julia_Pluto_Ementa_90_slides.pptx ("9 blocos x 10 tarefas").
- Aulas 10 a 14 trazem o módulo complementar de Abstração, Tipos e Estruturas de Dados + o minicurso de Complexidade de Algoritmos — não fazem parte da ementa formal, mas dão sequência lógica ao curso (abstração -> tipos -> categorias/ações -> arrays -> complexidade).
- Aula 15 é o fechamento/discussão final.
- Cada pasta de aula contém o arquivo de teoria e, quando existia, uma síntese de apoio.

## Sequência

| Aula | Tema | Duração | Arquivos |
|---|---|---|---|
| 1 | Introdução à Computação e ao Pensamento Computacional | 2h | Teoria + Síntese |
| 2 | Pensamento Indutivo | 2h | Teoria |
| 3 | Pensamento Dedutivo | 2h | Teoria + Síntese (Indução e Dedução) |
| 4 | Problemas e Algoritmos | 2h | Teoria |
| 5 | Representação de Processos e Dados | 2h | Teoria |
| 6 | Decomposição | 2h | Teoria |
| 7 | Generalização | 2h | Teoria |
| 8 | Transformação | 2h | Teoria |
| 9 | Limites da Computação | 2h | Teoria (versão CORRIGIDO) |
| 10 | Abstração e Especialização em Computação | 2h | Teoria |
| 11 | Definindo Novos Tipos | 2h | Teoria |
| 12 | Ações Ligadas a Categorias | 2h | Teoria |
| 13 | Arrays / Estruturas de Dados | 2h | Teoria |
| 14 | Complexidade de Algoritmos | 2h | Teoria |
| 15 | Encerramento e Discussão | 2h | Teoria |

Total: 15 aulas x 2h = 30h. (As 30h restantes da carga prática da disciplina correspondem aos exercícios em Julia/Pluto do material de apoio, não a slides adicionais.)

## Material_de_Apoio_Pratica_Perguntas/

PROFCOMP_Julia_Pluto_Ementa_90_slides.pptx — deck único com as 10 perguntas/tarefas práticas de cada um dos 9 blocos (90 slides no total). Cobre as Aulas 1-9; não foi dividido por aula para não fragmentar o arquivo original, mas cada bloco de 10 slides corresponde à aula de mesmo número.

## Rascunhos_e_Versoes_Anteriores/

Versões duplicadas, rascunhos e iterações anteriores que não entraram na sequência principal (nada foi apagado, só separado para revisão):

- PROFCOMP_Julia_Pluto_9_Blocos_Fonte_1x e _Fonte_2x: cópias dos mesmos 9 blocos em tamanhos de fonte diferentes.
- PROFCOMP_Julia_Pluto_9_Blocos_extras: template .potx do bloco 3 e a versão do bloco 9 anterior à correção.
- Panorama_Geral_do_Curso_rascunhos: rascunhos do bloco de Dedução ampliada e as 5 versões evolutivas de "Aula por Perguntas", todas substituídas pelo deck final de 90 slides.
- Sinteses_Especificas_por_Bloco_rascunhos: versão .ppt mais antiga da síntese da Aula 1.
- Minicurso_Complexidade_de_Algoritmos_rascunhos: versão "Visual_Aprimorado" do minicurso, substituída pela versão "Final".

Se a ordem ou o agrupamento de alguma aula não fizer sentido, me avise que ajusto.

## Atualização — todas as aulas ampliadas (29/07/2026)

Todos os `_Teoria.pptx` de Aula01 a Aula13 foram revisados e ampliados. Contagem de slides antes → depois:

| Aula | Antes | Depois | O que mudou |
|---|---|---|---|
| 1 | 10 | 19 | Corrigida corrupção de layout; recuperadas as tarefas 1.8-1.10 (faltavam); +6 slides novos: objetivos, origens do PC (Papert 1980/Wing 2006), definição de Wing, os 4 pilares do PC, PC x programar, PC na BNCC/PROFCOMP. |
| 2 | 10 | 15 | Corrigida corrupção; recuperadas as tarefas 2.8-2.10; +4 slides: objetivos, conceito de indução, indução na prática, conexão com a Aula 3. |
| 3 | 10 | 15 | Corrigida corrupção; recuperadas as tarefas 3.8-3.10; +4 slides: objetivos, conceito de dedução, indução x dedução, conexão com a Aula 4. |
| 4 | 10 | 15 | Corrigida corrupção; recuperadas as tarefas 4.8-4.10; +4 slides: objetivos, problema x algoritmo, do algoritmo ao código, conexão com a Aula 5. |
| 5 | 10 | 15 | Corrigida corrupção; recuperadas as tarefas 5.8-5.10; +4 slides: objetivos, por que representar, estruturas básicas, conexão com a Aula 6. |
| 6 | 10 | 15 | Corrigida corrupção; recuperadas as tarefas 6.8-6.10; +4 slides: objetivos, conceito de decomposição, decomposição como depuração, conexão com a Aula 7. |
| 7 | 10 | 15 | Corrigida corrupção; recuperadas as tarefas 7.8-7.10; +4 slides: objetivos, conceito de generalização, cuidados ao generalizar, conexão com a Aula 8. |
| 8 | 10 | 15 | Corrigida corrupção; recuperadas as tarefas 8.8-8.10; +4 slides: objetivos, conceito de transformação, pipelines de transformação, conexão com a Aula 9. |
| 9 | 12 | 16 | Já estava íntegro e completo (bloco 9 + referências); +4 slides: objetivos, Turing e o problema da parada, limites no dia a dia, fechamento do ciclo dos 9 blocos. |
| 10 | 9 | 10 | Corrigido bug visual pré-existente (título duplicado sobreposto nos slides 1-2); +1 slide de objetivos da aula. |
| 11 | 6 | 7 | +1 slide de objetivos da aula. |
| 12 | 3 | 5 | +2 slides: objetivos da aula e mais exemplos do dia a dia (ação genérica x especializada) — este era o mais curto de todos. |
| 13 | .ppt (32) | .pptx (33) | Convertido de .ppt para .pptx; +1 slide explicando por que um capítulo de Java (Liang) está no material e como ele se conecta às Aulas 10-12. O .ppt original foi mantido na pasta, agora redundante com o .pptx. |
| 14 | 36 | 36 | Revisado — já estava completo e íntegro, nenhuma mudança necessária. |
| 15 | 12 | 12 | Revisado — já estava completo e íntegro, nenhuma mudança necessária. |

Para as Aulas 2-9, o mecanismo foi o mesmo da Aula 1: os arquivos `_Teoria.pptx` originais eram recortes truncados (só 7 das 10 tarefas de cada bloco) e corrompidos (referências de layout duplicadas) do deck mestre `PROFCOMP_Julia_Pluto_9_Blocos`. Foram reconstruídos a partir do deck completo `Material_de_Apoio_Pratica_Perguntas/Perguntas_9_Blocos_x_10_Tarefas_Aulas01-09.pptx`, no mesmo estilo visual (fundo claro, títulos em Aptos Display, badge numerado no canto superior direito).

Para as Aulas 10-13 (módulo complementar, sem deck mestre correspondente), a abordagem foi mais leve: os decks já tinham bastante conteúdo próprio (gerados com Gamma, com ilustrações), então só acrescentei slides de objetivo/contexto em estilo simples e neutro (título em negrito + tópicos), sem tentar reproduzir as ilustrações geradas por IA do Gamma.

Detalhe menor não corrigido: nos slides de tarefa ".10" (ex.: Aula 1 slide 19, tarefa 1.10), o rótulo numérico fica levemente sobreposto ao título — é um problema pré-existente no deck mestre original, presente potencialmente em qualquer tarefa ".10" dos 9 blocos. Posso corrigir se quiser.

## Notebooks Pluto — `AulaNN_notebook.jl` (29/07/2026)

Cada uma das 15 pastas agora tem um notebook Pluto (formato `.jl`) para abrir com `using Pluto; Pluto.run()`.

- **Aulas 1-9**: um notebook por bloco, com uma célula por tarefa (10 tarefas cada). O código de cada tarefa é o exemplo real "EXEMPLO EM JULIA" que já existia nos slides mestres (`Material_de_Apoio_Pratica_Perguntas`) — não foi inventado, só extraído e organizado em células reativas, cada uma isolada em um bloco `let...end` para não haver conflito de nomes de variável entre tarefas (ex.: várias tarefas usam a variável `seq`).
- **Aulas 10-13**: notebooks novos, escritos a partir do conteúdo dos slides (abstração/especialização, tipos com `struct`, despacho múltiplo, arrays multidimensionais). Onde a tarefa define um tipo (`struct`/`abstract type`), a célula usa `begin...end` em vez de `let...end`, porque em Julia a definição de tipos precisa ficar "no nível do topo" — dentro de um `let` isso dá erro.
- **Aula 14**: notebook com 4 experimentos reais de complexidade — contagem de passos em laços simples e aninhados, comparação de curvas de crescimento (linear, log-linear, quadrática, exponencial), Fibonacci recursivo vs. iterativo, e custo marginal entre tamanhos de entrada.
- **Aula 15**: notebook mais leve, com duas células de revisão (indução/dedução, e decomposição/generalização/transformação juntas) e uma célula de markdown com as 8 perguntas de fechamento da disciplina.

Não há Julia instalado neste ambiente, então não consegui executar os notebooks de ponta a ponta — revisei a sintaxe manualmente com cuidado (inclusive corrigindo, antes de entregar, alguns bugs de escopo que teriam quebrado a reatividade do Pluto: `struct` dentro de `let` e uma variável usada em uma tarefa sem estar definida na mesma célula). Vale rodar cada notebook uma vez no seu Pluto para confirmar antes de usar em aula.

## Atualização — unificação visual e integração do módulo complementar (21/08/2026)

Nova rodada de trabalho, a pedido: "unificar e organizar tirando as repetições, refazendo conteúdo só se necessário". Não houve reescrita de conteúdo (o conteúdo das Aulas 1-13 já estava correto da rodada anterior) — o foco foi (1) unificar visualmente as Aulas 1-9 ao padrão de design já usado nas Aulas 10-13, e (2) integrar o módulo complementar (antigo pacote separado "Abstração, Tipos e Estruturas de Dados") de forma mais amarrada à sequência do curso.

### Integração das Aulas 10-13

O módulo complementar (Aula10_Teoria, Aula11_Teoria, Aula12_Teoria, Aula13_Teoria) foi reconstruído a partir da versão já melhorada em outra sessão (pasta separada "Abstração, Tipos e Estruturas de Dados"), com o mesmo sistema visual agora usado em todo o curso (ver abaixo) e pequenos ajustes de integração:

- **Aula 10** (10 slides): passou a unir os antigos temas "Abstração e Especialização" + "Tipos" num só encontro de 2h, já que juntos formam uma unidade coesa de conteúdo.
- **Aula 11** (7 slides): "Definindo Novos Tipos", renumerada para a sequência do curso.
- **Aula 12** (5 slides): "Ações Ligadas a Categorias", renumerada.
- **Aula 13 — Parte 1 de 2** (6 slides, `Aula13_Sintese_Conceitos.pptx`): nova síntese de conceitos de Arrays/Estruturas de Dados, complementar ao capítulo de Java (Liang) que continua como Parte 2 (`Aula13_Teoria.pptx`, .ppt original — não foi alterado, apenas mantido como está, conforme pedido).

As versões anteriores desses 4 decks foram arquivadas (não apagadas) em `Rascunhos_e_Versoes_Anteriores/Aulas_10-13_Versoes_Anteriores_Gamma/`.

### Unificação visual das Aulas 1-9

Os decks `Aula01_Teoria.pptx` a `Aula09_Teoria.pptx` foram reconstruídos com o mesmo sistema de design das Aulas 10-13 (que por sua vez segue o padrão já estabelecido no módulo complementar): fundo escuro nos slides de abertura/fechamento e claro nos slides de conteúdo, paleta azul-marinho/verde-azulado/âmbar, ícones em círculos coloridos, rodapé padronizado ("Aula N · Título" à esquerda, "NN / total" à direita), e cartão de "A seguir" no fechamento de cada aula apontando para a próxima. O conteúdo (textos, tarefas, exemplos de código Julia) não mudou — apenas o layout e a identidade visual, para que as 13 primeiras aulas tenham aparência consistente entre si.

As versões anteriores (com o visual antigo, fundo claro/títulos Aptos Display) foram arquivadas em `Rascunhos_e_Versoes_Anteriores/Aulas_01-09_Versoes_Anteriores/`.

### Aulas 14 e 15 — mantidas sem alteração

As Aulas 14 (Complexidade de Algoritmos) e 15 (Encerramento) não foram redesenhadas. Na revisão, os dois decks já usavam um design profissional e coeso (fundo azul-marinho escuro com cartões coloridos), então — seguindo a instrução de só refazer o que fosse necessário — optei por não mexer neles. Se preferir que sigam exatamente o mesmo padrão visual das Aulas 1-13, é só avisar que eu adapto.

### Limpeza da pasta raiz

Aproximadamente 28 arquivos .pptx/.ppt soltos na raiz da pasta (fora das subpastas AulaNN) eram cópias duplicadas — verificadas byte a byte (md5sum) contra versões já arquivadas em `Rascunhos_e_Versoes_Anteriores/` ou já presentes dentro das pastas de aula — ou eram versões anteriores à revisão de 29/07/2026. Todas foram movidas (nada foi apagado) para `Rascunhos_e_Versoes_Anteriores/Copias_Soltas_Ja_Integradas_na_Raiz/`.
