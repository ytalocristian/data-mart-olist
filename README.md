# Data Mart de Vendas - Olist E-commerce 🛒

## 📋 Sobre o Projeto
Este projeto consiste na construção de um Data Mart completo (End-to-End) para análise de dados de vendas do e-commerce brasileiro Olist. O objetivo foi transformar dados brutos transacionais em informações estratégicas para tomada de decisão.

## 🛠 Tecnologias Utilizadas
* **ETL:** Pentaho Data Integration (PDI) 10.2
* **Banco de Dados:** PostgreSQL 18
* **Visualização:** Microsoft Power BI
* **Modelagem:** Star Schema (Esquema Estrela)

## 🏗 Arquitetura
O projeto segue o fluxo clássico de BI:
1.  **Extração:** Leitura de arquivos CSV públicos da Olist.
2.  **Transformação:** Limpeza de dados, tratamento de nulos, lookups e surrogate keys.
3.  **Carga:** Armazenamento em Data Warehouse.
4.  **Análise:** Dashboard interativo.

## 📊 Resultados
O dashboard permite responder perguntas como:
* Faturamento por categoria.
* Sazonalidade de vendas (evolução temporal).
* Concentração geográfica de clientes (Mapa de Calor).

![Print do Dashboard](docs/painel_print.png) *https://prnt.sc/2Na7DvQGJBF4*

## 📂 Estrutura do Repositório
* `/etl`: Scripts do Pentaho (.ktr e .kjb).
* `/sql`: Scripts DDL para criação do banco.
* `/dashboard`: Arquivo Power BI (.pbix).

---
*Autor: Ytalo Cristian*
*Dados Originais: [Kaggle Olist Dataset](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)*
