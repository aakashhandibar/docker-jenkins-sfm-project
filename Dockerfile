FROM python:3

RUN git clone https://github.com/aakashhandibar/Stock-Forecasting-Master-Draft-main.git

RUN pip3 install -r requirements.txt
RUN pip3 install tensorflow --no-cache-dir

COPY . .

EXPOSE 8501

ENTRYPOINT [ "streamlit", "run" ]
CMD [ "run.py","--server.port=8501", "--server.address=0.0.0.0","--server.fileWatcherType", "none", "--browser.gatherUsageStats", "false"]
