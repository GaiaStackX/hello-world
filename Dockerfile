From docker.oa.com:8080/library/tlinux2.2-gaia-with-onion

COPY http-server.py /data/test/

CMD ["python", "/data/test/http-server.py"]