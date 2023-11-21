SELECT * FROM Discounts
DROP TABLE Stocks
DROP TABLE Products
DROP TABLE Discounts
DROP TABLE Orders
DROP TABLE Shipments
DROP TABLE Customers
Create Database Logid
CREATE TABLE Stocks
(
StockID int IDENTITY(1,1) NOT NULL,
PRIMARY KEY(StockID),
Unit_price int NOT NULL
);
insert into Stocks ( Unit_price) values (967229);
insert into Stocks ( Unit_price) values (545243);
insert into Stocks ( Unit_price) values (052193);
insert into Stocks ( Unit_price) values (650967);
insert into Stocks ( Unit_price) values (371558);
insert into Stocks ( Unit_price) values (539558);
insert into Stocks ( Unit_price) values (05775);
insert into Stocks ( Unit_price) values (07997);
insert into Stocks ( Unit_price) values (88375);
insert into Stocks ( Unit_price) values (4657915);
insert into Stocks ( Unit_price) values (3086557);
insert into Stocks ( Unit_price) values (7683394);
insert into Stocks ( Unit_price) values (3953869);
insert into Stocks ( Unit_price) values (3528933);
insert into Stocks ( Unit_price) values (929343);
insert into Stocks ( Unit_price) values (8253430);
insert into Stocks ( Unit_price) values (906431);
insert into Stocks ( Unit_price) values (5611873);
insert into Stocks ( Unit_price) values (2538930);
insert into Stocks ( Unit_price) values (6339425);
insert into Stocks ( Unit_price) values (603131);
insert into Stocks ( Unit_price) values (7215205);
insert into Stocks ( Unit_price) values (1553179);
insert into Stocks ( Unit_price) values (5539303);
insert into Stocks ( Unit_price) values (8589112);
insert into Stocks ( Unit_price) values (994761);
insert into Stocks ( Unit_price) values (2149071);
insert into Stocks ( Unit_price) values (8051152);
insert into Stocks ( Unit_price) values (8028998);
insert into Stocks ( Unit_price) values (9699420);
insert into Stocks ( Unit_price) values (8612476);
insert into Stocks ( Unit_price) values (8138345);
insert into Stocks ( Unit_price) values (8226485);
insert into Stocks ( Unit_price) values (1833044);
insert into Stocks ( Unit_price) values (3234616);
insert into Stocks ( Unit_price) values (849851);
insert into Stocks ( Unit_price) values (7327297);
insert into Stocks ( Unit_price) values (4574705);
insert into Stocks ( Unit_price) values (443553);
insert into Stocks ( Unit_price) values (1617525);
insert into Stocks ( Unit_price) values (5344234);
insert into Stocks ( Unit_price) values (7205282);
insert into Stocks ( Unit_price) values (9770840);
insert into Stocks ( Unit_price) values (6828858);
insert into Stocks ( Unit_price) values (3897739);
insert into Stocks ( Unit_price) values (9836298);
insert into Stocks ( Unit_price) values (466190);
insert into Stocks ( Unit_price) values (8536323);
insert into Stocks ( Unit_price) values (166324);
insert into Stocks ( Unit_price) values (2301845);
SELECT * FROM Stocks
	

CREATE TABLE Products
(
ProductID int IDENTITY(1,1) NOT NULL,
PRIMARY KEY (ProductID),
[Name] varchar(500) NOT NULL,
ProductPrice int NOT NULL,
StockID int,
FOREIGN KEY (StockID) REFERENCES Stocks(StockID),
Quantity int NOT NULL
);

