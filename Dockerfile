FROM debian:buster-slim
RUN apt-get update && \
    apt-get install python3-minimal \
    make \
    git \
    python3-pip \
    python3-setuptools \
    python3-wheel \
    --no-install-recommends -y && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/* /root/.cache && \
    apt-get clean
RUN pip3 install pelican Markdown typogrify Pillow Piexif
RUN useradd -m -s /bin/bash user
USER user

