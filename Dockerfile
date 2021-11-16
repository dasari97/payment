FROM            python:3
RUN             mkdir /app
WORKDIR         /app
COPY            payment.ini payment.py rabbitmq.py requirements.txt ./
RUN             pip3 install -r requirements.txt
RUN             useradd -m -d /app roboshop
RUN             chown -R roboshop:roboshop /app
ENTRYPOINT      ["/usr/local/bin/uwsgi", "--ini", "payment.ini"]