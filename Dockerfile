FROM continuumio/anaconda3:4.4.0
COPY . /usr/app/
EXPOSE 5000
WORKDIR /usr/app/
RUN rm -rf /opt/conda/lib/python3.6/site-packages/six*
RUN rm -rf /opt/conda/lib/python3.6/site-packages/easy-install.pth
RUN pip install --upgrade pip
RUN pip install -U cython
RUN pip install six==1.16.0
RUN pip install -r requirements.txt
CMD python flask_api.py