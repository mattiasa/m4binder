FROM jrottenberg/ffmpeg:8.1-ubuntu2404

RUN apt-get update -y && \
    apt-get install -y \
	git \
        python3 \
	python3-pip \
	&& \
    apt-get clean -y

ADD m4binder.py /usr/bin/m4binder
ADD requirements.txt /tmp

RUN pip3 install --break-system-packages  -r /tmp/requirements.txt


ENTRYPOINT ["/bin/bash"]
