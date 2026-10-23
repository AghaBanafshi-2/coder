FROM python:3.9-slim

WORKDIR /app

COPY . .

RUN if [ -f requirements.txt ]; then pip install --no-cache-dir -r requirements.txt; fi

# به جای اجرای خودکار اسکریپت، کانتینر را زنده نگه دار
CMD ["sleep", "infinity"]