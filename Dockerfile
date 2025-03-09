FROM suilteam/cxy:latest AS builder

# Install packages
RUN apt-get -y update && apt-get -y upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --fix-missing ruby

# Build the application
COPY . /cxy
WORKDIR /cxy
RUN rake build

FROM ubuntu:latest 
COPY --from=builder /cxy/.build/cxyfs /usr/local/bin/cxyfs
