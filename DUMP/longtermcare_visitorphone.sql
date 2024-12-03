-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: longtermcare
-- ------------------------------------------------------
-- Server version	8.0.40

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `visitorphone`
--

DROP TABLE IF EXISTS `visitorphone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visitorphone` (
  `visitorID` varchar(10) NOT NULL,
  `phone` varchar(15) NOT NULL,
  PRIMARY KEY (`phone`,`visitorID`),
  KEY `VisitorPhone` (`visitorID`),
  CONSTRAINT `visitorphone_ibfk_1` FOREIGN KEY (`visitorID`) REFERENCES `visitor` (`visitorID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitorphone`
--

LOCK TABLES `visitorphone` WRITE;
/*!40000 ALTER TABLE `visitorphone` DISABLE KEYS */;
INSERT INTO `visitorphone` VALUES ('002141','705815889366052'),('004184','122864221984769'),('005120','494466748206259'),('007041','641577069502111'),('010274','473466947857562'),('011275','387568814772044'),('012530','359167026585573'),('013775','096388381637788'),('018634','777826333186755'),('019187','146163021111250'),('019256','845883246657344'),('021304','874639043090292'),('022150','444165939926297'),('024967','472375144426015'),('026644','715579854533782'),('028390','194866978331803'),('028521','871133593709164'),('028710','293042653444836'),('029830','010791136744269'),('030364','389675616631348'),('034808','538562468819513'),('036314','177819055893362'),('036483','613278427335962'),('040951','283074646612327'),('045472','796919326408903'),('049126','276246070665933'),('050874','824007709547945'),('051070','273687171836886'),('051596','045891476713694'),('052091','278975828683961'),('054321','143557187617889'),('055222','136224197000835'),('058524','991417661176554'),('062235','500516289956539'),('065483','347265627561173'),('067172','596778261682223'),('068630','291266062811609'),('069335','696397687685965'),('074942','082244046968863'),('075191','726012379605525'),('075466','474709385754676'),('075942','805243722938657'),('077850','476161097880072'),('079575','503409779306514'),('084074','494802381502808'),('085852','756003482350334'),('093476','860723315374410'),('098928','442668252077271'),('101021','248560521637264'),('103620','392643813004501'),('107038','886761046315043'),('107837','285219004600549'),('110150','864159101940198'),('111395','929332269024497'),('112630','497504920431291'),('113617','330367488688776'),('114170','883896011032549'),('118840','436042822241963'),('119091','854739846244408'),('122625','327562461011712'),('122999','979179936764764'),('123482','204548961266284'),('126037','968163169787521'),('129402','889479314825759'),('132285','449412433012195'),('132556','059619924787048'),('132857','002095293533627'),('134358','774481376525218'),('135059','463974396006848'),('138639','701432699391820'),('138643','631321766488608'),('139720','861538854257367'),('144332','818800520992161'),('145864','496140424849629'),('148518','110348493277114'),('148691','011768202910990'),('149013','949786937101596'),('149249','766980380517858'),('149265','873743408104645'),('153818','854660958182030'),('153988','226087448061299'),('155690','405515491906347'),('155977','503649533357664'),('158134','240171642691755'),('160740','279206518445511'),('161040','472460056216511'),('162862','232274591525363'),('163902','596112133966242'),('165570','292987015002831'),('166247','811660605966798'),('168024','918777779534956'),('170398','482370963879787'),('170953','890108863480114'),('171328','998335221089769'),('174951','984165202786151'),('177361','325636878379906'),('179020','653646008898679'),('183411','952983721863675'),('185414','552336846452971'),('188628','617102875238486'),('188735','752236377223904'),('188996','913037335156307'),('192484','982679545184666'),('192630','047522344149517'),('194213','027621308407493'),('196556','904099070503678'),('197144','301425949873174'),('198515','632777574150971'),('199063','868183957839264'),('202589','540749781424028'),('204887','187489546475303'),('206934','695928240768425'),('208080','713075273055721'),('208660','185814235173767'),('208895','007295228724856'),('209976','138695497480114'),('210717','914770189352368'),('215899','555410583900373'),('220114','315754704872805'),('220603','286919521627547'),('220669','053145718282993'),('221457','893089282472591'),('221628','843211955894738'),('222499','323348937629301'),('232937','417149195197193'),('232965','805498488281430'),('233308','372147206924508'),('233988','884175153893345'),('234868','780858799281940'),('236502','612560358337504'),('238972','757148219729505'),('246088','098175931833896'),('247549','063867511836684'),('247747','764482781553180'),('248055','349630126466728'),('250278','730639117232943'),('250450','948658451426218'),('255370','286288703901531'),('258028','174500933310022'),('258331','044990237065828'),('261065','864147331873304'),('263480','302924016932948'),('264612','469697288950963'),('269356','991760292844453'),('269413','568948863743538'),('274032','847466768886432'),('274637','115405835594626'),('275863','034810978693942'),('276046','410588342905653'),('276418','820645888056043'),('277014','866164066428393'),('277901','992907871204779'),('281810','293678900287060'),('283633','425224292972064'),('286764','830649114707270'),('288434','881304317995372'),('288513','205599523755238'),('288719','534084874246055'),('292978','902977243472690'),('299634','463010515048194'),('300129','057723565910389'),('304287','371429748753946'),('306371','597020431516780'),('306858','667465978365964'),('310200','487817232946066'),('312206','717425895618751'),('313606','681182015684527'),('314926','382934381139239'),('315881','497247701839604'),('316294','575574338528713'),('317319','818771466354021'),('319770','838981716144288'),('320289','554909820353779'),('327108','998928604900674'),('327245','378295546819720'),('328717','166550306220556'),('329624','028706256743366'),('331932','225916998205092'),('333635','657780827206239'),('335979','952728332417748'),('338961','505685240152304'),('338987','228352364026098'),('339853','993917361493783'),('341576','222090858823091'),('344022','429387483376743'),('344864','289834907462361'),('345427','158032471463192'),('347313','390271259532042'),('349457','381023646153836'),('350445','266033303964889'),('353358','010394383693138'),('353624','310426106685196'),('355035','233795426992442'),('359410','210828047418521'),('361125','555601312551036'),('362839','833046178737063'),('365222','125817844198106'),('370130','849444533489021'),('371350','103284424300718'),('375979','550508320977508'),('378276','197450663335190'),('378532','809599239869781'),('378842','578556112700426'),('378890','702545115519305'),('381969','973393291472268'),('384057','029814125546776'),('385037','786993585686802'),('385533','446324019211873'),('386617','243105868171573'),('388819','793963766846038'),('389939','666408890788115'),('390131','552807180957797'),('390867','604678992045884'),('390983','234451281915034'),('397473','784982932598988'),('397934','284773291030397'),('401619','474896124682330'),('410294','470155260979237'),('414514','624326382383062'),('415548','734367460105062'),('415962','184389428338869'),('416027','406950976010712'),('416126','884390275733075'),('417806','514267363754862'),('419453','624188356917361'),('419601','541439057027046'),('424776','135440960008121'),('429680','268777838386116'),('436105','077607538040409'),('436285','494296587851830'),('437022','322049527964742'),('438500','287924503422795'),('440506','358812284367274'),('441249','807325244994764'),('442337','250837988300635'),('442722','516053353254129'),('444516','873484063585584'),('445317','716964750009222'),('445432','581214586074369'),('445683','521582007071523'),('446388','852628589471116'),('448263','835215779059874'),('448446','030619632806114'),('450265','280613946994964'),('450803','889837127512907'),('452799','951531061689082'),('453255','799763130034018'),('457285','411907269913694'),('462227','887611082670819'),('465311','013792204427470'),('466647','399063660567596'),('466935','423477527374710'),('469549','080733447366367'),('471351','370874751066852'),('477265','938206245522167'),('477623','050660977029016'),('479799','214144394359172'),('483322','161569607183736'),('483498','283609090041097'),('483551','107591323698745'),('487206','418504635865999'),('488232','390438081752203'),('490357','578689405002284'),('490932','643738232044894'),('491045','359693654154980'),('491963','139146629602914'),('493906','857745231653049'),('495424','922731032933779'),('498708','759619936683755'),('499295','426346975154108'),('501323','068586768633213'),('501998','349849248935669'),('503550','288065881280290'),('505013','092332667537236'),('515126','570623616368456'),('517302','020923006653006'),('520092','037001486252369'),('520437','023787951112647'),('520481','819611817377364'),('521967','411364396886195'),('524811','425610721687382'),('529445','493763027666059'),('530417','010306124516073'),('531331','433604380836866'),('538841','475790852882391'),('539573','587623216189217'),('540250','992630224882564'),('542358','742014142047463'),('544084','884565666302343'),('544361','096976632581997'),('546886','685491955694904'),('548583','991424444523732'),('549725','657306242029939'),('550125','839549377032917'),('552063','890115515689431'),('554505','248064726045141'),('554537','118239851096457'),('555436','143018158109669'),('562063','550647505551416'),('569500','549447667355759'),('571332','787353929942845'),('572345','710485311614883'),('572647','137395144776738'),('573467','702731933186604'),('573737','990337722624499'),('574185','631793343367987'),('584675','734001503021291'),('587381','011353575102707'),('589566','123054336171839'),('592299','098641372057127'),('592440','513369912774913'),('595550','962908689558727'),('596692','201754905988271'),('598467','606341239713701'),('600717','980476420994978'),('611574','757269292535480'),('611894','921821837877371'),('614322','047351711703864'),('614756','723208494184425'),('615373','767400252421201'),('620555','177404896051652'),('620892','736280518912242'),('621007','486090688202200'),('621561','137183325177019'),('624217','553943602929547'),('625587','335570685128454'),('626360','319272284135746'),('628587','821801987980517'),('629636','535115213355837'),('631957','226977398084295'),('633432','113484088228585'),('634182','930372586805450'),('635723','890332936179297'),('636205','767842334349869'),('642608','148604797183142'),('647731','212243180646399'),('649349','901682130996273'),('654102','163310754934856'),('657020','535405325043913'),('663473','501387984589595'),('666682','588698742638273'),('668183','407303485664942'),('670532','330496974736242'),('671343','782519209087325'),('671351','723217886548582'),('674040','192908960058841'),('675380','410755085197135'),('682286','569803586059612'),('682665','174197568020868'),('683188','415547705953415'),('683645','445651541136527'),('684426','119936086895645'),('685642','050189826065231'),('687589','535746070409324'),('688421','628762359340032'),('689149','371914321844280'),('690394','836594333643066'),('690600','312323102702762'),('692717','506208268521215'),('694480','801935318185985'),('695215','970328848112670'),('696324','200123645950250'),('700154','252980907272978'),('700557','049425582841905'),('706938','631595006179838'),('708988','502578698447183'),('710669','279300233116836'),('711291','481340611917068'),('712305','894215470667774'),('715550','399187657872094'),('718520','187131385036883'),('718715','097385298828549'),('718891','688692150039060'),('720067','708353015881294'),('720169','994314354466232'),('720296','421103808907029'),('721004','613813338162218'),('723525','928940854649695'),('723597','312233212650887'),('726068','433738832118459'),('727138','676720898404833'),('727675','313818633018440'),('730938','800717563029585'),('731499','349044447519599'),('731600','327312770585429'),('739750','586707811921518'),('740301','505224335002768'),('741833','316722918843112'),('743922','656568260587700'),('745140','562464932632113'),('750518','609617156229861'),('750786','101290554928871'),('752414','069991791948656'),('755910','445032391480850'),('757689','204915510173607'),('761445','831479647287098'),('761832','455106728866342'),('765045','541942948071977'),('766342','135088745916801'),('767970','285114080170380'),('772540','635228763736619'),('774566','961372095673788'),('776409','050394201104201'),('777077','612796096987541'),('780293','859424326906598'),('783543','437753355044732'),('786630','433030125821111'),('788198','745197089966673'),('791420','228506177443408'),('791582','571000907794117'),('794430','191242981876425'),('798390','759730308240088'),('798482','840370141580661'),('807442','835317178523373'),('807454','686093696519186'),('808410','781646849589636'),('809956','079038073664126'),('810943','696173247381867'),('812686','746900979717894'),('820695','033505458449103'),('821265','494660131199230'),('823658','006268177444024'),('833068','536156925778995'),('833082','852881887173113'),('837709','400279053739291'),('841543','857194684599971'),('845389','432544804425626'),('845729','797796272763409'),('846507','817557108587092'),('848990','623301768953677'),('851151','270615829212289'),('852699','091284047582498'),('855866','437565069982074'),('857378','573185146493530'),('860745','854357623829190'),('864005','605178981987980'),('868094','825058389347971'),('870232','755309286598261'),('874025','244512620137740'),('874459','608337612373692'),('874490','130193698967415'),('876293','194786289212206'),('877576','967434731495325'),('886148','504521107339107'),('887355','553820558241748'),('889668','872432458607027'),('890217','976791907570388'),('892167','225495624874169'),('892209','197824272956843'),('892267','858288624206733'),('894285','819680066343386'),('897751','641060572309994'),('900689','327608851988061'),('905132','713132330361207'),('905369','401869928267175'),('906668','974742348741436'),('910204','208697350264243'),('911545','590053644970167'),('912485','939252525991638'),('914992','870104617197389'),('919043','616515331174846'),('920391','012983737634691'),('921513','974657388756307'),('925223','279378740495055'),('927154','226064276383636'),('929424','005275428497474'),('932222','414977060635088'),('932263','346391380651444'),('932332','493136302260309'),('938247','157489852439751'),('946853','204276447159665'),('948120','821644441069809'),('948344','013180098895526'),('949436','249784983379594'),('950055','167441093106995'),('950587','923086188187134'),('952920','267102008780833'),('952945','456947297254803'),('954774','141221408540721'),('957436','352222921300126'),('957812','423755343859730'),('958583','710527287831879'),('962954','947104305365302'),('969852','177487005783795'),('970112','661819616526935'),('973005','424955313172254'),('973319','224328177054178'),('975392','936277013773506'),('982110','555141280671929'),('984024','603588184622644'),('984340','657625520554145'),('985458','795300238274432'),('985678','240132841782076'),('987073','612671317040755'),('991241','971394762899344'),('992448','884592924924834'),('994180','327190710092967'),('994220','647260190623650'),('994379','682590074194965'),('997471','251228850527381');
/*!40000 ALTER TABLE `visitorphone` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-02 22:56:38
