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
INSERT INTO `visitorphone` VALUES ('002897','734522810289714'),('005048','056643844964233'),('006945','712345151601511'),('010757','931571418085430'),('013461','668283398479581'),('014653','708133310684074'),('015216','378048691882192'),('015669','035396596891087'),('016585','191783931952614'),('016895','255879658492280'),('018041','806475632020897'),('019729','778074995499488'),('020218','940383261233906'),('021121','152952943711717'),('023471','456994998708478'),('025097','832221907746778'),('025290','682360235501887'),('027200','379011966013776'),('029107','079846204463013'),('029639','718295947155774'),('036021','623778627142277'),('037072','227151228859049'),('037850','264430125878956'),('041522','956769781730796'),('042181','979288153720621'),('045103','317575444356557'),('048081','907309805333414'),('048311','606884837810141'),('051226','629209052638284'),('057629','299835367080475'),('059186','616374686987953'),('061918','316936286732023'),('063306','883410218614400'),('063843','705474884433015'),('070783','968307147219348'),('078442','998965340339775'),('079146','477914546821514'),('080346','513077996360624'),('080965','481259453721314'),('083593','006503948144922'),('085069','466003448298984'),('085402','593116182904305'),('090638','930382571026693'),('095805','284207933998124'),('097461','359492588351082'),('098079','720939748995990'),('108733','600423069955906'),('109769','026070045511966'),('110640','489721360246138'),('110755','427748843722758'),('110895','386520269274741'),('111292','497824116093467'),('118109','033589789568529'),('120682','286534187539799'),('121849','800435206968716'),('122696','915005240120078'),('122784','305928965559535'),('123561','934669664953217'),('126867','186532005206715'),('126880','269535261140072'),('127254','398106772196304'),('128843','722689153951871'),('131037','550035208714329'),('132725','301377160119682'),('137526','758157361207014'),('138474','379702443258450'),('142634','532286810501693'),('146411','137193060678301'),('146726','292632515249520'),('146995','189730737333284'),('147350','410889426651926'),('148199','327766510947417'),('148523','186668897473290'),('153344','826706021230479'),('157660','060233636117076'),('158313','964104235315902'),('161067','779948956305885'),('162472','590963368554385'),('163176','386897726682470'),('163427','936536950049650'),('169191','653548574744865'),('171009','389044503079238'),('172773','355185981156420'),('174190','247699388170465'),('175239','918539236170388'),('177269','345912570266208'),('177646','181358066315694'),('178255','615687531478255'),('183372','904856284520914'),('183778','430789375900879'),('186194','624253971565398'),('188002','648008768649763'),('188760','081086714388337'),('189717','733655525083910'),('189844','428422369574128'),('190914','876918380917271'),('193477','270569075049009'),('193654','082575147055227'),('193921','672141993949923'),('196366','085891214657210'),('197922','530438118183310'),('199578','166471231178658'),('202530','721419302796390'),('204428','907843730743706'),('212435','282881505986214'),('214838','507159301903468'),('216718','298246396429454'),('217414','035420278414774'),('218161','026578940768584'),('227046','649117299182034'),('232590','155808393424197'),('233148','873308952354634'),('234501','977032315034953'),('234926','980296830890407'),('235006','413935512451716'),('235648','689445165264817'),('235740','695299472487470'),('237496','329128929748473'),('246584','412787167849749'),('247123','948028658553041'),('249528','652770060935662'),('249788','982038768742281'),('250175','394617011994663'),('251628','386409451643546'),('252065','738215202842087'),('257999','292579314574927'),('260538','987966187219411'),('261005','221843874936526'),('262879','470067404627007'),('263099','796036660269970'),('263703','775561583268222'),('264502','715275865799537'),('269128','717419750168045'),('271967','382146703563012'),('272210','655271945136316'),('273477','950538753467566'),('275169','501879639019629'),('275206','200453171233638'),('275227','651433872134760'),('277899','303193312823948'),('281209','352046492273655'),('281233','576986854450413'),('282062','934888713357481'),('282699','013412645394291'),('285743','811489388205716'),('287248','633438181263356'),('291016','375140828527458'),('293695','205220461673777'),('294202','853228256918214'),('296962','695809452237199'),('300207','371450161598613'),('301558','790686193188101'),('303650','015602475671883'),('303664','547447667569336'),('303930','704529148117017'),('306862','114289008243844'),('311509','391193169692843'),('311531','920185262812820'),('312181','995160040206425'),('317257','832514389822696'),('321097','328070796421537'),('321681','793124071163787'),('325086','705061091553861'),('328330','351482586242222'),('332047','785512862538745'),('333181','050229230606246'),('334321','060451841893507'),('335035','225536092154551'),('337301','228731441204846'),('341934','074280805741745'),('342889','766766858615046'),('343023','321753397069674'),('343649','508214003267166'),('346469','366887208066440'),('349439','204179811221039'),('351946','534986779503876'),('352105','219146061066145'),('353308','244193840298684'),('356096','597932010311628'),('362305','914369785517196'),('364305','586919662789286'),('364657','468303929427278'),('367539','718424031681043'),('368579','057103348527318'),('368677','700792762232407'),('374102','916685873460130'),('378795','020187430872672'),('378869','412213764691293'),('386370','428685980291559'),('386504','647633349629167'),('387634','135750597961125'),('390991','250750996692358'),('391986','037186379242451'),('396227','739298786197087'),('396330','163136308369200'),('397010','623539073011441'),('399289','005900807689885'),('399475','436638256969041'),('400201','716313173795985'),('402412','310809792561028'),('404856','353845967043432'),('405181','502364547938854'),('408783','462911017912666'),('409019','366938435370304'),('409026','432142289873982'),('411371','919483228319891'),('415126','324989304564943'),('417666','024900893885917'),('418371','047314186315084'),('422143','122978049234801'),('423930','691335300778190'),('425441','232770261739226'),('428771','704875725907839'),('429448','796251326093149'),('429716','971942675786368'),('431558','789049085208869'),('432343','471770581610450'),('433302','626418321922168'),('435783','829023429583091'),('436031','491707900008537'),('436666','352184986468322'),('438770','724059714117721'),('440714','264755057540075'),('441291','458564953988801'),('443222','811216534586389'),('449935','949999839769187'),('451897','337462137265622'),('455918','365451946416169'),('462155','601311862169577'),('462362','697486969356629'),('463007','565149413934815'),('464631','924353912477737'),('465016','698318583479000'),('466581','066852750527353'),('468103','741097868309882'),('468342','876314764606196'),('468408','559284098489303'),('472890','657583489384049'),('475228','041948689246624'),('475347','878899831463378'),('477337','200124596500413'),('477366','746855503028663'),('477872','099353643407350'),('480083','345585187359467'),('480662','810144846785712'),('481201','253227765440725'),('482561','399712547073714'),('485509','020233469968397'),('489111','995182938135004'),('489155','367623186728565'),('491148','362073403984925'),('491492','743663306079156'),('493204','187684168166764'),('494534','993930387548410'),('494559','847587077018399'),('500231','392344445042228'),('501138','792193805723920'),('501182','887149086847436'),('501222','061220482411256'),('501244','838575401806082'),('502363','607364858607292'),('503109','356410613787154'),('508845','588075508947130'),('511266','274628185982060'),('511296','962202054570851'),('512077','138332020801975'),('513871','232403069074830'),('514327','728217470966930'),('514721','894911864440232'),('515232','288137342346925'),('516721','974302187472175'),('516813','544091093607034'),('518430','525048058660394'),('519195','526918826675316'),('526233','324926948226139'),('528624','447185239472182'),('532380','835321986477975'),('532600','911983673609860'),('534712','199140553925252'),('536736','289375914621450'),('541048','615464583114759'),('541897','282037139735874'),('547626','541873596230113'),('548669','917450697046681'),('548939','254451844914522'),('549159','703727857977743'),('549406','323618631864739'),('551096','771657483237091'),('551319','513512561355371'),('553880','392825213242886'),('558929','071871113996947'),('560264','762894169886223'),('560340','469213777261340'),('563044','622130690048886'),('565629','095946152098610'),('569226','176275043784103'),('570786','390312513597569'),('571455','965755865475642'),('577075','077878129739674'),('577335','292340024859347'),('581096','985854831583290'),('583553','677676288749153'),('584326','040719196649101'),('585878','716065093520026'),('586882','069408824625740'),('591107','288436151782634'),('592587','035218655372682'),('592922','356873003182976'),('593577','829150921354920'),('598627','469993602622422'),('603205','196824700800226'),('604178','356376089369307'),('604714','129337875829710'),('608463','365553080776303'),('608722','102412326175045'),('610751','163021741147548'),('611081','429267453627387'),('612292','308351786765972'),('613646','490682346818909'),('615650','635763587255665'),('617393','129238412029061'),('622464','186937364930970'),('624438','140052149631506'),('627107','234620771359843'),('629796','901406021732217'),('630596','233749657690462'),('631749','261151773716865'),('632210','035256883957210'),('632781','462159691306642'),('634765','495622243709591'),('636009','434539121922371'),('638053','451877525338921'),('638567','278066372682459'),('638635','691287320093054'),('643438','123976604652465'),('644666','396563927418987'),('645352','262018198983550'),('647085','715638273584296'),('649121','441005611412156'),('651201','928542803374824'),('651247','954736334866556'),('652023','284059914125811'),('652133','049024846715997'),('656609','570813786883571'),('658529','568926245783126'),('659868','404910471831652'),('661138','518550249748348'),('662511','452106356814494'),('663859','625694528487377'),('665717','134133562828326'),('666616','619825224605547'),('669115','123189393568240'),('669779','924854337159142'),('670893','602047467464177'),('674304','627816775725987'),('676246','788358614037315'),('677015','590815697198917'),('680246','066566757339846'),('681473','705583875378883'),('684478','862111008507834'),('684551','674754286536289'),('685501','103702613066864'),('686378','182459196771858'),('688245','172128331311954'),('691087','783250328884593'),('693065','394058074843521'),('697085','265650344148415'),('697568','947207695389749'),('703118','916798990599839'),('704508','011447302527159'),('714623','037786416592498'),('715898','194313837630856'),('721431','191632171225471'),('721534','672480365600938'),('724160','417287229844277'),('724300','785560190026375'),('725674','434091864260059'),('726329','644850554282004'),('728459','629230462576022'),('729284','157738456780022'),('735827','986874931639908'),('737939','694243838503943'),('738086','912353437658474'),('740450','747141076757852'),('741886','365237640095278'),('757350','352132772005735'),('761142','803901908463417'),('764072','813750539778534'),('765679','292872946490582'),('767034','711882606045091'),('767493','288925590970230'),('769174','361308415195517'),('771572','898862364410190'),('772933','860382164842352'),('775080','637090392821265'),('776379','191346800474862'),('776885','371374739576368'),('779762','054909270681808'),('781327','354230466993980'),('783360','075968945347208'),('783964','708043953162337'),('784348','585325689778912'),('788256','463194601628562'),('791574','050206390763574'),('795527','777511123347284'),('795795','318720715002325'),('799943','048735229121964'),('800729','086966268510698'),('806444','512524046508611'),('808689','188725011687830'),('809464','622067201459261'),('810793','709678273510209'),('812782','962634683272843'),('815086','021988276700967'),('815751','941045411240004'),('817482','167356659015645'),('823976','292575258207205'),('824072','867804873865016'),('826329','965127544986752'),('831092','882059971658858'),('836480','413080183990264'),('838031','483471536284667'),('838362','821623849998118'),('840114','114160179830049'),('842719','814448145316981'),('843172','241983651131011'),('847700','486399238695294'),('849205','243733600358091'),('850835','867025833115424'),('852109','338092843873564'),('852834','784178394467427'),('853413','217402377287874'),('854782','749387470261729'),('860145','449589228142393'),('860937','333231935746325'),('862155','038457351225125'),('872184','798126875706361'),('874548','106209376075091'),('875668','207629438106409'),('880570','890826330000510'),('883219','542691032180932'),('884045','866022150018133'),('890539','170574605507975'),('890937','722395950651723'),('891699','369388381055895'),('896351','565009454947079'),('898925','594642280999276'),('900555','793200627665771'),('901897','795918866074507'),('902565','494130369658943'),('903055','718017557018552'),('909031','561277637229825'),('910979','569176071731991'),('914517','474471525363189'),('919852','722135968386019'),('922283','523160132931636'),('926206','833019839403164'),('926341','156677081699454'),('926829','008352616522630'),('926894','009567419009850'),('929860','213937620734216'),('934828','555836312433838'),('935995','567590941369325'),('937326','600915661217364'),('938371','630275370830262'),('938565','263376429133124'),('939888','160609264286192'),('945132','221396062475297'),('946003','919894520643693'),('947105','558282663149855'),('948000','304414615192380'),('948239','168465152350402'),('949991','128039348522813'),('950478','870784866450275'),('950674','345335382991717'),('950748','101136021143471'),('953494','419117733051060'),('953769','021236762159974'),('953877','939365085482271'),('957237','208237297096534'),('957331','633804871963013'),('960116','708429818525536'),('960631','497702522807829'),('961174','138842331967563'),('962218','403938342968250'),('963078','054803424295308'),('963402','970622008134893'),('970187','468439458717028'),('974449','525842090912463'),('975547','966852723022241'),('976717','215418891245677'),('979590','925581324821423'),('980428','411553796918024'),('982230','238919893449751'),('985488','709355123507731'),('986626','861723277956726'),('992115','046529914417713'),('993250','517488423350705'),('996624','745750702880278'),('997799','503192384906145');
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

-- Dump completed on 2024-12-03  0:53:23
