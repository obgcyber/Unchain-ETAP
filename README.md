# Unchain-ETAP

Pardus 23 ETAP yüklü akıllı tahtalar üzerindeki kısıtlayıcı servisleri (eta-kilit, ebaqr, mcnd.service vb.) devre dışı bırakmak ve sistemi özgürleştirmek için geliştirilmiş bir terminal betiğidir.
## 🚀 Kullanım Rehberi

Sistemi özgürleştirmek için aşağıdaki adımları sırasıyla ve dikkatle takip edin.
1. Hazırlık

Unchain-ETAP.sh dosyasını bir USB belleğe kopyalayın ve hedef akıllı tahtaya takın.
2. TTY4 Terminaline Geçiş

Sistemin kısıtlamalarını aşmak için masaüstü arayüzünden çıkıp terminal moduna geçmeniz gerekir. Klavye üzerinden CTRL + ALT + F4 tuş kombinasyonuna basarak TTY4 ekranına giriş yapın.
3. Giriş (Login) İşlemi

Bu aşamada sistem sizden kullanıcı adı ve şifre isteyecektir.

    [!CAUTION]
    Önemli Klavye Uyarısı: TTY ekranında klavye düzeni İngilizce olabilir.

        Kullanıcı Adı: etapadmin yazarken "i" harfi yerine klavyedeki "ı" (I) tuşuna basmanız gerekebilir.

        Şifre: Varsayılan şifre etap+pardus! şeklindedir. Şifreyi yazarken ekranda herhangi bir karakter veya yıldız görünmeyecektir. Bu normal bir güvenlik prosedürüdür, şifreyi yazıp Enter tuşuna basın.

4. USB Belleği Tanımlama

USB içerisindeki dosyaya erişmek için önce belleğin sisteme nereye bağlandığını (mount point) bulmalısınız. Terminale şu komutu yazın:
Bash

lsblk

Çıktıda USB belleğinizi bulun ve MOUNTPOINT sütunundaki yolu not edin.
(Örn: /media/etapadmin/USB_ADI veya /media/ogretmen/USB_ADI)
5. Dizine Giriş ve Scripti Çalıştırma

Not ettiğiniz dizine giriş yapın ve scripti yetkilendirerek başlatın:
Bash

# USB dizinine girin (Kendi yolunuzu yazın)
cd /media/etapadmin/USB_ADI

# Scripti çalıştırılabilir yapın ve başlatın
chmod +x Unchain-ETAP.sh && ./Unchain-ETAP.sh

6. İşlemi Tamamlama

Script işlemleri bitirdiğinde sizi bilgilendirecektir. Tekrar grafik arayüzüne (masaüstüne) dönmek için:

    ALT + F7 tuş kombinasyonunu kullanın.

🛡️ Sorumluluk Reddi (Disclaimer)

Bu araç eğitim ve araştırma amaçlı geliştirilmiştir. Kullanımı sırasında oluşabilecek sistem hataları, veri kayıpları veya kurum içi politika ihlallerinden geliştirici (obgcyber) sorumlu tutulamaz. Aracı kullanmadan önce sistem yedeği almanız önerilir. Tüm sorumluluk kullanıcıya aittir.

Developed by obgcyber - GitHub
