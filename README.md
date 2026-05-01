# 🔓 Unchain-ETAP v1.0
**Pardus 23 ETAP Kilit Sistemi Özgürleştirme Aracı**

Bu araç, Pardus 23 ETAP yüklü akıllı tahtalarda sistem kısıtlamalarını kaldırmak ve tam kontrol sağlamak amacıyla **OBG (Optimizasyon, Bilişim ve Geliştirme)** tarafından geliştirilmiştir.
## 🚀 Adım 1: Terminale Geçiş ve Giriş
1. Scripti bir USB belleğe atın ve tahtaya takın.
2. `CTRL + ALT + F4` tuşlarına basarak **TTY4** moduna girin.
3. **⚠️ ÖNEMLİ:** TTY ekranında klavye İngilizce (US) düzenindedir. 
   * `etapadmin` yazarken **"i"** harfi yerine klavyedeki **"ı" (I)** tuşuna basmanız gerekir.
   * Şifrenizi (`etap+pardus!`) yazarken karakterler ekranda gözükmez, doğru yazıp Enter'a basın.
## 🛠️ Adım 2: USB'yi Bulma ve Scripti Başlatma
Sisteme giriş yaptıktan sonra USB belleğinizin yolunu bulmanız gerekir:

1. `lsblk` komutunu yazın ve USB belleğinizin hangi klasöre bağlı (MOUNTPOINT) olduğunu bulun (Örn: `/media/ogretmen/USB_ADI`).
2. USB dizinine girmek için şu komutu yazın (Kendi yolunuza göre düzenleyin):
   ```bash
   cd /media/ogretmen/USB_ADI
   ```
Scripti şu komutla ateşleyin:
   ```bash
   chmod +x Unchain-ETAP.sh && ./Unchain-ETAP.sh
   ```
## Adım 3: Masaüstüne Dönüş

Script "İŞLEM TAMAMLANDI" mesajını verdiğinde her şey yolunda demektir.

Görsel arayüze geri dönmek için ALT + F7 tuşlarına basın.

---

## ⚠️ Sorumluluk Reddi (Disclaimer)

Bu yazılım, Pardus 23 ETAP sistemlerinde tam kontrol sağlamak ve kısıtlayıcı servisleri devre dışı bırakmak amacıyla geliştirilmiş teknik bir araçtır.

*   **Kullanım Sorumluluğu:** Bu aracın çalıştırılması sonucu oluşabilecek her türlü idari, disiplin veya teknik sorumluluk tamamen kullanıcıya aittir.
*   **Garanti Yoktur:** Yazılım "olduğu gibi" sunulur. Sistemde meydana gelebilecek herhangi bir hatadan geliştirici sorumlu tutulamaz.
*   **Geliştirici Beyanı:** OBG (Optimizasyon, Bilişim ve Geliştirme) kurucusu olarak, yazılımın teknik işleyişi tarafımdan üstlenilmektedir.

---
