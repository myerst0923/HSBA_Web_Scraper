FROM python:3.10
RUN apt-get update

RUN mkdir app
WORKDIR /app
COPY requirements.txt ./
RUN pip3 install -r requirements.txt
RUN wget -nc https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN apt install -fy ./google-chrome-stable_current_amd64.deb 


ADD app /app
CMD ["python", "main.py"]