FROM ubuntu
RUN apt-get update && apt-get install -y python3 python3-pip
WORKDIR /app   
COPY . ./
RUN pip3 install -r requirements.txt --break-system-packages
EXPOSE 5000
CMD ["python3", "app.py"]