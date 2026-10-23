FROM python:3.9-slim

WORKDIR /app

COPY . .

RUN if [ -f requirements.txt ]; then pip install --no-cache-dir -r requirements.txt; fi

# نصب اسکریپت rubikaf به عنوان دستور سیستمی
RUN cp /app/rubikaf /usr/local/bin/rubikaf && chmod +x /usr/local/bin/rubikaf

# کانتینر را زنده نگه دار تا وارد کنسول شوی
CMD ["sleep", "infinity"]