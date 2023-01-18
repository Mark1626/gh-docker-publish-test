FROM almalinux:9

ARG ARCH=native

WORKDIR /home/mark

RUN yum -y update && \
  yum -y install gcc

COPY reduction.c /home/mark/

RUN gcc -o reduction reduction.c -O3 -march=$ARCH

ENTRYPOINT ["./reduction"]
