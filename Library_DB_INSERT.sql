--Yazarlar

--INSERT INTO Yazarlar(Isim,Soyisim) VALUES ('�mer', 'Seyfettin')
--INSERT INTO Yazarlar(Isim,Soyisim) VALUES ('Fyodor', 'Dostoyevski')
--INSERT INTO Yazarlar(Isim,Soyisim) VALUES ('Victor', 'Hugo')
--INSERT INTO Yazarlar(Isim,Soyisim) VALUES ('Ya�ar', 'Kemal')
--INSERT INTO Yazarlar(Isim,Soyisim) VALUES ('Peyami', 'Safa')
--INSERT INTO Yazarlar(Isim,Soyisim) VALUES ('John R.R.', 'Tolkein')
--INSERT INTO Yazarlar(Isim,Soyisim) VALUES ('George R.R.', 'Martin')
--INSERT INTO Yazarlar(Isim,Soyisim) VALUES ('Eiichiro', 'Oda')
--INSERT INTO Yazarlar(Isim,Soyisim) VALUES ('Alexandre', 'Dumas')

--T�rler

--INSERT INTO Turler(Tur) VALUES ('An�')
--INSERT INTO Turler(Tur) VALUES ('Ara�t�rma')
--INSERT INTO Turler(Tur) VALUES ('Bilim')
--INSERT INTO Turler(Tur) VALUES ('Biyografi')
--INSERT INTO Turler(Tur) VALUES ('�izgi Roman')
--INSERT INTO Turler(Tur) VALUES ('Deneme')
--INSERT INTO Turler(Tur) VALUES ('Edebiyat')
--INSERT INTO Turler(Tur) VALUES ('E�itim')
--INSERT INTO Turler(Tur) VALUES ('Felsefe')
--INSERT INTO Turler(Tur) VALUES ('Gen�lik')
--INSERT INTO Turler(Tur) VALUES ('Gezi')
--INSERT INTO Turler(Tur) VALUES ('Hikaye')
--INSERT INTO Turler(Tur) VALUES ('Hobi')
--INSERT INTO Turler(Tur) VALUES ('�nceleme')
--INSERT INTO Turler(Tur) VALUES ('Ekonomi')
--INSERT INTO Turler(Tur) VALUES ('Ki�isel Geli�im')
--INSERT INTO Turler(Tur) VALUES ('Konu�malar')
--INSERT INTO Turler(Tur) VALUES ('Hukuk')
--INSERT INTO Turler(Tur) VALUES ('Masal')
--INSERT INTO Turler(Tur) VALUES ('Mektup')
--INSERT INTO Turler(Tur) VALUES ('Mizah')
--INSERT INTO Turler(Tur) VALUES ('�yk�')
--INSERT INTO Turler(Tur) VALUES ('Polisiye')
--INSERT INTO Turler(Tur) VALUES ('Psikoloji')
--INSERT INTO Turler(Tur) VALUES ('Resimli �yk�')
--INSERT INTO Turler(Tur) VALUES ('Roman')
--INSERT INTO Turler(Tur) VALUES ('Sa�l�k')
--INSERT INTO Turler(Tur) VALUES ('Sanat')
--INSERT INTO Turler(Tur) VALUES ('Tasar�m')
--INSERT INTO Turler(Tur) VALUES ('M�zik')
--INSERT INTO Turler(Tur) VALUES ('Tarih')

--Yay�nEvleri

--INSERT INTO YayinEvleri(Yay�nEvi,Adres,Telefon) VALUES ('�� Bankas� Yay�n Evi', '�stiklal Caddesi Me�elik Sokak No: 2 Beyo�lu / �stanbul', '02122523991')
--INSERT INTO YayinEvleri(Yay�nEvi,Adres,Telefon) VALUES ('Metis Yay�nlar�', 'Katip Mustafa �elebi, �pek Sk. No:5, 34433 Beyo�lu/�stanbul', '02122454696')
--INSERT INTO YayinEvleri(Yay�nEvi,Adres,Telefon) VALUES ('Can Yay�nlar�', 'Iz Plaza Giz Maslak, Eski B�y�kdere Cad. No:9 Kat:8 Sar�yer �stanbul', '02122525988')
--INSERT INTO YayinEvleri(Yay�nEvi,Adres,Telefon) VALUES ('Gerekli �eyler Yay�nc�l�k', 'Me�rutiyet, �air Nigar Sk. No: 4/6, 34363 �i�li/�stanbul', '02122306479')

--Kitaplar

--INSERT INTO Kitaplar(Kitap,YayinEviID,Sayfa,KiradaMi) VALUES ('Yaln�z Efe',100, 130, 0) 
--INSERT INTO Kitaplar(Kitap,YayinEviID,Sayfa,KiradaMi) VALUES ('Y�z�klerin Efendisi : Y�z�k Karde�li�i',101, 520, 1) 
--INSERT INTO Kitaplar(Kitap,YayinEviID,Sayfa,KiradaMi) VALUES ('OnePiece',103, 950, 0) 


--�yeler

--INSERT INTO Uyeler(Isim,Soyisim,Adres,Telefon,Sinif) VALUES ('Samet','Kapar','Abc mh. xyz sk. no:12/3','01234567890','10/A')
--INSERT INTO Uyeler(Isim,Soyisim,Adres,Telefon,Sinif) VALUES ('Mevl�t','Koyuncu','Xyz mh. Abc sk. no:32/1','09876543210','9/C')


--KitapYazarlari

--INSERT INTO KitapYazarlari(KitapID,YazarID) VALUES(1000,3000)
--INSERT INTO KitapYazarlari(KitapID,YazarID) VALUES(1001,3005)
--INSERT INTO KitapYazarlari(KitapID,YazarID) VALUES(1002,3007)

--KitapT�rleri

--INSERT INTO KitapTurleri(KitapID,TurID) VALUES(1000,12)
--INSERT INTO KitapTurleri(KitapID,TurID) VALUES(1001,26)
--INSERT INTO KitapTurleri(KitapID,TurID) VALUES(1002,5)

--Kiralamalar

--INSERT INTO Kiralamalar(KitapID,UyeID,KiralamaTarihi,TeslimTarihi) VALUES (1000, 2000, '3/09/2024', NULL)
--INSERT INTO Kiralamalar(KitapID,UyeID,KiralamaTarihi,TeslimTarihi) VALUES (1001, 2001, '08/18/2024','09/15/2024')
--INSERT INTO Kiralamalar(KitapID,UyeID,KiralamaTarihi,TeslimTarihi) VALUES (1002, 2000, '3/09/2024', NULL)
