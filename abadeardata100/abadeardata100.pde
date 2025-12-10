ArrayList<Match> matches = new ArrayList<Match>(108);
String[] fileRows;
// image list (not in a list or array as it will be difficult to navigate)
// only images needed in my dataset needed
PImage ptsnarutoicon;
PImage ptsnarutoiconL;
PImage gilgameshicon4S;
PImage enumaelish;
PImage zoroW; // https://www.flickr.com/photos/ahmedkhan123/ CC BY NC ND
PImage zoroTS4S; // CC BY NC https://anime.goodfon.com/senen/wallpaper-one-piece-by-hayabusasnake.html
PImage zoroPTSL; // CC BY (cropped by me) @misc{
//      one-piece-characters_dataset,
//       title = { One Piece Characters Dataset },
//       type = { Open Source Dataset },
//      author = { AMIRA },
//       howpublished = { backslashurl { https://universe.roboflow.com/amira-sgabp/one-piece-characters } },
//       url = { https://universe.roboflow.com/amira-sgabp/one-piece-characters },
//       journal = { Roboflow Universe },
//        publisher = { Roboflow },
//       year = { 2024 },
//       month = { mar },
//      note = { visited on 2025-12-04 },
//      }
PImage slashBarrage;
PImage redStar;
PImage yujiW; // CC BY NC ND https://www.deviantart.com/n0barakugisaki/art/Itadori-Yuji-kun-from-JJK-1048982700
PImage blackSparks; // by me
PImage painW; // CC BY NC ND https://www.deviantart.com/peetzaahhh2010/art/Pain-Deva-Path-Yahiko-Colored-475210842
PImage explosion; // by me
PImage mrSatanL; // CC BY NC https://www.deviantart.com/greytonano/art/Ultra-Instinct-Mr-Satan-887956947
PImage kakashiW; // CC BY SA https://www.flickr.com/photos/spacey/165782193
PImage kakashi4S; // CC BY NC SA https://www.deviantart.com/tan1aka/art/Kakashi-Hatake-907938153
PImage kamui; // by me
PImage rockLeeW; // CC BY NC (cropped by me) https://anime.goodfon.com/senen/wallpaper-naruto-anime-sionen-rok-li-rock-lee-naruto-anime-green.html
PImage kunai; // by me
PImage rockLeeL; // CC BY NC https://anime.goodfon.com/senen/wallpaper-naruto-naruto-rok-li.html
PImage tobiW; // CC BY NC ND https://www.deviantart.com/sasukekakashi12/art/Chibi-Tobi-87898216
PImage jotaroW; // CC BY NC ND https://www.deviantart.com/spiritualphoenixart/art/Jotaro-Kujo-and-Star-Platinum-872907780
PImage pucci4S; // CC BY NC ND https://www.deviantart.com/dragonfighter64/art/Enrico-Pucci-Made-in-Heaven-941139474
PImage knife; // by me
PImage jonathanW; // CC BY NC ND
PImage hamonSparks; // by me
PImage jonathanL; // CC BY https://www.deviantart.com/fin991/art/Terrible-Day-For-Rain-935864060
PImage acceleratorW; // CC BY NC cropped by me https://anime.goodfon.com/senen/wallpaper-magicheskii-indeks-accelerator-kamijou-touma-kuroko-shirai-t.html
PImage illyaW; // by me
PImage heavenBird; // by me
PImage illyaL; // by me
PImage gonW; // CC BY NC cropped by me https://anime.goodfon.com/other-anime/wallpaper-hunterxhunter-gon-killua.html
PImage gonL; // by me
PImage chrolloW; // CC BY NC ND https://www.deviantart.com/greenmapple17/art/Chrollo-Lucilfer-V2-Hunter-x-Hunter-Minimalism-518937568
PImage bensKnife; // by me
PImage gogetaW; // CC NY NC SA https://www.deviantart.com/troloinkto/art/Gogeta-SSB-DBS-BROLY-873324536
PImage gogetaL; // CC BY https://www.deviantart.com/patadiloz/favourites/86725298/dragon-ball?page=32
PImage shanks4S; // CC BY NC ND https://www.deviantart.com/darko-simple-art/art/Red-Haired-Shanks-One-Piece-927029571
PImage chidoriSparks; // by me
PImage gust; // by me
PImage rolandL; // by me
PImage rolandW; // by me
PImage roland4S; // by me
PImage durandal; // by me
PImage durandalOpp; // by me
PImage allasWorkshop; // by me
PImage usoppL; // CC BY SA cropped by me  https://www.deviantart.com/jhonemile/art/USOPP-Crucified-One-Piece-924741087
PImage brolyW; // CC BY NC https://anime.goodfon.com/other-anime/wallpaper-broly-dragon-ball-super-saiyajin.html
PImage broly4S; // CC BY https://www.deviantart.com/theraziel27/art/Broly-from-Dragon-Ball-Z-Reimagined-1027333460
PImage saberW; // CC BY NC https://anime.goodfon.com/senen/wallpaper-fate-stay-night-seiber-arturiia-pendragon-devushka-mech-ryts.html
PImage saberL; // CC BY NC https://anime.goodfon.com/seinen/wallpaper-art-fate-stay-night-mordred.html
PImage allMightL; // by me
PImage dekuL; // CC BY NC https://anime.goodfon.com/senen/wallpaper-midoriya-izuku-my-hero-academia-boku-no-hero-academia-moia-6.html
PImage vigilanteDekuW; // CC BY NC https://printerval.com/jp/izuku-midoriya-fanart-print-my-hero-academia-anime-manga-dark-deku-vigilante-deku-p429342?srsltid=AfmBOoo2DjVyza8kruFy3VNE9qtN2PdCqfcyqyu0umXR0z5VbuLv06uU
PImage sasukeWarW; // CC BY NC https://anime.goodfon.com/seinen/wallpaper-naruto-uchiha-sasuke-2093.html
PImage sasukeW; // CC BY NC ND https://www.deviantart.com/serabellym/art/Sasuke-Uchiha-Shinden-Edit-889085977
PImage sasukeL; // CC BY NC https://anime.goodfon.com/senen/wallpaper-naruto-shippuden-uchiha.html
PImage sasuke4S; // CC BY NC ND https://www.deviantart.com/hyb1rd-1982/art/Sasuke-CS2-by-White-Angel-576665798
PImage dioW; // CC BY NC https://www.deviantart.com/therealkanekiart/art/Dio-Brando-from-Jojos-Bizarre-Adventure-978898310
PImage gokuW; // CC BY NC ND https://www.deviantart.com/aubreiprince/art/Namek-Saga-Super-Saiyan-Goku-VFX-593561606
PImage gokuL; // CC BY NC https://anime.goodfon.com/other-anime/wallpaper-dragon-ball-goku-namek-saga.html
PImage alucardW; // CC BY NC https://www.goodfon.com/anime/wallpaper-badfon-hellsing-hellsing-alucard-2513.html
PImage targetSign; // by me
PImage playingCard; // CC0 https://freesvg.org/king-of-hearts-playing-card-vector-image
PImage alucard4S; // CC BY NC https://anime.goodfon.com/other-anime/wallpaper-hellsing-ultimate-alukard.html
PImage jinbeW; // CC BY NC ND https://www.deviantart.com/toroi-san/art/Jinbe-One-Piece-786312377
PImage jinbeL; // CC BY SA https://commons.wikimedia.org/wiki/File:Mackerel_fish_fry_-_Kolkata_-_West_Bengal_-_1.jpg
PImage josephW; // CC BY SA https://www.deviantart.com/orphanguy/art/Joseph-Joestar-Alternate-Color-904667705
PImage josephL; // CC BY NC https://www.deviantart.com/benjaminve/art/Joseph-Joestar-Oh-No-673704811
PImage tanjiroW; // CC BY NC ND https://www.deviantart.com/aratalab/art/Tanjiro-Kamado-Intense-Focus-1149677496
PImage tanjiroL; // CC BY https://www.deviantart.com/celinegurung6/art/Two-sides-of-jigoro-kuwajima-1101817447
PImage yoruichiW; // CC BY NC https://anime.goodfon.com/senen/wallpaper-bleach-shihouin-yoruichi-6303.html
PImage shisuiW; // CC BY NC https://anime.goodfon.com/senen/wallpaper-naruto-shippuden-naruto-7104.html
PImage weatherReportW; // CC BY NC https://printerval.com/jp/weather-report-weather-report-jojo-the-jojolands-smartphone-case-iphone-case-clear-cover-jojo-lands-the-jojolands-serialization-anniversary-p276975?srsltid=AfmBOoohb1gcZdbunwjfxvj_zu3LhzdI2FyfVs6lN9BfO2yHOpqTvnXj
PImage sung4S; // CC BY https://www.deviantart.com/metamegu/art/Solo-Leveling-Sung-Jin-Woo-1170024119
PImage sungL; // CC BY https://www.deviantart.com/metamegu/art/Solo-Leveling-Sung-Jin-Woo-1157947225
PImage metalBatW; // CC BY https://www.dearplayers.com/my/events/one-punch-man-the-strongest/fun-wonders-metal-bat-encore?srsltid=AfmBOorO8hcOdC9HW21xr2XmSHVE66a3wL0omrdcumwuR1z-p_Ktj4DS
PImage yhwachW; // CC BY NC https://anime.goodfon.com/senen/wallpaper-bleach-by-kingpaulie-yhwach-a.html
PImage bardockW; // CC BY https://www.deviantart.com/lars125/art/Bardock-Render-1082491931
PImage powerW; // CC BY NC ND https://www.deviantart.com/teetowr/art/Power-944718817
PImage spear; // by me
PImage sukunaL; // by me
PImage vegetaW; // CC BY NC ND https://www.deviantart.com/niduag/art/Vegeta-1122461321
PImage superVegetaW; // CC BY NC https://www.goodfon.com/games/wallpaper-super-saiyan-blue-vegeta-dragon-ball-4k-8k.html
PImage rengokuW; // CC BY https://www.deviantart.com/aiqoz/art/Kyojuro-Rengoku-2-Kimetsu-no-Yaiba-989147553
PImage morelW; // CC BY SA https://commons.wikimedia.org/wiki/File:Morchella_conica_1_beentree.jpg
PImage weiW; // CC BY NC ND https://www.deviantart.com/mrjungkookie/art/Mo-Dao-Zu-Shi-Wei-Wuxian-papercraft-complete-846842781
PImage tojiW; // CC BY NC https://anime.goodfon.ru/art-anime/wallpaper-mech-dukh-katana-anime-magicheskaia-bitva-derevia-ulybka-vys.html
PImage tojiL; // CC BY NC ND https://www.deviantart.com/allesshey/art/Gojo-Satoru-vs-Toji-Fushiguro-Manga-Panel-Colored-939557431
PImage starrkW; // CC BY ND https://www.deviantart.com/marieella86/art/Shuuhei-Hisagi-438057554
PImage luffyL; // CC BY NC https://anime.goodfon.com/other-anime/wallpaper-anime-one-piece-luffy-sky-5279.html
PImage luffyW; // CC BY NC https://anime.goodfon.com/art-anime/wallpaper-anime-one-piece-luffy.html
PImage todoW; // CC BY SA https://commons.wikimedia.org/wiki/File:Captura_de_tela_2024-05-21_014717.png
PImage todorokiW; // CC BY NC https://anime.goodfon.com/senen/wallpaper-todoroki-shouto-boku-no-hero-academia-fon-paren-geroi.html
PImage cellL; // CC BY ND https://www.deviantart.com/zika-arts/art/Perfect-Cell-Angry-DBZ-597194964
PImage speedwagonW; // CC BY NC ND https://www.deviantart.com/xpurplepiex/art/JoJo-REO-Speedwagon-858382083
PImage ichigo4S; // CC BY NC https://anime.goodfon.com/other-anime/wallpaper-anime-blich-bleach-kurosaki.html
PImage hat; // by me
PImage repelEffect; // by me
PImage mobW; // by me
PImage mobL; // by me
PImage chains; // by me
PImage kurapikaW; // CC BY NC ND https://www.deviantart.com/needtokilltime/art/Hunter-X-Hunter-Chapter-339-Page-13-Colored-672488246
PImage getsuga; // by me
PImage doppioW; // CC BY https://www.deviantart.com/miyamotito/art/Stand-User-Ermes-Costello-952464108
PImage yusukeW; // CC BY ND https://www.deviantart.com/jouta1999/art/Yusuke-Urameshi-Render-1102627618
PImage piccoloW; // CC BY NC ND https://www.deviantart.com/niduag/art/Piccolo-1129013528
PImage piccoloL; // CC BY NC ND https://www.deviantart.com/bringerofdeathdbz/art/Clone-Piccolo-III-I-Am-So-Original-360382248
PImage crocodileW; // CC BY NC https://www.goodfon.com/anime/wallpaper-badfon-art-yohi-one-piece-sir.html
void setup()
{
  // basic setup
  size(2500, 1500);
  background(255);
  frameRate(60);
  // load all images
  ptsnarutoicon = loadImage("ptsnarutoicon.png"); // by Yagami0 on Deviantart under CC BY NC ND, https://www.deviantart.com/yagami0/art/Young-Naruto-Vector-181321697, based off of the character Naruto Uzumaki from the Naruto series
  ptsnarutoiconL = loadImage("ptsnarutoiconL.png"); // by Yagami0 on Deviantart under CC BY NC ND, https://www.deviantart.com/yagami0/art/Another-Uzumaki-Vector-97873440, ditto
  gilgameshicon4S = loadImage("gilgameshicon4S.png"); // by a3107 on DeviantArt under CC BY NC ND, https://www.deviantart.com/a3107/art/Gilgamesh-550217699, based off of the character gilgamesh from the fate series,
  enumaelish = loadImage("enumaelishrotate.png"); // drawn by me
  redStar = loadImage("redstar.png"); // drawn by me
  slashBarrage = loadImage("slashbarrage.png"); // drawn by me
  zoroTS4S = loadImage("zoro4S.png");
  zoroW = loadImage("zoro.png");
  zoroPTSL = loadImage("ptszoroLcrop.png");
  yujiW = loadImage("yujiW.png");
  blackSparks = loadImage("blacksparks.png");
  painW = loadImage("painW.png");
  mrSatanL = loadImage("mrsatan.png");
  explosion = loadImage("explosion.png");
  kakashiW = loadImage("kakashiW.png");
  kakashi4S = loadImage("kakashi4S.png");
  kamui = loadImage("kamui.png");
  chidoriSparks = loadImage("chidoriSparks.png");
  rockLeeL = loadImage("rockleeL.png");
  rockLeeW = loadImage("rockleeW.png");
  kunai = loadImage("kunai.png");
  tobiW = loadImage("tobi.png");
  jotaroW = loadImage("jotaroW.png");
  jonathanL = loadImage("jonathanjoL.png");
  hamonSparks = loadImage("hamonsparks.png");
  jonathanW = loadImage("jonathanjoW.png");
  pucci4S = loadImage("pucci4S.png");
  knife = loadImage("knife.png");
  heavenBird = loadImage("angelbird.png");
  illyaW = loadImage("illyaW.png");
  illyaL = loadImage("illyaL.png");
  acceleratorW = loadImage("acceleratorW.png");
  gust = loadImage("gust.png");
  gonW = loadImage("gonW.png");
  gonL = loadImage("gonL.png");
  usoppL = loadImage("usoppL.png");
  rolandL = loadImage("rolandL.png");
  shanks4S = loadImage("shanks4S.png");
  gogetaW = loadImage("gogetaW.png");
  gogetaL = loadImage("gogetaL.png");
  chrolloW = loadImage("chrolloW.png");
  bensKnife = loadImage("bensknife.png");
  saberL = loadImage("saberL.png");
  saberW = loadImage("saberW.png");
  brolyW = loadImage("brolyW.png");
  broly4S = loadImage("broly4S.png");
  allMightL = loadImage("allmightL.png");
  dekuL = loadImage("dekuL.png");
  sasukeWarW = loadImage("sasukewarW.png");
  sasukeL = loadImage("sasukeL.png");
  sasuke4S = loadImage("sasuke4S.png");
  sasukeW = loadImage("sasukeW.png");
  dioW = loadImage("dioW.png");
  gokuW = loadImage("gokuW.png");
  gokuL = loadImage("gokuL.png");
  vigilanteDekuW = loadImage("vigilantedekuW.png");
  durandal = loadImage("durandal.png");
  rolandW = loadImage("rolandW.png");
  roland4S = loadImage("roland4S.png");
  durandalOpp = loadImage("durandalopp.png");
  allasWorkshop = loadImage("allasworkshop.png");
  josephW = loadImage("josephW.png");
  josephL = loadImage("josephL.png");
  alucardW = loadImage("alucardW.png");
  alucard4S = loadImage("alucard4S.png");
  targetSign = loadImage("target.png");
  playingCard = loadImage("card.png");
  jinbeW = loadImage("jinbeW.png");
  jinbeL = loadImage("jinbeL.png");
  tanjiroW = loadImage("tanjiroW.png");
  tanjiroL = loadImage("tanjiroL.png");
  yoruichiW = loadImage("yoruichiW.png");
  shisuiW = loadImage("shisuiW.png");
  weatherReportW = loadImage("weatherW.png");
  sung4S = loadImage("sung4S.png");
  sungL = loadImage("sungL.png");
  metalBatW = loadImage("metalW.png");
  yhwachW = loadImage("yhwachW.png");
  bardockW = loadImage("bardockW.png");
  powerW = loadImage("powerW.png");
  spear = loadImage("spear.png");
  sukunaL = loadImage("sukunaL.png");
  vegetaW = loadImage("vegetaW.png");
  superVegetaW = loadImage("supervegetaW.png");
  weiW = loadImage("weiW.png");
  morelW = loadImage("morel.png");
  tojiW = loadImage("tojiW.png");
  tojiL = loadImage("tojiL.png");
  rengokuW = loadImage("rengokuW.png");
  starrkW = loadImage("starrkW.png");
  luffyL = loadImage("luffyL.png");
  luffyW = loadImage("luffyW.png");
  todoW = loadImage("todoW.png");
  todorokiW = loadImage("todorokiW.png");
  cellL = loadImage("cellL.png");
  speedwagonW = loadImage("speedwagonW.png");
  ichigo4S = loadImage("ichigo4S.png");
  getsuga = loadImage("getsuga.png");
  hat = loadImage("hat.png");
  mobW = loadImage("mobW.png");
  mobL = loadImage("mobL.png");
  repelEffect = loadImage("repel.png");
  kurapikaW = loadImage("kurapikaW.png");
  chains = loadImage("chains.png");
  doppioW = loadImage("doppioW.png");
  yusukeW = loadImage("yusukeW.png");
  piccoloW = loadImage("piccoloW.png");
  piccoloL = loadImage("piccoloL.png");
  crocodileW = loadImage("crocodileW.png");
  Match match1 = new Match("Naruto", "Gilgamesh", "Naruto", "Fate", "L", -4, 100, 0);
//readData(); this does not work for some reason so all data has to be loaded manually //<>//
  matches.add(match1);
  Match match2 = new Match("Naruto", "Zoro (TS)", "Naruto", "One Piece","L", -4, 100, 100);
  matches.add(match2);
  Match match3 = new Match("Naruto", "Yuji Itadori", "Naruto", "JJK", "L", -3, 100, 200);
  matches.add(match3);
  Match match4 = new Match("Naruto", "Pain", "Naruto", "Naruto", "L", -2, 100, 300);
  matches.add(match4);
  Match match5 = new Match("Naruto", "Hercule Satan", "Naruto", "Prestige", "W", 1, 100, 400);
  matches.add(match5);
  Match match6 = new Match("Naruto", "Kakashi", "Naruto", "Naruto", "L", -2, 100, 500);
  matches.add(match6);
  Match match7 = new Match("Naruto", "Naruto (Shippuden)", "Naruto", "Naruto", "L", -3, 100, 600);
  matches.add(match7);
  Match match8 = new Match("Naruto", "Rock Lee", "Naruto", "Naruto", "W", 1, 100, 700);
  matches.add(match8);
  Match match9 = new Match("Naruto", "Rock Lee", "Naruto", "Naruto", "L", -1, 100, 800);
  matches.add(match9);
  Match match10 = new Match("Naruto", "Rock Lee", "Naruto", "Naruto", "W", 2, 100, 900);
  matches.add(match10);
  Match match11 = new Match("Naruto", "Zoro (TS)", "Naruto", "One Piece", "L", -3, 100, 1000);
  matches.add(match11);
  Match match12 = new Match("Naruto", "Tobi", "Naruto", "Prestige", "L", -1, 100, 1100);
  matches.add(match12);
  Match match13 = new Match("Naruto", "Gilgamesh", "Naruto", "Fate", "L", -4, 100, 1200);
  matches.add(match13);
  Match match14 = new Match("Naruto", "Jotaro Kujo", "Naruto", "JJBA", "L", -1, 100, 1300);
  matches.add(match14);
  Match match15 = new Match("Jonathan Joestar", "Pucci", "JJBA", "JJBA", "L", -4, 350, 0);
  matches.add(match15);
  Match match16 = new Match("Jonathan Joestar", "Accelerator", "JJBA", "Misc.", "L", -3, 350, 100);
  matches.add(match16);
  Match match17 = new Match("Jonathan Joestar", "Ilya", "JJBA", "Fate", "W", 1, 350, 200);
  matches.add(match17);
  Match match18 = new Match("Jonathan Joestar", "Ilya", "JJBA", "Fate", "W", 1, 350, 300);
  matches.add(match18);
  Match match19 = new Match("Gon", "Roland", "HxH", "Anime?", "W", 2, 350, 400);
  matches.add(match19);
  Match match20 = new Match("Gon", "GOD Usopp", "HxH", "One Piece", "W", 3, 350, 500);
  matches.add(match20);
  Match match21 = new Match("Gon", "Ilya", "HxH", "Fate", "L", -3, 350, 600);
  matches.add(match21);
  Match match22 = new Match("Chrollo Lucilfer", "Shanks", "HxH", "One Piece", "L", -4, 350, 700);
  matches.add(match22);
  Match match23 = new Match("Chrollo Lucilfer", "Gogeta", "HxH", "DBZ", "L", -1, 350, 800);
  matches.add(match23);
  Match match24 = new Match("Chrollo Lucilfer", "Dio Brando", "HxH", "JJBA", "L", -3, 350, 900);
  matches.add(match24);
  Match match25 = new Match("Chrollo Lucilfer", "Saber", "HxH", "Fate", "L", -3, 350, 1000);
  matches.add(match25);
  Match match26 = new Match("Chrollo Lucilfer", "Saber", "HxH", "Fate", "W", 1, 350, 1100);
  matches.add(match26);
  Match match27 = new Match("Chrollo Lucilfer", "Saber", "HxH", "Fate", "L", -1, 350, 1200);
  matches.add(match27);
  Match match28 = new Match("Chrollo Lucilfer", "All Might", "HxH", "MHA", "W", 1, 350, 1300);
  matches.add(match28);
  Match match29 = new Match("Chrollo Lucilfer", "Deku", "HxH", "MHA", "W", 2, 600, 0);
  matches.add(match29);
  Match match30 = new Match("Jonathan Joestar", "Broly", "JJBA", "DBZ", "L", -4, 600, 100);
  matches.add(match30);
  Match match31 = new Match("Gon", "Broly", "HxH", "DBZ", "L", -2, 600, 200);
  matches.add(match31);
  Match match32 = new Match("Goku (Namek)", "Kakashi", "DBZ", "Naruto", "L", -4, 600, 300);
  matches.add(match32);
  Match match33 = new Match("Goku (Namek)", "Sasuke (War)", "DBZ", "Naruto", "L", -1, 600, 400);
  matches.add(match33);
  Match match34 = new Match("Goku (Namek", "Zoro (PTS)", "DBZ", "One Piece", "L", -3, 600, 500);
  matches.add(match34);
  Match match35 = new Match("Goku (Namek)", "Alucard", "DBZ", "Misc.", "L", -2, 600, 600);
  matches.add(match35);
  Match match36 = new Match("Goku (Namek)", "Jinbe", "DBZ", "One Piece", "L", -3, 600, 700);
  matches.add(match36);
  Match match37 = new Match("Goku (Namek)", "Dio Brando", "DBZ", "JJBA", "L", -3, 600, 800);
  matches.add(match37);
  Match match38 = new Match("Goku (Namek)", "Dio Brando", "DBZ", "JJBA", "L", -2, 600, 900);
  matches.add(match38);
  Match match39 = new Match("Goku (Namek)", "Tanjiro", "DBZ", "DS", "W", 1, 600, 1000);
  matches.add(match39);
  Match match40 = new Match("Sasuke", "Tanjiro", "Naruto", "DS", "W", 1, 600, 1100);
  matches.add(match40);
  Match match41 = new Match("Goku (Namek)", "Gogeta", "DBZ", "DBZ", "L", -1, 600, 1200);
  matches.add(match41);
  Match match42 = new Match("Roland", "Gogeta", "Anime?", "DBZ", "L", -3, 600, 1300);
  matches.add(match42);
  Match match43 = new Match("Roland", "Alucard", "Anime?", "Misc.", "L", -4, 850, 0);
  matches.add(match43);
  Match match44 = new Match("Roland", "Yoruichi", "Anime?", "Bleach", "L", -1, 850, 100);
  matches.add(match44);
  Match match45 = new Match("Roland", "Shisui", "Anime?", "Prestige", "L", -3, 850, 200);
  matches.add(match45);
  Match match46 = new Match("Roland", "Goku (Namek)", "Anime?", "DBZ", "L", -2, 850, 300);
  matches.add(match46);
  Match match47 = new Match("Roland", "Weather Report", "Anime?", "JJBA", "L", -3, 850, 400);
  matches.add(match47);
  Match match48 = new Match("Roland", "Yuji Itadori", "Anime?", "JJK", "L", -3, 850, 500);
  matches.add(match48);
  Match match49 = new Match("Roland", "Sung Jinwoo", "Anime?", "Misc.", "L", -4, 850, 600);
  matches.add(match49);
  Match match50 = new Match("Roland", "Metal Bat", "Anime?", "Misc.", "L", -2, 850, 700);
  matches.add(match50);
  Match match51 = new Match("Roland", "Metal Bat", "Anime?", "Misc.", "L", -2, 850, 800);
  matches.add(match51);
  Match match52 = new Match("Roland", "Ghiacco", "Anime?", "JJBA", "W", 2, 850, 900);
  matches.add(match52);
  Match match53 = new Match("Roland", "Yhwach", "Anime?", "Bleach", "L", -3, 850, 1000);
  matches.add(match53);
  Match match54 = new Match("Roland", "Yhwach", "Anime?", "Bleach", "L", -3, 850, 1100);
  matches.add(match54);
  Match match55 = new Match("Sasuke", "Bardock", "Naruto", "DBZ", "L", -1, 850, 1200);
  matches.add(match55);
  Match match56 = new Match("Zoro (PTS)", "Bardock", "One Piece", "DBZ", "L", -3, 850, 1300);
  matches.add(match56);
  Match match57 = new Match("Chrollo Lucilfer", "Sasuke", "HxH", "Naruto", "W", 1, 1100, 0);
  matches.add(match57);
  Match match58 = new Match("Gon", "Power", "HxH", "CSM", "L", -3, 1100, 100);
  matches.add(match58);
  Match match59 = new Match("Sasuke", "Sukuna (Manga)", "Naruto", "JJK", "W", 4, 1100, 200);
  matches.add(match59);
  Match match60 = new Match("Deku", "Vegeta", "MHA", "DBZ", "L", -3, 1100, 300);
  matches.add(match60);
  Match match61 = new Match("Chrollo Lucilfer", "Vegeta", "HxH", "DBZ", "L", -3, 1100, 400);
  matches.add(match61);
  Match match62 = new Match("Chrollo Lucilfer", "Roland", "HxH", "Anime?", "L", -1, 1100, 500);
  matches.add(match62);
  Match match63 = new Match("Joseph Joestar", "Roland", "JJBA", "Anime?", "L", -1, 1100, 600);
  matches.add(match63);
  Match match64 = new Match("Joseph Joestar", "Vegeta (Super)", "JJBA", "DBZ", "L", -3, 1100, 700);
  matches.add(match64);
  Match match65 = new Match("Joseph Joestar", "Kyojuro Rengoku", "JJBA", "DS", "L", -3, 1100, 800);
  matches.add(match65);
  Match match66 = new Match("Joseph Joestar", "Morel", "JJBA", "HxH", "L", -3, 1100, 900);
  matches.add(match66);
  Match match67 = new Match("Joseph Joestar", "Morel", "JJBA", "HxH", "L", -3, 1100, 1000);
  matches.add(match67);
  Match match68 = new Match("Joseph Joestar", "Wei Wuxian", "JJBA", "Misc.", "L", -3, 1100, 1100);
  matches.add(match68);
  Match match69 = new Match("Joseph Joestar", "Wei Wuxian", "JJBA", "Misc.", "L", -3, 1100, 1200);
  matches.add(match69);
  Match match70 = new Match("Joseph Joestar", "Toji", "JJBA", "JJK", "L", -2, 1100, 1300);
  matches.add(match70);
  Match match71 = new Match("Joseph Joestar", "Toji", "JJBA", "JJK", "W", 1, 1350, 0);
  matches.add(match71);
  Match match72 = new Match("Roland", "Yhwach", "Anime?", "Bleach", "W", 1, 1350, 100);
  matches.add(match72);
  Match match73 = new Match("Tanjiro", "Gogeta", "DS", "DBZ", "W", 1, 1350, 200);
  matches.add(match73);
  Match match74 = new Match("Jonathan Joestar", "Gogeta", "JJBA", "DBZ", "W", 3, 1350, 300);
  matches.add(match74);
  Match match75 = new Match("Tanjiro", "Coyote Starrk", "DS", "Bleach", "W", 3, 1350, 400);
  matches.add(match75);
  Match match76 = new Match("Luffy (PTS)", "Gogeta", "One Piece", "DBZ", "W", 2, 1350, 500);
  matches.add(match76);
  Match match77 = new Match("Sasuke", "Jinbe", "Naruto", "One Piece", "W", 3, 1350, 600);
  matches.add(match77);
  Match match78 = new Match("Zoro (PTS)", "Jinbe", "One Piece", "One Piece", "W", 1, 1350, 700);
  matches.add(match78);
  Match match79 = new Match("Roland", "Todo Aoi", "Anime?", "JJK", "L", -1, 1350, 800);
  matches.add(match79);
  Match match80 = new Match("Gon", "Roland", "HxH", "Anime?", "L", -4, 1350, 900);
  matches.add(match80);
  Match match81 = new Match("Chrollo Lucilfer", "Metal Bat", "HxH", "Misc.", "L", -3, 1350, 1000);
  matches.add(match81);
  Match match82 = new Match("Goku (Namek)", "Yoruichi", "DBZ", "Bleach", "L", -1, 1350, 1100);
  matches.add(match82);
  Match match83 = new Match("Joseph Joestar", "Todoroki", "JJBA", "MHA", "L", -1, 1350, 1200);
  matches.add(match83);
  Match match84 = new Match("Gon", "Kurapika", "HxH", "HxH", "L", -1, 1350, 1300);
  matches.add(match84);
  Match match85 = new Match("Zoro (PTS)", "Vigilante Deku", "One Piece", "MHA", "L", -2, 1600, 0);
  matches.add(match85);
  Match match86 = new Match("Ichigo", "Sung Jinwoo", "Bleach", "Misc.", "W", 4, 1600, 100);
  matches.add(match86);
  Match match87 = new Match("Joseph Joestar", "Sung Jinwoo", "JJBA", "Misc.", "W", 1, 1600, 200);
  matches.add(match87);
  Match match88 = new Match("Gon", "Perfect Cell", "HxH", "DBZ", "W", 2, 1600, 300);
  matches.add(match88);
  Match match89 = new Match("Hol Horse", "Kyojuro Rengoku", "JJBA", "DS", "L", -1, 1600, 400);
  matches.add(match89);
  Match match90 = new Match("Goku (Namek)", "Kyojuro Rengoku", "DBZ", "DS", "L", -2, 1600, 500);
  matches.add(match90);
  Match match91 = new Match("Goku (Namek)", "Kyojuro Rengoku", "DBZ", "DS", "L", -3, 1600, 600);
  matches.add(match91);
  Match match92 = new Match("Goku (Namek)", "Doppio/Diavolo", "DBZ", "JJBA", "L", -3, 1600, 700);
  matches.add(match92);
  Match match93 = new Match("Goku (Namek)", "Yusuke Urameshi", "DBZ", "Misc.", "L", -2, 1600, 800);
  matches.add(match93);
  Match match94 = new Match("Goku (Namek)", "Piccolo", "DBZ", "DBZ", "W", 1, 1600, 900);
  matches.add(match94);
  Match match95 = new Match("Mob", "Piccolo", "Misc.", "DBZ", "L", -3, 1600, 1000);
  matches.add(match95);
  Match match96 = new Match("Mob", "Piccolo", "Misc.", "DBZ", "W", 1, 1600, 1100);
  matches.add(match96);
  Match match97 = new Match("Mob", "Kurapika", "Misc.", "HxH", "L", -1, 1600, 1200);
  matches.add(match97);
  Match match98 = new Match("Luffy (TS)", "Coyote Starrk", "HxH", "Bleach", "L", -2, 1600, 1300);
  matches.add(match98);
  Match match99 = new Match("Speedwagon", "Vigilante Deku", "JJBA", "MHA", "W", 2, 1850, 0);
  matches.add(match99);
  Match match100 = new Match("Luffy (PTS)", "Piccolo", "One Piece", "DBZ", "L", -1, 1850, 100);
  matches.add(match100);
  Match match101 = new Match("Chrollo Lucilfer", "Piccolo", "HxH", "DBZ", "L", -3, 1850, 200);
  matches.add(match101);
  Match match102 = new Match("Luffy (PTS)", "Crocodile", "One Piece", "One Piece", "L", -2, 1850, 300);
  matches.add(match102);
  Match match103 = new Match("Roland", "Crocodile", "Anime?", "One Piece", "L", -1, 1850, 400);
  matches.add(match103);
}

