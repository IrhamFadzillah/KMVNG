# We're using Ubuntu 20.10
FROM irhamfadzillah/yama:latest

#
# Clone repo and prepare working directory
#
RUN git clone -b master https://github.com/IrhamFadzillah/KMVNG /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/IrhamFadzillah/KMVNG/master/requirements.txt

CMD ["python3","-m","userbot"]
