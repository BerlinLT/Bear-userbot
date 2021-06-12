# We're using Ubuntu 20.10
FROM biansepang/weebproject:buster

RUN git clone -b Man-Userbot https://github.com/BerlinLT/Bear-userbot /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/BerlinLT/Bear-userbot/Bear-userbot/requirements.txt

CMD ["python3","-m","userbot"]
