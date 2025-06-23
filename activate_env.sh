#!/bin/bash

# Script para activar el entorno virtual y configurar variables de entorno
# Uso: source activate_env.sh

echo "🚀 Activando entorno virtual para LibriBrain Competition..."

# Activar el entorno virtual
source .venv/bin/activate

# Verificar que el entorno esté activado
if [[ "$VIRTUAL_ENV" != "" ]]; then
    echo "✅ Entorno virtual activado: $VIRTUAL_ENV"
else
    echo "❌ Error: No se pudo activar el entorno virtual"
    return 1
fi

# Configurar variables de entorno útiles
export LIBRIBRAIN_PROJECT_ROOT="$(pwd)"
export PYTHONPATH="${LIBRIBRAIN_PROJECT_ROOT}:${PYTHONPATH}"

# Mostrar información del entorno
echo "📍 Directorio del proyecto: $LIBRIBRAIN_PROJECT_ROOT"
echo "🐍 Python version: $(python --version)"
echo "📦 Paquetes instalados principales:"
echo "   - PyTorch: $(python -c 'import torch; print(torch.__version__)')"
echo "   - Lightning: $(python -c 'import lightning; print(lightning.__version__)')"
echo "   - PNPL: $(python -c 'import pnpl; print(pnpl.__version__)')"

echo ""
echo "🎯 Entorno listo para LibriBrain Competition!"
echo "💡 Para ejecutar Jupyter Lab: jupyter lab"
echo "💡 Para ejecutar el notebook: jupyter notebook"
