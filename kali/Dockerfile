FROM kalilinux/kali-rolling 

RUN echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" > /etc/apt/sources.list && \
    echo "deb-src http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.list

ENV DEBIAN_FRONTEND noninteractive
RUN set -x \
    && apt-get -yqq update \
    && apt-get -yqq dist-upgrade \
    && apt-get -yqq install kali-tools-top10 \
    && apt-get clean 

ARG DB_CONFIG
ENV DB_CONFIG="$DB_CONFIG"
RUN /bin/echo "$DB_CONFIG" > /usr/share/metasploit-framework/config/database.yml

RUN /bin/sh -c export $PATH:/usr/share/metasploit-framework/
  
CMD ["bash"]

