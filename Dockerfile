FROM openjdk:8

RUN cd /tmp && \
  wget https://pfs.nifcloud.com/api/sdk/java8/NIFCLOUD_api-tools_8.0.0.zip && \
  unzip NIFCLOUD_api-tools_8.0.0.zip && \
  mv NIFCLOUD_api-tools_8.0.0 /usr/local/app && \
  rm NIFCLOUD_api-tools_8.0.0.zip

RUN chmod +x /usr/local/app/bin/*
WORKDIR /usr/local/app
ENV NIFTY_CLOUD_HOME=/usr/local/app
ENV PATH=$PATH:/usr/local/app/bin
ENV NIFTY_CLOUD_URL=https://cp.cloud.nifty.com/api/

RUN apt-get update && apt-get install -y locales locales-all
RUN locale-gen ja_JP.utf-8
RUN update-locale
ENV LANG ja_JP.utf-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.utf-8
