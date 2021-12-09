# Imagen base
FROM ubuntu
# Descargar e instalar dependencias
RUN apt-get -qq update
RUN apt install -qq -y python3-pip
RUN pip install -qq python-arango
ADD main.py .
# Comando de arranque
CMD ["python3","main.py"]
