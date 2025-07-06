FROM python:3.12-slim

# Sistem bağımlılıkları
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*

# Sadece requirements dosyasını kurmak için küçük bir dizin kullan
WORKDIR /install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Gerçek proje dizini (bunu volume ile dışarıdan bağlayacağız)
WORKDIR /app

# Django'yu başlat
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]