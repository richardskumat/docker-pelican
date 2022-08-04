FROM debian:bullseye-slim
ENV pelican_version=4.8.0
# https://github.com/python-pillow/Pillow/issues/4242
# https://gitlab.com/richardskumat/docker-pelican/-/jobs/2816122458
RUN apt-get update && \
    apt-get install python3-minimal \
    make \
    git \
    ca-certificates \
    python3-pip \
    python3-setuptools \
    python3-wheel \
    libjpeg8-dev \
    zlib1g-dev \
    --no-install-recommends -y && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/* && \
    apt-get clean
RUN python3 -m pip install --upgrade pip
RUN pip3 install pelican=="${pelican_version}" Markdown typogrify Pillow Piexif && \
    rm -rf /root/.cache
RUN useradd -m -s /bin/bash user
RUN apt-get purge libjpeg8-dev zlib1g-dev -y && \
    apt-get autoremove -y && \
    apt-get clean
USER user
CMD [ "bash" ]