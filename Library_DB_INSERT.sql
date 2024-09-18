--Yazarlar

--INSERT INTO Yazarlar(Isim,Soyisim) VALUES ('Ömer', 'Seyfettin')
--INSERT INTO Yazarlar(Isim,Soyisim) VALUES ('Fyodor', 'Dostoyevski')
--INSERT INTO Yazarlar(Isim,Soyisim) VALUES ('Victor', 'Hugo')
--INSERT INTO Yazarlar(Isim,Soyisim) VALUES ('Yaþar', 'Kemal')
--INSERT INTO Yazarlar(Isim,Soyisim) VALUES ('Peyami', 'Safa')
--INSERT INTO Yazarlar(Isim,Soyisim) VALUES ('John R.R.', 'Tolkein')
--INSERT INTO Yazarlar(Isim,Soyisim) VALUES ('George R.R.', 'Martin')
--INSERT INTO Yazarlar(Isim,Soyisim) VALUES ('Eiichiro', 'Oda')
--INSERT INTO Yazarlar(Isim,Soyisim) VALUES ('Alexandre', 'Dumas')

--Türler

--INSERT INTO Turler(Tur) VALUES ('Aný')
--INSERT INTO Turler(Tur) VALUES ('Araþtýrma')
--INSERT INTO Turler(Tur) VALUES ('Bilim')
--INSERT INTO Turler(Tur) VALUES ('Biyografi')
--INSERT INTO Turler(Tur) VALUES ('Çizgi Roman')
--INSERT INTO Turler(Tur) VALUES ('Deneme')
--INSERT INTO Turler(Tur) VALUES ('Edebiyat')
--INSERT INTO Turler(Tur) VALUES ('Eðitim')
--INSERT INTO Turler(Tur) VALUES ('Felsefe')
--INSERT INTO Turler(Tur) VALUES ('Gençlik')
--INSERT INTO Turler(Tur) VALUES ('Gezi')
--INSERT INTO Turler(Tur) VALUES ('Hikaye')
--INSERT INTO Turler(Tur) VALUES ('Hobi')
--INSERT INTO Turler(Tur) VALUES ('Ýnceleme')
--INSERT INTO Turler(Tur) VALUES ('Ekonomi')
--INSERT INTO Turler(Tur) VALUES ('Kiþisel Geliþim')
--INSERT INTO Turler(Tur) VALUES ('Konuþmalar')
--INSERT INTO Turler(Tur) VALUES ('Hukuk')
--INSERT INTO Turler(Tur) VALUES ('Masal')
--INSERT INTO Turler(Tur) VALUES ('Mektup')
--INSERT INTO Turler(Tur) VALUES ('Mizah')
--INSERT INTO Turler(Tur) VALUES ('Öykü')
--INSERT INTO Turler(Tur) VALUES ('Polisiye')
--INSERT INTO Turler(Tur) VALUES ('Psikoloji')
--INSERT INTO Turler(Tur) VALUES ('Resimli Öykü')
--INSERT INTO Turler(Tur) VALUES ('Roman')
--INSERT INTO Turler(Tur) VALUES ('Saðlýk')
--INSERT INTO Turler(Tur) VALUES ('Sanat')
--INSERT INTO Turler(Tur) VALUES ('Tasarým')
--INSERT INTO Turler(Tur) VALUES ('Müzik')
--INSERT INTO Turler(Tur) VALUES ('Tarih')

--YayýnEvleri

--INSERT INTO YayinEvleri(YayýnEvi,Adres,Telefon) VALUES ('Ýþ Bankasý Yayýn Evi', 'Ýstiklal Caddesi Meþelik Sokak No: 2 Beyoðlu / Ýstanbul', '02122523991')
--INSERT INTO YayinEvleri(YayýnEvi,Adres,Telefon) VALUES ('Metis Yayýnlarý', 'Katip Mustafa Çelebi, Ýpek Sk. No:5, 34433 Beyoðlu/Ýstanbul', '02122454696')
--INSERT INTO YayinEvleri(YayýnEvi,Adres,Telefon) VALUES ('Can Yayýnlarý', 'Iz Plaza Giz Maslak, Eski Büyükdere Cad. No:9 Kat:8 Sarýyer Ýstanbul', '02122525988')
--INSERT INTO YayinEvleri(YayýnEvi,Adres,Telefon) VALUES ('Gerekli Þeyler Yayýncýlýk', 'Meþrutiyet, Þair Nigar Sk. No: 4/6, 34363 Þiþli/Ýstanbul', '02122306479')

--Kitaplar

--INSERT INTO Kitaplar(Kitap,YayinEviID,Sayfa,KiradaMi) VALUES ('Yalnýz Efe',100, 130, 0) 
--INSERT INTO Kitaplar(Kitap,YayinEviID,Sayfa,KiradaMi) VALUES ('Yüzüklerin Efendisi : Yüzük Kardeþliði',101, 520, 1) 
--INSERT INTO Kitaplar(Kitap,YayinEviID,Sayfa,KiradaMi) VALUES ('OnePiece',103, 950, 0) 


--Üyeler

--INSERT INTO Uyeler(Isim,Soyisim,Adres,Telefon,Sinif) VALUES ('Samet','Kapar','Abc mh. xyz sk. no:12/3','01234567890','10/A')
--INSERT INTO Uyeler(Isim,Soyisim,Adres,Telefon,Sinif) VALUES ('Mevlüt','Koyuncu','Xyz mh. Abc sk. no:32/1','09876543210','9/C')


--KitapYazarlari

--INSERT INTO KitapYazarlari(KitapID,YazarID) VALUES(1000,3000)
--INSERT INTO KitapYazarlari(KitapID,YazarID) VALUES(1001,3005)
--INSERT INTO KitapYazarlari(KitapID,YazarID) VALUES(1002,3007)

--KitapTürleri

--INSERT INTO KitapTurleri(KitapID,TurID) VALUES(1000,12)
--INSERT INTO KitapTurleri(KitapID,TurID) VALUES(1001,26)
--INSERT INTO KitapTurleri(KitapID,TurID) VALUES(1002,5)

--Kiralamalar

--INSERT INTO Kiralamalar(KitapID,UyeID,KiralamaTarihi,TeslimTarihi) VALUES (1000, 2000, '3/09/2024', NULL)
--INSERT INTO Kiralamalar(KitapID,UyeID,KiralamaTarihi,TeslimTarihi) VALUES (1001, 2001, '08/18/2024','09/15/2024')
--INSERT INTO Kiralamalar(KitapID,UyeID,KiralamaTarihi,TeslimTarihi) VALUES (1002, 2000, '3/09/2024', NULL)