insert into Products ( Productprice, [Name], StockID, Quantity) values (9579650, 'Penicilium chrysogenum', 1, 1);
insert into Products ( Productprice, [Name], StockID, Quantity) values (8779224, 'Butalbital, Acetaminophen and Caffeine', 2, 2);
insert into Products ( Productprice, [Name], StockID, Quantity) values (4190623, 'Diltiazem Hydrochloride', 3, 3);
insert into Products ( Productprice, [Name], StockID, Quantity) values (3380398, 'ROBITUSSIN PEAK COLD MAXIMUM STRENGTH MULTI-SYMPTOM COLD', 4, 4);
insert into Products ( Productprice, [Name], StockID, Quantity) values (9871146, 'Tan Expert Finish Makeup Makeup Broad Spectrum SPF 25', 5, 5);
insert into Products ( Productprice, [Name], StockID, Quantity) values (6774040, 'Heparin Sodium', 6, 6);
insert into Products ( Productprice, [Name], StockID, Quantity) values (2561045, 'Golden Sunshine Herbal', 7, 7);
insert into Products ( Productprice, [Name], StockID, Quantity) values (1490686, 'Extra Strength Pain Reliever', 8, 8);
insert into Products ( Productprice, [Name], StockID, Quantity) values (5065318, 'Paralixer', 9, 9);
insert into Products ( Productprice, [Name], StockID, Quantity) values ( 5506345, 'No7 Lift and Luminate Foundation Sunscreen Broad Spectrum SPF 15 Deeply Beige', 10, 10);
insert into Products ( Productprice, [Name], StockID, Quantity) values ( 4550919, 'SHISEIDO SHEER MATIFYING COMPACT (REFILL)', 11, 11);
insert into Products ( Productprice, [Name], StockID, Quantity) values ( 4420425, 'Plus White Xtra', 12, 12);
insert into Products ( Productprice, [Name], StockID, Quantity) values ( 2734843, 'Aspergillus niger', 13, 13);
insert into Products ( Productprice, [Name], StockID, Quantity) values ( 4384012, 'XOLIDO', 14, 14);
insert into Products ( Productprice, [Name], StockID, Quantity) values ( 7428270, 'Hoarse Cough', 15, 15);
insert into Products ( Productprice, [Name], StockID, Quantity) values ( 3313206, 'PureLife Topical Anesthetic', 16, 16);
insert into Products ( Productprice, [Name], StockID, Quantity) values ( 2917796, 'Fast Freeze', 17, 17);
insert into Products ( Productprice, [Name], StockID, Quantity) values ( 4049416, 'Food - Plant Source, Almond Prunus amygdalus', 18, 18);
insert into Products ( Productprice, [Name], StockID, Quantity) values ( 3910346, 'Nafcillin', 19, 19);
insert into Products ( Productprice, [Name], StockID, Quantity) values ( 4909479, 'Bacteria Plus', 20, 20);
insert into Products ( Productprice, [Name], StockID, Quantity) values ( 6447005, 'Capture Totale Radiance Restoring Serum Foundation SPF 15 030', 21, 21);
insert into Products ( Productprice, [Name], StockID, Quantity) values ( 1984849, 'MyoRx', 22, 22);
insert into Products ( Productprice, [Name], StockID, Quantity) values ( 7061844, 'Cyclobenzaprine Hydrochloride', 23, 23);
insert into Products ( Productprice, [Name], StockID, Quantity) values ( 6208276, 'Triamterene and Hydrochlorothiazide', 24, 24);
insert into Products ( Productprice, [Name], StockID, Quantity) values ( 9769303, 'Desmopressin Acetate', 25, 25);
insert into Products ( Productprice, [Name], StockID, Quantity) values ( 30170, 'Secale Argentum Special Order', 26, 26);
insert into Products ( Productprice, [Name], StockID, Quantity) values ( 2496187, 'Equate Cool and Heat', 27, 27);
insert into Products ( Productprice, [Name], StockID, Quantity) values ( 292604, 'G-Dologen', 28, 28);
insert into Products ( Productprice, [Name], StockID, Quantity) values ( 3641162, 'Twynsta', 29, 29);
insert into Products ( Productprice, [Name], StockID, Quantity) values ( 6215031, 'Isosorbide Dinitrate', 30, 30);
insert into Products ( Productprice, [Name], StockID, Quantity) values ( 1183164, 'Ulta Sparkling Lemon Anti-Bacterial Deep Cleansing', 31, 31);
insert into Products ( Productprice, [Name], StockID, Quantity) values ( 7315357, 'Correway Sunscreen (Waterproof)', 32, 32);
insert into Products ( Productprice, [Name], StockID, Quantity) values ( 8302155, 'Diabetic Siltussin DAS-Na', 33, 33);
insert into Products ( Productprice, [Name], StockID, Quantity) values ( 6789778, 'Morphine Sulfate', 34, 34);
insert into Products ( Productprice, [Name], StockID, Quantity) values ( 9667491, 'URIBEL', 35, 35);
insert into Products ( Productprice, [Name], StockID, Quantity) values ( 4258997, 'Chloraseptic Sore Throat', 36, 36);
insert into Products ( Productprice, [Name], StockID, Quantity) values ( 4323201, 'head congestion', 37, 37);
insert into Products ( Productprice, [Name], StockID, Quantity) values ( 4669524, 'Instant Hand Sanitizer With Moisturizers (Vitamin E and Aloe)', 38, 38);
insert into Products ( Productprice, [Name], StockID, Quantity) values ( 9202046, 'SaniSuds Foam Hand Sanitizer', 39, 39);
insert into Products ( Productprice, [Name], StockID, Quantity) values ( 9324930, 'Orajel Instant Pain Relief', 40, 40);
insert into Products ( Productprice, [Name], StockID, Quantity) values ( 3109581, 'Hydrochlorothiazide', 41, 41);
insert into Products ( Productprice, [Name], StockID, Quantity) values ( 9223524, 'Pollens - Trees, Oak, Red Quercus rubra', 42, 42);
insert into Products ( Productprice, [Name], StockID, Quantity) values ( 7765039, 'Mirtazapine', 43, 43);
insert into Products ( Productprice, [Name], StockID, Quantity) values ( 3019564, 'Serotonin', 44, 44);
insert into Products ( Productprice, [Name], StockID, Quantity) values ( 6689672, 'Oral-B Minute-Foam Bubble Gum', 45, 45);
insert into Products ( Productprice, [Name], StockID, Quantity) values ( 9123966, 'EPIVIR', 46, 46);
insert into Products ( Productprice, [Name], StockID, Quantity) values ( 479448, 'Estrogen', 47, 47);
insert into Products ( Productprice, [Name], StockID, Quantity) values ( 8139667, 'CLINIMIX E', 48, 48);
insert into Products ( Productprice, [Name], StockID, Quantity) values ( 7055903, 'Xylocaine', 49, 49);
insert into Products ( Productprice, [Name], StockID, Quantity) values ( 5063494, 'ELF Mineral Lip Tint SPF 8', 50, 50);

