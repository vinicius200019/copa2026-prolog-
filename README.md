# ⚽ Copa 2026 KB | Base de Conhecimento em Prolog

<p align="center">
  <img src="https://img.shields.io/badge/Prolog-EF3B36?style=for-the-badge&logo=swift&logoColor=white" alt="Prolog" />
  <img src="https://img.shields.io/badge/SWI--Prolog-CC0000?style=for-the-badge&logo=gnu&logoColor=white" alt="SWI-Prolog" />
  <img src="https://img.shields.io/badge/Lógica-1572B6?style=for-the-badge&logo=thinkparametric&logoColor=white" alt="Lógica" />
  <img src="https://img.shields.io/badge/FIFA_World_Cup-2026-009A44?style=for-the-badge&logo=fifa&logoColor=white" alt="Copa 2026" />
</p>

---

## 📝 Sobre o Projeto

A **Copa 2026 KB** é uma base de conhecimento desenvolvida em **Prolog** que modela a fase de grupos da Copa do Mundo FIFA 2026 — a primeira edição da história com **48 seleções** distribuídas em **12 grupos** (A a L), sediada por **Estados Unidos, México e Canadá**.

O projeto representa, por meio de **fatos** e **regras lógicas**, as seleções classificadas, suas confederações e todos os confrontos da fase de grupos, permitindo consultas dedutivas sobre o torneio.

> **Status do Projeto:** ✅ Base funcional (fatos + regras de consulta)

---

## ✨ Funcionalidades Principais

* **🌎 Seleções e Confederações:** Cada uma das 48 seleções está registrada com sua confederação (CONMEBOL, UEFA, CONCACAF, CAF, AFC, OFC).
* **🆚 Enfrentamentos da Fase de Grupos:** Todos os 72 confrontos (6 por grupo × 12 grupos) modelados como fatos.
* **🔁 Relação Simétrica:** Os confrontos são declarados uma única vez; a regra `joga_contra/2` resolve automaticamente os dois sentidos (se A joga contra B, então B joga contra A).
* **🔎 Consulta por Confederação:** A regra `federacao/2` lista, uma a uma, as seleções de uma confederação que estão na Copa.
* **📋 Lista Completa:** A regra `paises_da_federacao/2` retorna todas as seleções de uma confederação em uma lista única.
* **🏆 Seleções da Repescagem:** Vagas de playoff já substituídas pelos países classificados (Tchéquia, Bósnia, Turquia, Suécia, Iraque e República do Congo).

---

## ⚙️ Tecnologias Utilizadas

1.  **Linguagem:** Prolog (paradigma lógico/declarativo).
2.  **Interpretador:** [SWI-Prolog](https://www.swi-prolog.org/) — recomendado por ser gratuito e multiplataforma.
3.  **Estrutura:** Fatos (`selecao/2`, `enfrentamento/2`) e regras (`joga_contra/2`, `federacao/2`, `paises_da_federacao/2`).

---

## 📈 Modelagem do Conhecimento

```text
selecao(Pais, Confederacao).        →  FATO: quem joga e por qual confederação
        ↓
enfrentamento(Time1, Time2).        →  FATO: confronto declarado em um sentido
        ↓
joga_contra(A, B).                  →  REGRA: resolve os dois sentidos
        ↓
federacao(Conf, Pais).              →  REGRA: lista países de uma confederação
        ↓
paises_da_federacao(Conf, Lista).   →  REGRA: devolve todos numa lista só
```

---

## 📂 Estrutura do Projeto

```text
copa2026-prolog/
│
├── 📄 README.md
└── 📄 copa2026.pl       ← base de conhecimento (fatos + regras)
```

---

## 🚀 Como Rodar na Sua Máquina

### 1. Pré-requisitos

Instale o interpretador SWI-Prolog:

- **SWI-Prolog** (Recomendado) — https://www.swi-prolog.org/Download.html

### 2. Download do Projeto

```bash
git clone https://github.com/SEU_USUARIO/copa2026-prolog.git
```

### 3. Carregar a Base

Abra o terminal na pasta do projeto e execute:

```bash
swipl copa2026.pl
```

Ou, já dentro do interpretador:

```prolog
?- consult('copa2026.pl').
```

---

## 🎯 Exemplos de Consultas

Após carregar a base, experimente:

```prolog
% Os 3 adversários do Brasil na fase de grupos
?- joga_contra(brasil, X).

% Confirma um confronto nos dois sentidos
?- joga_contra(escocia, brasil).
   true.

% Lista as seleções sul-americanas, uma a uma (aperte ';')
?- federacao(conmebol, X).
   X = brasil ;
   X = paraguai ;
   X = equador ;
   X = uruguai ;
   X = argentina ;
   X = colombia.

% Todas as seleções de uma confederação numa lista só
?- paises_da_federacao(conmebol, L).
   L = [brasil, paraguai, equador, uruguai, argentina, colombia].
```

---

## 🌍 Grupos da Copa 2026

| Grupo | Seleções |
|-------|----------|
| A | México, África do Sul, Coreia do Sul, Tchéquia |
| B | Canadá, Catar, Suíça, Bósnia |
| C | Brasil, Marrocos, Haiti, Escócia |
| D | Estados Unidos, Paraguai, Austrália, Turquia |
| E | Alemanha, Curaçao, Costa do Marfim, Equador |
| F | Holanda, Japão, Tunísia, Suécia |
| G | Bélgica, Egito, Irã, Nova Zelândia |
| H | Espanha, Cabo Verde, Arábia Saudita, Uruguai |
| I | França, Senegal, Noruega, Iraque |
| J | Argentina, Argélia, Áustria, Jordânia |
| K | Portugal, Uzbequistão, Colômbia, República do Congo |
| L | Inglaterra, Croácia, Gana, Panamá |

---

## ⌨️ Desenvolvedores

<strong>Vinícius</strong>
<strong>Artur</strong>
<strong>Khaue</strong>
<strong>Pedro</strong>
<strong>Joao Pedro</strong>
