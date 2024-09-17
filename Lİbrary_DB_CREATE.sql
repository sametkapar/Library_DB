CREATE TABLE YayinEvleri
(
	ID int IDENTITY(100,1),
	YayýnEvi nvarchar(50) NOT NULL,
	Adres nvarchar(160),
	Telefon nvarchar(15),	
	CONSTRAINT pk_YayinEvleri PRIMARY KEY(ID)
)
GO
CREATE TABLE Kitaplar
(
	ID int IDENTITY(1000,1),
	YayinEviID int,
	Kitap nvarchar(120) NOT NULL,
	Sayfa smallint,
	KiradaMi bit,
	CONSTRAINT pk_Kitaplar PRIMARY KEY(ID),
	CONSTRAINT fk_KitapYayinevleri FOREIGN KEY(YayinEviID) REFERENCES YayinEvleri(ID)
)
GO
CREATE TABLE Yazarlar
(
	ID int IDENTITY(3000,1),
	Isim nvarchar(120) NOT NULL,
	Soyisim nvarchar(120) NOT NULL,
	CONSTRAINT pk_Yazarlar PRIMARY KEY(ID)
)
GO
CREATE TABLE Turler
(
	ID int IDENTITY(1,1),
	Tur nvarchar(50) NOT NULL,
	CONSTRAINT pk_Turler PRIMARY KEY(ID)
)

GO
CREATE TABLE KitapYazarlari
(
	KitapID int,
	YazarID int,
)
GO
CREATE TABLE KitapTurleri
(
	KitapID int,
	TurID int,
)
GO
CREATE TABLE Uyeler
(
	ID int IDENTITY(2000,1),
	Isim nvarchar (120) NOT NULL,
	Soyisim nvarchar (120) NOT NULL,
	Adres nvarchar(160),
	Telefon nvarchar(15),
	Sinif nvarchar(15),
	CONSTRAINT Pk_Uyeler PRIMARY KEY(ID)
)
GO
CREATE TABLE Kiralamalar
(
	ID int IDENTITY(4000,1),
	KitapID int,
	UyeID int,
	KiralamaTarihi date NOT NULL,
	TeslimTarihi date ,
	CONSTRAINT Pk_Kiralamar PRIMARY KEY(ID),
	CONSTRAINT Fk_KiralananKitap FOREIGN KEY(KitapID) REFERENCES Kitaplar(ID),
	CONSTRAINT Fk_KiralayanUyeler FOREIGN KEY(UyeID) REFERENCES Uyeler(ID)
)