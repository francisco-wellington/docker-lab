#!/bin/bash

echo "=== Teste de Conectividade entre Containers ==="

echo "1️⃣ Ping do web-app → db"
docker exec web-app ping -c 2 db || echo "❌ Falha esperada"

echo "2️⃣ Ping do monitor → db"
docker exec monitor ping -c 2 db && echo "✅ OK"

echo "3️⃣ Ping do monitor → web-app"
docker exec monitor ping -c 2 web-app && echo "✅ OK"

echo "4️⃣ Ping do db → web-app"
docker exec db bash -c "apt update -y && apt install -y iputils-ping"
docker exec db ping -c 2 web-app || echo "❌ Bloqueado conforme política"
