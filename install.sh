#!/usr/bin/bash

echo 'persian fortune'
echo 'fortune فارسی'
echo '-------------------'

# first make sure fortune is installed

# echo 'making sure fortune is installed'
# echo 'در حال ایجاد اطمینان از نصب بودن ابزار fortune'

if ! command -v fortune &> /dev/null
then
    echo "fortune is not installed! first install it!"
    echo "ابزار fortune نصب نیست. ابتدا آن را نصب کنید."
    exit
fi


# sudo apt install -y fortune

# now we need to compile text files into dat files

mkdir -p dat
rm dat/*
ls text/ | xargs -I {} strfile -c % text/{} dat/{}.dat

# now let's add all persian data into fortune directory

# remove old data if requested

echo '-------------------'
echo 'remove old fortunes?[y/n]'
echo 'آیا همه داده‌های پیشین پاک شود؟[ب/خ]'
read remove_old

case "$remove_old" in
    [yY][eE][sS]|[yY]|ب|بله) 

        sudo cp -r /usr/share/games/fortunes /usr/share/games/fortunes.backup
        echo 'a backup of old fortunes is created in /usr/share/games/fortunes.backup'
        echo 'یک پشتیبان از داده‌های پیشین در اینجا تهیه شد /usr/share/games/fortunes.backup'
        sudo rm /usr/share/games/fortunes/*.dat

        ;;
    *)

        # nothing

        ;;
esac

# copy new data where it should be

sudo cp dat/*.dat /usr/share/games/fortunes/
sudo cp text/* /usr/share/games/fortunes/

echo '-------------------------'
fortune
echo '-------------------------'

echo 'done!'
echo 'انجام شد!'