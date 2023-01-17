ARG ARCH=native

FROM almalinux:9

WORKDIR /home/mark

RUN yum -y update && \
  yum -y install gcc

RUN gcc -o reduction reduction.c -O3 -march=$ARCH

ENTRYPOINT ["./reduction"]
