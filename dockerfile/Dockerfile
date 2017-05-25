FROM williamyeh/ansible:centos7

RUN yum -y install make && \
	yum-builddep -y python && \
    \
    \
    echo "===> Installing docker-py for ansible docker modules..."  && \
    curl -O https://www.python.org/ftp/python/3.5.0/Python-3.5.0.tgz && \
    tar xf Python-3.5.0.tgz && \
    cd Python-3.5.0 && \
	./configure && \
	make && \
	make install && \
    curl -O https://bootstrap.pypa.io/get-pip.py && \
    python get-pip.py && \
    rm -f get-pip.py && \
	yum clean all

COPY requirements.txt /tmp
RUN pip3 install -r /tmp/requirements.txt

ENTRYPOINT ["ansible"]
CMD ["--version"]