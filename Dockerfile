FROM python:3.11.4

WORKDIR /app

COPY ./requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY ./src ./src

CMD ["jupyter", "notebook", "--port=9999", "--no-browser", "--ip=0.0.0.0", "--allow-root"]