CREATE TABLE Discounts
(
DiscountID int IDENTITY(1,1) NOT NULL,
PRIMARY KEY(DiscountID),
Code varchar(50) NOT NULL
);

insert into Discounts ( Code) values ('50580-449');
insert into Discounts ( Code) values ('35356-847');
insert into Discounts ( Code) values ('49967-605');
insert into Discounts ( Code) values ('68987-011');
insert into Discounts ( Code) values ('68472-097');
insert into Discounts ( Code) values ('59579-006');
insert into Discounts ( Code) values ('49281-790');
insert into Discounts ( Code) values ('32909-723');
insert into Discounts ( Code) values ('51531-2823');
insert into Discounts ( Code) values ( '59779-994');
insert into Discounts ( Code) values ( '54738-913');
insert into Discounts ( Code) values ( '62802-651');
insert into Discounts ( Code) values ( '60306-115');
insert into Discounts ( Code) values ( '49644-001');
insert into Discounts ( Code) values ( '62034-015');
insert into Discounts ( Code) values ( '12546-310');
insert into Discounts ( Code) values ( '76354-112');
insert into Discounts ( Code) values ( '34666-004');
insert into Discounts ( Code) values ( '23155-049');
insert into Discounts ( Code) values ( '40055-0938');
insert into Discounts ( Code) values ( '67425-002');
insert into Discounts ( Code) values ( '33344-001');
insert into Discounts ( Code) values ( '63739-201');
insert into Discounts ( Code) values ( '57955-1801');
insert into Discounts ( Code) values ( '0363-0751');
insert into Discounts ( Code) values ( '55154-1385');
insert into Discounts ( Code) values ( '0363-2013');
insert into Discounts ( Code) values ( '35356-914');
insert into Discounts ( Code) values ( '0378-0471');
insert into Discounts ( Code) values ( '55319-224');
insert into Discounts ( Code) values ( '0430-0114');
insert into Discounts ( Code) values ( '43419-321');
insert into Discounts ( Code) values ( '58443-0027');
insert into Discounts ( Code) values ( '13734-106');
insert into Discounts ( Code) values ( '20276-552');
insert into Discounts ( Code) values ( '65044-5078');
insert into Discounts ( Code) values ( '65044-2487');
insert into Discounts ( Code) values ( '49299-1093');
insert into Discounts ( Code) values ( '52124-0010');
insert into Discounts ( Code) values ( '62756-187');
insert into Discounts ( Code) values ( '50268-101');
insert into Discounts ( Code) values ( '47682-313');
insert into Discounts ( Code) values ( '52125-937');
insert into Discounts ( Code) values ( '0615-7581');
insert into Discounts ( Code) values ( '64205-521');
insert into Discounts ( Code) values ( '59779-823');
insert into Discounts ( Code) values ( '45802-759');
insert into Discounts ( Code) values ( '76439-302');
insert into Discounts ( Code) values ( '33261-826');
insert into Discounts ( Code) values ( '52125-742');
CREATE TABLE Customers
(
CustomerID int IDENTITY(1,1) NOT NULL,
PRIMARY KEY(CustomerID),
[Name] varchar(500) NOT NULL,
ZIP varchar(50),
Phone varchar(500) NOT NULL,
[Address] varchar(500) NOT NULL
);
insert into Customers ( [Name], ZIP, Phone, [Address]) values ('igaspero0', 'HUMA', '215-946-9395', '81 Toban Terrace');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ('bmconie1', 'GGGG', '479-620-8684', '40 Valley Edge Terrace');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ('pivashnikov2', 'WADD', '574-420-2719', '57052 Logan Circle');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ('nkneal3', 'KCBF', '208-154-1628', '055 Elgar Drive');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ('hglendzer4', 'KHTW', '628-133-3196', '9423 Vahlen Road');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ('mtesauro5', 'OAJL', '571-947-3540', '899 Vahlen Court');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ('cilliston6', 'KFRR', '104-737-3353', '53111 Warner Lane');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ('gdaft7', 'OING', '564-204-4324', '353 Graceland Crossing');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ('ehowie8', 'SKPZ', '192-527-9751', '9 Ohio Hill');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ( 'djewitt9', 'LEAL', '720-521-0469', '37612 Haas Street');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ( 'dmauda', 'SVCR', '153-340-9740', '7299 Clemons Street');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ( 'scrossgroveb', 'OIZJ', '126-407-1861', '22 Cambridge Avenue');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ( 'merrolc', 'KSWO', '202-699-1618', '66 Maple Wood Circle');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ( 'oguillotind', 'KCXY', '745-313-3873', '0084 Warner Center');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ( 'zcoultarde', 'YYKI', '187-210-4455', '026 Tennessee Road');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ( 'agoganf', 'KHSB', '764-980-0468', '7 Ridgeview Hill');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ( 'coyleyg', 'FMNL', '286-575-7755', '6 Sunfield Road');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ( 'mgrigorianh', 'HTSU', '640-845-2426', '6 Weeping Birch Road');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ( 'thainesi', 'KCOU', '124-537-9180', '7842 Dahle Circle');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ( 'ealtij', 'KTWF', '681-901-4463', '5704 Loftsgordon Parkway');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ( 'mallwrightk', 'YCBB', '778-865-8690', '0 American Crossing');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ( 'blamingl', 'LFLP', '643-434-6180', '7741 La Follette Way');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ( 'cspringtorpm', 'SBSG', '810-387-5284', '8723 Prairie Rose Way');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ( 'tfranzettin', 'YLOV', '445-185-6169', '368 Ludington Trail');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ( 'ccantleo', 'DBBP', '637-941-8894', '74964 Eastwood Plaza');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ( 'blarkingp', 'SSGR', '692-927-7116', '3 Arrowood Court');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ( 'kdeshonq', 'DBBS', '419-643-6931', '91087 Harbort Center');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ( 'smccarlier', 'KPOF', '906-776-3299', '62 Green Ridge Avenue');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ( 'mphidgins', 'ZBHD', '924-718-7448', '6 Fairview Crossing');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ( 'fdyhouset', 'GLBU', '758-390-9546', '5234 Katie Road');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ( 'aosbaldstoneu', 'URWW', '497-584-7572', '1222 Ruskin Terrace');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ( 'falejandriv', 'KWF', '944-363-9417', '6738 Onsgard Parkway');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ( 'sswinerdw', 'FWMY', '381-755-9080', '5 Moulton Alley');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ( 'kvarrenx', 'KDVP', '258-834-8678', '35636 Delaware Place');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ( 'mswynfeny', 'VTBH', '232-865-6468', '98 Tomscot Junction');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ( 'tchrispinz', 'FSDF', '391-408-9977', '7597 Jay Crossing');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ( 'dstuffins10', 'KBTR', '378-325-4122', '672 Spenser Pass');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ( 'cbowie11', 'VTST', '930-952-9631', '581 Rowland Terrace');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ( 'ktumpane12', 'KUYJ', '235-876-6591', '54 Graceland Drive');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ( 'tmorilla13', ',NMMK', '798-860-1318', '971 Mandrake Place');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ( 'mshury14', 'SWTU', '361-325-6710', '24211 Kingsford Drive');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ( 'kfarnfield15', 'LLLL', '324-655-4289', '6278 Farwell Alley');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ( 'gvasenin16', 'ZGXN', '913-973-0938', '535 Moose Lane');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ( 'jwinridge17', 'FFFF', '822-763-7383', '2073 Milwaukee Place');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ( 'aandreoletti18', 'YWBL', '130-953-4604', '062 Sullivan Place');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ( 'bloughran19', 'YBGO', '409-991-4958', '517 Talisman Court');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ( 'klabatie1a', 'DDDD', '149-529-2759', '048 Kennedy Center');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ( 'hnovichenko1b', 'ENRA', '991-206-8745', '21 4th Avenue');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ( 'fghidetti1c', 'AYEA', '223-939-1838', '1 Macpherson Drive');
insert into Customers ( [Name], ZIP, Phone, [Address]) values ( 'wivashechkin1d', 'SAZS', '712-503-5301', '86251 Garrison Avenue');
SELECT * FROM Customers

CREATE TABLE Shipments
(
ShipmentID int IDENTITY(1,1) NOT NULL,
PRIMARY KEY(ShipmentID),
[From] varchar(50) NOT NULL,
[To] varchar(50) NOT NULL,
OrderID int NOT NULL,
FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
);




CREATE TABLE Orders (
    OrderID int IDENTITY(1,1) NOT NULL,
    PRIMARY KEY (OrderID),
	CustomerID int NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
	ProductID int NOT NULL,
	FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
	DiscountID int NOT NULL,
	FOREIGN KEY (DiscountID) REFERENCES Discounts(DiscountID),
	OrderPrice int NOT NULL,
);


