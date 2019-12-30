FROM pytorch/pytorch
LABEL maintainer="ruihirano"

COPY . /workspace

RUN pip install --upgrade pip && pip install -r requirement.txt 
