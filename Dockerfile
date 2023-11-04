FROM ubuntu:latest

LABEL maintainer=jfarfan@tecsup.edu.pe

# Instalar actualizaciones y dependencias
RUN apt-get update -y && \
    apt-get install -y python3-pip python3-dev git

# Clonar el proyecto
RUN git clone https://github.com/brakine-liopitaz24/My_repo.git

# Establecer directorio de trabajo
WORKDIR /flask-poo-v1

# Instalar librerías de requerimientos
RUN pip3 install -r requirements.txt

# Exponer el puerto 5000, el puerto por defecto de Flask
EXPOSE 7000

# Ejecutar el programa
CMD ["python3", "src/app.py"]