void draw()
{
  background(255);
  for (Match match : matches)
  {
    match.draw();
    if (mouseIn(mouseX, mouseY, match.myCharacter.charX, match.myCharacter.charY, match.oppCharacter.charX))
    {
      match.isHover = true;
    } else
    {
      match.isHover = false;
    }
    if (keyPressed)
    {
      if (key == ' ')
      {
        match.isHover = true;
        match.clickedRecently = true;
        match.elapsedTime = millis();
        match.animHandler(match.outcome, match.chosenAnim);
       // save("deardataimage.png");
      }
    }
  }
}
// check if the mouse is in the area of the images
boolean mouseIn(float mX, float mY, float myX, float myY, float oppX)
{
  float width = oppX - myX + 50;
  float height = 50;

  if (mX >= myX && mX <= myX + width && mY >= myY && mY <= myY + height)
  {
    return true;
  } else
  {
    return false;
  }
}

void readData()
{
  int thisRow = 0;
  int column = 0;
  fileRows = loadStrings("abadeardataset.csv");
  
  for (String row : fileRows)
  {
    if (thisRow > 0)
    {
      // split the row apart into individual data items
      String[] tokens = split(row, ",");
      String myCharName = tokens[0];
      String myCharRoster = tokens[1];
      String enemyCharName = tokens[2];
      String enemyCharRoster = tokens[3];
      String Outcome = tokens[4]; //<>//
      int Lead = int(tokens[5]); //<>//

      float y = ((thisRow % 12) * 100); //<>//
      float x = column * 250;
      // create a new match and add it to the list
      Match match = new Match(myCharName, enemyCharName, myCharRoster, enemyCharRoster, Outcome, Lead, x, y); //<>//
      matches.add(match); //<>//
    }
    thisRow++; //<>//
    if (thisRow % 12 == 0) //<>//
    {
      column++; //<>//
    }
  }
}
