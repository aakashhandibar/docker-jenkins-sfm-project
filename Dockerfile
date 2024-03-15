
FROM python:3
RUN pip3 install streamlit
RUN pip3 install pandas
RUN pip3 install yfinance
RUN pip3 install scikit-learn
RUN pip3 install pybase64
RUN pip3 install scipy
RUN pip3 install numpy
RUN pip3 install keras
RUN pip3 install matplotlib
RUN pip3 install tensorflow --no-cache-dir

COPY . .

EXPOSE 8501

HEALTHCHECK CMD curl --fail http://localhost:8501/_stcore/health

ENTRYPOINT ["streamlit", "run", "run.py", "--server.port=8501", "--server.address=0.0.0.0"]
