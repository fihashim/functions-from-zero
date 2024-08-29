# FROM public.ecr.aws/lambda/python:3.8
FROM python:3.9-bullseye

# Install the latest OpenSSL
# RUN apt-get update && apt-get install -y openssl 

RUN mkdir -p /app
COPY ./main.py /app/
COPY mylib/ /app/mylib/
COPY ./requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt
WORKDIR /app
EXPOSE 8080
CMD [ "main.py" ]
ENTRYPOINT [ "python" ]