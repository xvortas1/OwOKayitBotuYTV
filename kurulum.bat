@echo off
title YTV MAGAZA Bot Kurulum Sihirbazi
color 0b

echo ======================================================
echo           YTV MAGAZA OWO KAYIT BOTU
echo ======================================================
echo.
echo [1] Python Kontrol Ediliyor...
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [X] HATA: Python yuklu degil! Lutfen Python yukleyin.
    pause
    exit
)

echo [2] Gerekli kutuphaneler yukleniyor ...
pip install discord.py requests keyauth
if %errorlevel% neq 0 (
    echo [X] HATA: Kutuphaneler yuklenirken bir sorun olustu.
    pause
    exit
)

echo.
echo [3] Dosya Kontrolu Yapiliyor...
if not exist config.json (
    echo { "KANAL_ID": 0, "MIN_BEKLEME": 10.0, "MAX_BEKLEME": 17.0 } > config.json
    echo [+] config.json dosyasi olusturuldu. Lutfen ID giriniz!
)

if not exist tokens.txt (
    echo. > tokens.txt
    echo [+] tokens.txt dosyasi olusturuldu. Lutfen tokenlari ekleyin!
)

echo.
echo ======================================================
echo   KURULUM TAMAMLANDI! 
echo   Lutfen config.json ve tokens.txt dosyalarini doldurun.
echo ======================================================
echo.
pause