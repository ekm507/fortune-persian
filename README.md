# ابزار fortune فارسی

این یک مخزن برای فارسی‌سازی ابزار fortune است. ابزاری که با اجرا کردن آن در پایانه، یک جمله یا گفتاورد تصادفی را به نمایش درمی‌آورد.

![usage example image](logo.png)

## استفاده

1. ابتدا ابزار fortune و git را نصب کنید.

برای مثال در توزیع دبیان و اوبونتو نصب این ابزار چنین صورت می‌گیرد:

```bash
sudo apt install -y fortune git
```

2. ابزار را فارسی‌سازی کنید

مخزن را بارگیری کنید و اسکریپت نصب را اجرا کنید:

**نکته**: همیشه قبل از اجرای اسکریپت‌ها، آن‌ها را بررسی کنید و از مخرب‌نبودنشان اطمینان حاصل کنید.

```bash
git clone 'https://github.com/ekm507/fortune-persian'
cd fortune-persian
./install.sh
```

حال می‌توانید با اجرای دستور fortune یک جملهٔ فارسی دریافت کنید!

**نکته**  
در صورتی که می‌خواهید یکی از مخزن‌های جمله را غیرفعال کنید، متن آن را از پوشهٔ text حذف کنید و یک بار دیگر اسکریپت install را اجرا کنید.

همچنین در صورتی که می‌خواهید مخزن دلخواه خود را اضافه کنید، کافی است فایل متنی آن را در کنار بقیهٔ فایل‌ها داخل پوشهٔ text بگذارید و یک بار دیگر اسکریپت install را اجرا کنید.

## کارهای آینده

- جمع‌آوری دادگان متنوع‌تر فارسی
- بهبود اسکریپت نصب. شاید بهتر است از یک اسکریپت موجود استفاده شود.