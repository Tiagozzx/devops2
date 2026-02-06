# 1. Imagen base: Usamos una versión ligera de Python 3.9
FROM python:3.9-slim

# 2. Directorio de trabajo: Donde vivirá nuestro código dentro del contenedor
WORKDIR /app

# 3. Copiamos el archivo de dependencias primero
COPY requirements.txt .

# 4. Instalamos las librerías (el "clima" de nuestra planta)
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copiamos nuestro script de monitoreo a la carpeta /app
COPY monitor.py .

# 6. El comando que se ejecuta cuando el contenedor arranca
CMD ["python", "monitor.py"]