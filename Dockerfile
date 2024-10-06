FROM python:3-slim
WORKDIR /programas/api_micro2
RUN pip3 install "fastapi[standard]"
RUN pip3 install pydantic
RUN pip3 install mysql-connector-python
COPY . .

ENV DB_HOST=localhost
ENV DB_PORT=3306
ENV DB_USER=root
ENV DB_PASS=utec
ENV DB_NAME=bd_api_python

CMD ["fastapi", "run", "./app.py"]
