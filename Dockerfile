FROM python:3.13

RUN set -x \
   && apt-get -qq update \
   && apt-get install -yq --no-install-recommends \
      vim \
      tree \
      curl \
      libsasl2-dev \
      libldap2-dev \
      build-essential \
      git \
   && apt-get purge -y --auto-remove \
   && rm -rf /var/lib/apt/lists/*

ADD requirements.pip /requirements.pip

RUN pip install --upgrade pip && \
   pip install -r /requirements.pip

ADD ../ /projects
