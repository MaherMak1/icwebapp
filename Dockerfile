FROM python:3.6-alpine
WORKDIR /opt
RUN pip install -r flask==1.1.2
COPY . .
EXPOSE 8080
ENV ODOO_URL=https://www.odoo.com/
ENV PGADMIN_URL=https://www.pgadmin.org/
#ENV FLASK_APP=app.py
#ENTRYPOINT ["flask", "run", "--host", "0.0.0.0"]
ENTRYPOINT ["python", "./app.py"]
