# Imagen base ligera
FROM python:3.12-slim

# Evitar .pyc y output bufferizado
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Crear directorio y copiar
WORKDIR /app
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt
COPY . /app

# Exponer puerto (coincide con app.py)
EXPOSE 8000

# Comando por defecto
CMD ["python", "app.py"]
