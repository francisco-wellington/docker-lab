# 🌐 NetLab – Simulador de Rede e Política de Acesso

O **NetLab** é um projeto DevOps prático que simula uma rede corporativa com múltiplos containers Docker, aplicando **políticas de acesso e conectividade** entre serviços.  
O objetivo é **entender e visualizar o comportamento de rede, políticas de segurança e conectividade entre aplicações** dentro de um ambiente isolado.

---

## 🧩 Arquitetura

A simulação é composta por 3 containers:

| Container | Função | Rede |
|------------|---------|------|
| 🖥️ `web-app` | Simula um servidor web | `frontend` |
| 💾 `db` | Banco de dados fictício | `backend` |
| 🔐 `firewall` | Controla o tráfego entre as redes | `frontend` + `backend` |

---

## 🚀 Tecnologias Utilizadas

- Docker e Docker Compose  
- Linux (ping, iptables, curl)  
- Ferramentas de rede (traceroute, netcat)  
- Bash scripting  

---

## 🧠 Conceitos Envolvidos

- Isolamento de rede com **Docker Compose**
- Gerenciamento de políticas com **iptables**
- Testes de comunicação entre containers
- Observabilidade e troubleshooting básico




