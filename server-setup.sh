#!/data/data/com.termux/files/usr/bin/bash

clear
echo "===================================="
echo " 📁 Minecraft Paper Server Free"
echo " 🌐 Termux Auto Setup "
echo "===================================="

sleep 2

echo ""
echo "[1] Updating Termux..."
pkg update -y && pkg upgrade -y || { echo "❌ Update failed"; exit 1; }

echo ""
echo "[2] Installing tools..."
pkg install curl wget jq nano tmux -y || { echo "❌ Install tools failed"; exit 1; }

echo ""
echo "[3] Installing Java (17 + 21)..."
pkg install openjdk-17 openjdk-21 -y || { echo "❌ Java install failed"; exit 1; }

echo ""
echo "[4] Setting Java default (21)..."
update-alternatives --set java $(update-alternatives --list java | grep java-21 | head -n 1)

echo ""
echo "[5] Checking Java version..."
java -version

echo ""
echo "===================================="
echo " ✅ Setup Completed!"
echo "===================================="
