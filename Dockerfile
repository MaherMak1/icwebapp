FROM python:3.6-alpine
LABEL Maintainer="Maher"
WORKDIR /opt

ENV ODOO_URL=https://www.odoo.com/
ENV PGADMIN_URL=https://www.pgadmin.org/

RUN pip install --upgrade pip
RUN pip install flask==1.1.2

COPY . .
EXPOSE 8080

#ENV FLASK_APP=app.py
#ENTRYPOINT ["flask", "run", "--host", "0.0.0.0"]
ENTRYPOINT ["python3", "./app.py"]