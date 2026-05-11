#!/bin/bash

echo "Instalando dependencias y llaves..."
sudo apt update && sudo apt install -y curl gpg
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://pkg.noctalia.dev/gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/noctalia.gpg

echo "Añadiendo repositorio de Noctalia..."
echo "deb [signed-by=/etc/apt/keyrings/noctalia.gpg] https://pkg.noctalia.dev/apt trixie main" | sudo tee /etc/apt/sources.list.d/noctalia.list

sudo apt update
