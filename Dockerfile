FROM: debian:latest

COPY . . 

RUN apt install -y git build-essential cmake libuv1-dev libssl-dev libhwloc-dev

RUN mkdir build && cd build

RUN cmake ..

RUN make -j$(nproc)
