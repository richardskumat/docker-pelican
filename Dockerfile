FROM debian:buster-slim
ENV pelican_version=4.2
RUN apt-get update && \
    apt-get install python3-minimal \
    make \
    git \
    python3-pip \
    python3-setuptools \
    python3-wheel \
    --no-install-recommends -y && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/* && \
    apt-get clean
RUN pip3 install pelican=="${pelican_version}" Markdown typogrify Pillow Piexif && \
    rm -rf /root/.cache
RUN useradd -m -s /bin/bash user
USER user
