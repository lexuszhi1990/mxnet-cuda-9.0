FROM nvidia/cuda:9.0-cudnn7-runtime
MAINTAINER david gandor@qq.com

# ADD sources.list /etc/apt/sources.list
RUN apt-get update
RUN apt-get install python3-pip -y
RUN pip3 install --upgrade pip
RUN pip3 install mxnet-cu90mkl numpy pyyaml -i https://mirrors.aliyun.com/pypi/simple/
