#!/bin/bash
set -e

# Instala o Flutter
git clone https://github.com/flutter/flutter.git -b stable
export PATH="$PATH:`pwd`/flutter/bin"

# Exibe a versão (só pra debug)
flutter --version

# Garante que o suporte web está habilitado
flutter config --enable-web

# Faz o build da versão web
flutter build web --release
