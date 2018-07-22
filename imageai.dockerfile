# https://towardsdatascience.com/object-detection-with-10-lines-of-code-d6cb4d86f606
FROM python:3
RUN pip3 install --upgrade pip setuptools virtualenv
WORKDIR /imageai/
COPY requirements.pip requirements.pip
RUN pip3 install -r requirements.pip
ADD https://github.com/OlafenwaMoses/ImageAI/releases/download/1.0/resnet50_coco_best_v2.0.1.h5 resnet50_coco_best_v2.0.1.h5
ADD https://cdn-images-1.medium.com/max/1000/1*v0Bm-HQxWtpbQ0Yq463uqw.jpeg image.jpg
ADD https://cdn-images-1.medium.com/max/1000/1*zoS8E7Gooe_-3Hi43_R_Yg.jpeg image2.jpg
#ADD https://gist.githubusercontent.com/OlafenwaMoses/38e68a0f3bcb7350785b67d2e6bc06ce/raw/84592c670578c12f76d62acea63cb5d1099d33b1/FirstDetection.py FirstDetection.py
COPY FirstDetection.py ./

# docker build -t imageai --file imageai.dockerfile .
# docker run --rm -it imageai /bin/bash