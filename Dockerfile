# Resmi Python imajını kullan
FROM python:3.11

# Çalışma dizinini belirle
WORKDIR /app

# Gereksinim dosyasını kopyala ve bağımlılıkları yükle
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# FastAPI dosyalarını kopyala
COPY . .

# Uvicorn ile FastAPI uygulamasını çalıştır
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

