FROM python

RUN pip install flask

COPY  ./static /app/static/
COPY  ./templates /app/templates/
COPY  sample_app.py /app/

EXPOSE 8080

CMD python /app/sample_app.py