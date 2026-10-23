# استفاده از تصویر پایه پایتون سبک
FROM python:3.9-slim

# تنظیم پوشه کاری
WORKDIR /app

# کپی کردن تمام فایل‌های پروژه به داخل کانتینر
COPY . .

# نصب پیش‌نیازهای احتمالی (در صورت وجود فایل requirements.txt)
# اگر فایل requirements.txt ندارید، این خط را حذف کنید
RUN if [ -f requirements.txt ]; then pip install --no-cache-dir -r requirements.txt; fi

# دستور اجرای اسکریپت اصلی
# این اسکریپت احتمالاً به ورودی کاربر نیاز دارد و در Railway متوقف می‌شود
CMD ["python", "filter.py"]