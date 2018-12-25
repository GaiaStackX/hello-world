FROM docker.oa.com:8080/public/centos-7.2:latest

COPY http-server.py /data/test/

CMD ["python", "/data/test/http-server.py"]