# Imagen base de Python
FROM python:3.9-slim

# Directorio de trabajo
WORKDIR /app

# Instalar dependencias
RUN pip install fastapi uvicorn httpx pytest

# Copiar el código
COPY . .

# Comando para correr la API
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]