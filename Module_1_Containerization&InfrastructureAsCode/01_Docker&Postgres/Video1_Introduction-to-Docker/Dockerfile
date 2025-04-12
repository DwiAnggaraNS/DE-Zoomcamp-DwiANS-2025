# Menggunakan image dasar Python versi 3.12.8 dari Docker Hub
FROM python:3.12.8

# Menjalankan perintah untuk menginstall library pandas menggunakan pip
RUN pip install pandas

# Menentukan direktori kerja di dalam container. Semua perintah selanjutnya akan dijalankan di direktori ini.
WORKDIR /app

# Menyalin file `pipeline.py` dari host (komputer lokal) ke dalam direktori `/app` di dalam container
COPY pipeline.py pipeline.py

# Menentukan perintah default yang akan dijalankan ketika container di-start
# Dalam hal ini, perintahnya adalah menjalankan script Python `pipeline.py`
ENTRYPOINT ["python", "pipeline.py"]