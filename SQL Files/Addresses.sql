DROP TABLE IF EXISTS Addresses CASCADE;

CREATE TABLE IF NOT EXISTS Addresses (
    id SERIAL PRIMARY KEY,
    houseNo INTEGER NOT NULL,
    additionalAdressInfo VARCHAR NULL,
    street VARCHAR NOT NULL,
    state VARCHAR NULL,
    city VARCHAR NOT NULL,
    postcalCode VARCHAR NULL,
    countryCode VARCHAR NOT NULL,
    FOREIGN KEY(countryCode) REFERENCES Countries(code)
);

INSERT INTO Addresses(houseNo,street,state,city,postcalCode,countryCode) VALUES
 (80,'Scoville','Poitou-Charentes','Périgny','17184 CEDEX','FR')
,(84,'Washington','Québec','Charlemagne','J6V','CA')
,(12,'Lakeland','California','Irvine','92619','US')
,(75,'Hoard','Provincie Groningen','Groningen','9704','NL')
,(77,'Bartillon',NULL,'Jiang’an',NULL,'CN')
,(98,'Westport',NULL,'Sunduan',NULL,'CN')
,(76,'Blackbird','Veracruz Llave','San Francisco','95710','MX')
,(97,'Sycamore',NULL,'Yimamu',NULL,'CN')
,(74,'Myrtle','Alsace','Colmar','68004 CEDEX','FR')
,(99,'Dixon',NULL,'Shangyong',NULL,'CN')
,(64,'Texas',NULL,'Guanyinsi',NULL,'CN')
,(85,'Carey',NULL,'Jianfeng',NULL,'CN')
,(67,'Shasta',NULL,'Mělník','276 01','CZ')
,(16,'Hovde',NULL,'Yuefeng',NULL,'CN')
,(68,'Fair Oaks',NULL,'Miaojie',NULL,'CN')
,(25,'Pepper Wood','England','Wirral','CH48','GB')
,(70,'Merry',NULL,'Bahuang',NULL,'CN')
,(76,'Rutledge','Utah','Salt Lake City','84115','US')
,(64,'Westport',NULL,'Abashiri','336-0926','JP')
,(41,'Nevada','Texas','Amarillo','79176','US')
,(90,'Banding',NULL,'Qiangqinxue',NULL,'CN')
,(27,'Grim',NULL,'Hongyi',NULL,'CN')
,(74,'Tony','Chiapas','Francisco I Madero','30853','MX')
,(53,'Forest','Nuevo Leon','Los Angeles','65600','MX')
,(24,'Towne',NULL,'Yabuli',NULL,'CN')
,(62,'Blaine',NULL,'Zhanggongmiao',NULL,'CN')
,(79,'Old Shore',NULL,'Utsunomiya-shi','329-1117','JP')
,(31,'Merchant',NULL,'Jinnan',NULL,'CN')
,(5,'South','Île-de-France','Melun','77050 CEDEX','FR')
,(16,'Redwing',NULL,'Nagai','986-0303','JP')
,(5,'Buena Vista',NULL,'Yeping',NULL,'CN')
,(20,'Hoepker','Île-de-France','Champigny-sur-Marne','94504 CEDEX','FR')
,(85,'Gateway','District of Columbia','Washington','20016','US')
,(41,'Mcguire','Provincie Noord-Brabant','Best','5684','NL')
,(29,'Donald','Lorraine','Montigny-lès-Metz','57954 CEDEX','FR')
,(78,'Dayton',NULL,'Awat',NULL,'CN')
,(84,'Dennis',NULL,'Sandouping',NULL,'CN')
,(96,'Claremont',NULL,'Suncun',NULL,'CN')
,(55,'Riverside',NULL,'Chegang',NULL,'CN')
,(25,'Drewry','Chiapas','El Mirador','29140','MX')
,(12,'Merchant','California','San Diego','92105','US')
,(38,'Prairieview',NULL,'Gwangju',NULL,'KR')
,(80,'Golden Leaf',NULL,'Nancheng',NULL,'CN')
,(77,'Mayer',NULL,'Yuanlin',NULL,'CN')
,(20,'Dakota','Guanajuato','Los Pinos','36780','MX')
,(2,'Loeprich',NULL,'Baishuiyang',NULL,'CN')
,(31,'Reindahl','Veracruz Llave','Cuauhtemoc','96880','MX')
,(41,'Brentwood','Île-de-France','Roissy Charles-de-Gaulle','95943 CEDEX 2','FR')
,(48,'Crownhardt',NULL,'Quzhou',NULL,'CN')
,(19,'Clove','Haute-Normandie','Le Havre','76069 CEDEX','FR')
,(60,'Quincy','Oaxaca','Lindavista','70633','MX')
,(92,'Sachs','Alberta','Raymond','G6K','CA')
,(16,'Pawling',NULL,'Suzuka','669-1417','JP')
,(40,'Paget',NULL,'Luzhou',NULL,'CN')
,(80,'Nova','Rhône-Alpes','Aix-les-Bains','73104 CEDEX','FR')
,(1,'High Crossing',NULL,'Huji',NULL,'CN')
,(9,'Rowland',NULL,'Ningzhong',NULL,'CN')
,(41,'Farwell','Centre','Montargis','45204 CEDEX','FR')
,(3,'Elka','Texas','Houston','77070','US')
,(59,'Forster','Veracruz Llave','Adolfo Ruiz Cortines','92880','MX')
,(51,'Dayton',NULL,'Baishi',NULL,'CN')
,(36,'Laurel','Île-de-France','Bobigny','93909 CEDEX 9','FR')
,(66,'Grim',NULL,'Puan',NULL,'KR')
,(15,'Columbus',NULL,'Donglinxi',NULL,'CN')
,(33,'Brentwood',NULL,'Jiangpu',NULL,'CN')
,(77,'Marquette',NULL,'Tadou',NULL,'CN')
,(6,'Stone Corner',NULL,'Broumov','550 01','CZ')
,(54,'Center',NULL,'Muqi',NULL,'CN')
,(94,'Katie',NULL,'Xiadong',NULL,'CN')
,(40,'Quincy',NULL,'Hanušovice','788 33','CZ')
,(78,'Farwell',NULL,'Luorong',NULL,'CN')
,(88,'Monterey',NULL,'Chenyang',NULL,'CN')
,(55,'Spaight',NULL,'Gaosheng',NULL,'CN')
,(65,'Mendota',NULL,'Jiaqiao',NULL,'CN')
,(19,'Michigan','Oklahoma','Tulsa','74108','US')
,(42,'Holmberg',NULL,'E’zhou',NULL,'CN')
,(13,'Claremont',NULL,'Derbur',NULL,'CN')
,(67,'Swallow','Nord-Pas-de-Calais','Lille','59024 CEDEX','FR')
,(66,'Duke',NULL,'Longhua',NULL,'CN')
,(11,'Mallard',NULL,'Dundee','3081','ZA')
,(81,'Miller','Texas','Austin','78732','US')
,(60,'Laurel',NULL,'Xianqiao',NULL,'CN')
,(85,'Westridge',NULL,'Dadian',NULL,'CN')
,(35,'Burning Wood',NULL,'Huangshi',NULL,'CN')
,(61,'Muir',NULL,'Pingle',NULL,'CN')
,(27,'Doe Crossing',NULL,'Shaliangzi',NULL,'CN')
,(8,'Kennedy','Ontario','Little Current','J6A','CA')
,(86,'Washington',NULL,'Jinli',NULL,'CN')
,(45,'Esker','Île-de-France','Nanterre','92742 CEDEX','FR')
,(74,'Derek',NULL,'Shin’ichi','729-3111','JP')
,(48,'Kedzie',NULL,'Jinhaihu',NULL,'CN')
,(10,'Lillian','Connecticut','Hartford','06105','US')
,(100,'Waywood','Provincie Noord-Holland','Amsterdam Binnenstad en Oostelijk Havengebied','1019','NL')
,(65,'Bowman',NULL,'Vysoké nad Jizerou','512 11','CZ')
,(40,'Vera',NULL,'Rifeng',NULL,'CN')
,(1,'Declaration',NULL,'Xiniu',NULL,'CN')
,(96,'Lotheville',NULL,'Ganghwa-gun',NULL,'KR')
,(60,'Park Meadow',NULL,'Jialu',NULL,'CN')
,(4,'Pankratz',NULL,'Suzaka','389-0811','JP')
,(49,'Coolidge',NULL,'Zhuangtou',NULL,'CN')
,(50,'Butterfield','West Virginia','Charleston','25362','US')
,(20,'Bashford',NULL,'Longping',NULL,'CN')
,(57,'Myrtle',NULL,'Damiao',NULL,'CN')
,(45,'Burning Wood','Saskatchewan','Kindersley','C1C','CA')
,(33,'Buhler','Texas','Amarillo','79165','US')
,(57,'Bartillon',NULL,'Zhonghouhe',NULL,'CN')
,(80,'Graedel','Nord-Pas-de-Calais','Lille','59034 CEDEX','FR')
,(90,'South',NULL,'Chengmen',NULL,'CN')
,(84,'Forster',NULL,'Xilu',NULL,'CN')
,(23,'Corscot',NULL,'Jincheng',NULL,'CN')
,(25,'Golden Leaf',NULL,'Herong',NULL,'CN')
,(90,'Montana',NULL,'Balin',NULL,'CN')
,(78,'Lawn',NULL,'Jingkou',NULL,'CN')
,(35,'Hagan',NULL,'Hiratsuka','820-0702','JP')
,(76,'Esch',NULL,'Jianguo',NULL,'CN')
,(9,'Anniversary',NULL,'Zongzhai',NULL,'CN')
,(90,'Clarendon',NULL,'Jiasi',NULL,'CN')
,(14,'Corscot','Region Hovedstaden','København','1608','DK')
,(48,'Northridge',NULL,'Beitou',NULL,'CN')
,(32,'Donald',NULL,'Sezemice','533 04','CZ')
,(75,'Hansons',NULL,'Inuotose','270-1108','JP')
,(98,'West',NULL,'Longcun',NULL,'CN')
,(18,'Lerdahl',NULL,'Erdaocha',NULL,'CN')
,(51,'Ohio',NULL,'Dengzhuang',NULL,'CN')
,(90,'Melrose',NULL,'Talin Hiag',NULL,'CN')
,(45,'Blue Bill Park',NULL,'Dali',NULL,'CN')
,(59,'Pierstorff',NULL,'Guozhai',NULL,'CN')
,(89,'Brickson Park',NULL,'Yangjiaping',NULL,'CN')
,(8,'Dawn',NULL,'Hwawŏn',NULL,'KR')
,(3,'Anniversary',NULL,'Gaotai',NULL,'CN')
,(79,'Summerview',NULL,'Bantian',NULL,'CN')
,(99,'Corben',NULL,'Xingou',NULL,'CN')
,(3,'Fallview',NULL,'Lenghu',NULL,'CN')
,(11,'Dennis',NULL,'Xiashitai',NULL,'CN')
,(37,'Jackson','Michoacan De Ocampo','Buenos Aires','58095','MX')
,(96,'Ilene','Georgia','Valdosta','31605','US')
,(24,'Cambridge',NULL,'Grygov','783 73','CZ')
,(2,'Moose',NULL,'Tondabayashichō','589-0013','JP')
,(1,'Debra','Colorado','Denver','80204','US')
,(13,'Erie',NULL,'Jishan',NULL,'CN')
,(25,'Bunting',NULL,'Dongxiang',NULL,'CN')
,(80,'Acker','Champagne-Ardenne','Troyes','10606 CEDEX','FR')
,(46,'Trailsway','Wisconsin','Milwaukee','53225','US')
,(23,'Golf View',NULL,'Chengnan',NULL,'CN')
,(25,'Troy','Akershus','Asker','1384','NO')
,(70,'Tony','Provincie Friesland','Leeuwarden','8934','NL')
,(71,'Pankratz','Saskatchewan','Kindersley','C1C','CA')
,(41,'Summit',NULL,'Motge',NULL,'CN')
,(6,'Bunting',NULL,'Yangji',NULL,'CN')
,(59,'Clarendon',NULL,'Shimoda','886-0112','JP')
,(45,'Kropf',NULL,'Shigu',NULL,'CN')
,(24,'Ridgeway',NULL,'Tadotsu','769-0228','JP')
,(6,'Moose',NULL,'Haoping',NULL,'CN')
,(55,'Blaine',NULL,'Huangzhai',NULL,'CN')
,(23,'Fordem',NULL,'Plesná','725 27','CZ')
,(40,'Fair Oaks',NULL,'Zhamog',NULL,'CN')
,(61,'Marquette',NULL,'Uherské Hradiště','686 05','CZ')
,(62,'Superior','Aquitaine','Mont-de-Marsan','40013 CEDEX','FR')
,(84,'Crescent Oaks',NULL,'Nanae','286-0221','JP')
,(67,'Fallview',NULL,'Leicheng',NULL,'CN')
,(7,'Hintze',NULL,'Xinhui',NULL,'CN')
,(15,'Troy',NULL,'Shangsanji',NULL,'CN')
,(57,'Blackbird',NULL,'Chengyang',NULL,'CN')
,(58,'Mosinee',NULL,'Jiaoziya',NULL,'CN')
,(81,'Acker',NULL,'Gonghe',NULL,'CN')
,(16,'Vera','Bayern','Würzburg','97078','DE')
,(89,'Birchwood',NULL,'Youfang',NULL,'CN')
,(52,'Schmedeman',NULL,'Zhangbang',NULL,'CN')
,(98,'Kinsman',NULL,'Dadong',NULL,'CN')
,(93,'Macpherson',NULL,'Katsuyama','905-0002','JP')
,(11,'Loftsgordon',NULL,'Huangludian',NULL,'CN')
,(8,'Ilene',NULL,'Chroustovice','538 63','CZ')
,(50,'Moose',NULL,'Changsha',NULL,'CN')
,(51,'Rieder',NULL,'Wu’erbu Baolige',NULL,'CN')
,(3,'Everett',NULL,'Cuozheqiangma',NULL,'CN')
,(41,'Talmadge','Rhône-Alpes','Vaulx-en-Velin','69519 CEDEX','FR')
,(86,'Pennsylvania',NULL,'Wanmu',NULL,'CN')
,(85,'Killdeer','Haute-Normandie','Saint-Étienne-du-Rouvray','76804 CEDEX','FR')
,(73,'Moose',NULL,'Parys','9585','ZA')
,(75,'Grayhawk',NULL,'Yuexi',NULL,'CN')
,(21,'Acker','Connecticut','Hartford','06145','US')
,(18,'Hintze','Alsace','Sélestat','67609 CEDEX','FR')
,(61,'Bunker Hill',NULL,'Daidaon',NULL,'CN')
,(51,'Sommers',NULL,'Ueno','959-3213','JP')
,(31,'Mayer',NULL,'Shuangzhu',NULL,'CN')
,(45,'Algoma',NULL,'Černilov','503 43','CZ')
,(67,'Raven',NULL,'Bahaodi',NULL,'CN')
,(96,'Caliangt',NULL,'Anzi',NULL,'CN')
,(18,'Prentice','California','San Diego','92191','US')
,(23,'Redwing',NULL,'Chifeng',NULL,'CN')
,(34,'Randy','Illinois','Springfield','62705','US')
,(97,'Marcy','Champagne-Ardenne','Romilly-sur-Seine','10104 CEDEX','FR')
,(83,'Charing Cross',NULL,'Longshan',NULL,'CN')
,(99,'Utah',NULL,'Huangbei',NULL,'CN')
,(22,'Florence',NULL,'Zhongcun',NULL,'CN')
,(94,'Derek',NULL,'Huanren',NULL,'CN')
,(58,'Tony',NULL,'Cuijiaqiao',NULL,'CN')
,(36,'Algoma','Provence-Alpes-Côte d''Azur','Nice','06357 CEDEX 4','FR')
,(45,'Bayside','Ontario','Midland','L4R','CA')
,(68,'Montana',NULL,'Hengfan',NULL,'CN')
,(69,'Harper',NULL,'Seogeom-ri',NULL,'KR')
,(51,'Brown',NULL,'Qingshu',NULL,'CN')
,(30,'La Follette',NULL,'Wuyang',NULL,'CN')
,(50,'Corben',NULL,'Ōsaka-shi','661-0963','JP')
,(87,'Warbler',NULL,'Wenheng',NULL,'CN')
,(81,'Crescent Oaks',NULL,'Rangxi',NULL,'CN')
,(20,'Hanson',NULL,'Rifu','981-0112','JP')
,(86,'Waywood',NULL,'Wangfu',NULL,'CN')
,(69,'Meadow Ridge',NULL,'Helang',NULL,'CN')
,(69,'High Crossing',NULL,'Ōmiya','319-3117','JP')
,(28,'Mockingbird',NULL,'Setaka','834-0122','JP')
,(85,'Northfield','Hordaland','Ulset','5119','NO')
,(75,'Maywood',NULL,'Liangnong',NULL,'CN')
,(47,'Mandrake',NULL,'Kushima','959-4501','JP')
,(50,'Mallory',NULL,'Yuetang',NULL,'CN')
,(61,'Rieder',NULL,'Shufeng',NULL,'CN')
,(75,'Manufacturers','Ontario','Prince Edward','E9H','CA')
,(65,'Talmadge','Rhône-Alpes','Saint-Étienne','42963 CEDEX 9','FR')
,(41,'Village Green','Aquitaine','Mérignac','33709 CEDEX','FR')
,(56,'Springview',NULL,'Yandun',NULL,'CN')
,(86,'Maywood','Ohio','Warren','44485','US')
,(59,'Tennyson',NULL,'Nankai',NULL,'CN')
,(23,'Mallory','Hessen','Frankfurt am Main','60435','DE')
,(96,'Talmadge','Lorraine','Épinal','88084 CEDEX 9','FR')
,(50,'Dahle',NULL,'Xiaojinkou',NULL,'CN')
,(28,'Express','England','West End','DN36','GB')
,(18,'Weeping Birch',NULL,'Dengzishan',NULL,'CN')
,(66,'Leroy',NULL,'Sandao',NULL,'CN')
,(8,'Sullivan',NULL,'Yushanpu',NULL,'CN')
,(55,'Clemons','Texas','Amarillo','79105','US')
,(51,'Lyons','Arkansas','Little Rock','72204','US')
,(66,'Schlimgen',NULL,'Nanping',NULL,'CN')
,(5,'La Follette',NULL,'Dabagou',NULL,'CN')
,(56,'Butterfield',NULL,'Kan’onjichō','769-1613','JP')
,(91,'Fairview',NULL,'Moshiyi',NULL,'CN')
,(66,'Thompson',NULL,'Wangqu',NULL,'CN')
,(64,'Debs',NULL,'Jingchuan Chengguanzhen',NULL,'CN')
,(31,'Lyons',NULL,'Šestajovice','551 01','CZ')
,(56,'Northview',NULL,'Kagoshima-shi','892-0873','JP')
,(81,'Clyde Gallagher',NULL,'Hudong',NULL,'CN')
,(93,'Thompson',NULL,'Fengle',NULL,'CN')
,(76,'Hintze',NULL,'Xiaba',NULL,'CN')
,(44,'Bowman',NULL,'Wangchang',NULL,'CN')
,(6,'Hovde',NULL,'Konice','669 02','CZ')
,(84,'Express',NULL,'Xiangcunxiang',NULL,'CN')
,(92,'Orin',NULL,'Huocheng',NULL,'CN')
,(20,'Nelson','Illinois','Chicago','60609','US')
,(42,'Montana',NULL,'Daitōchō','579-8066','JP')
,(94,'Rutledge','Île-de-France','Créteil','94972 CEDEX 9','FR')
,(54,'Iowa',NULL,'Daegu',NULL,'KR');