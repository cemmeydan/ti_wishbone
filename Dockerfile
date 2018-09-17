FROM dynverse/dynwrap:py3.6

RUN pip install git+https://github.com/dynverse/pywishbone --upgrade --upgrade-strategy only-if-needed

LABEL version 0.1.4

ADD . /code
ENTRYPOINT python /code/run.py
