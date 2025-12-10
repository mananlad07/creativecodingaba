class Character
{
  public String name;
  public String roster;
  public PImage icon4S = ichigo4S;
  public PImage icon = mobW;
  public PImage iconL = rolandL;
  public String victoryA = "Durandal";
  public String victoryB = "Fireball";
  public float charX;
  public float charY;

  public Character(String Name, String Roster, float CharX, float CharY)
  {
    this.name = Name;
    this.roster = Roster;
    this.charX = CharX;
    this.charY = CharY;

    // Choose which icon and victory animation
    // only icons and victory animations in my data set included
    switch (this.name)
    {
    case "Chrollo Lucilfer":
      this.icon = chrolloW;
      this.iconL = rolandL; // couldn't find any images
      this.victoryA = "BensKnife";
      break;
    case "Naruto":
      this.icon = ptsnarutoicon;
      this.iconL = ptsnarutoiconL;
      this.victoryA = "BasicRasengan";
      break;
    case "Gilgamesh":
      this.icon4S = gilgameshicon4S;
      this.victoryB = "EnumaEilish";
      break;
    case "Sasuke":
      this.icon = sasukeW;
      this.icon4S = sasuke4S;
      this.iconL = sasukeL;
      this.victoryA = "Chidori";
      this.victoryB = "Fireball";
      break;
    case "Zoro (TS)":
      this.icon4S = zoroTS4S;
      this.icon = zoroW;
      this.victoryA = "1080PoundPhoenix";
      this.victoryB = "SixPaths";
      break;
    case "Yuji Itadori":
      this.icon = yujiW;
      this.victoryA = "BlackFlash";
      break;
    case "Pain":
      this.icon = painW;
      this.victoryA = "AsuraLaser";
      break;
    case "Hercule Satan":
      this.iconL = mrSatanL;
      break;
    case "Kakashi":
      this.icon = kakashiW;
      this.icon4S = kakashi4S;
      this.victoryA = "Chidori";
      this.victoryB = "Kamui";
      break;
    case "Naruto (Shippuden)":
      this.icon = ptsnarutoicon;
      this.victoryA = "BasicRasengan";
      break;
    case "Jotaro Kujo":
      this.icon = jotaroW;
      this.victoryA = "StarFinger";
      break;
    case "Rock Lee":
      this.icon = rockLeeW;
      this.iconL = rockLeeL;
      this.victoryA = "Kunai";
      break;
    case "Tobi":
      this.icon = tobiW;
      this.victoryA = "Kunai";
      break;
    case "Jonathan Joestar":
      this.icon = jonathanW;
      this.iconL = jonathanL;
      this.victoryA = "HamonPunch";
      break;
    case "Pucci":
      this.icon4S = pucci4S;
      this.victoryB = "KnifeThrow";
      break;
    case "Ilya":
      this.icon = illyaW;
      this.iconL = illyaL;
      this.victoryA = "AngelPoem";
      break;
    case "Accelerator":
      this.icon = acceleratorW;
      this.victoryA = "GustBlow";
      break;
    case "Gon":
      this.icon = gonW;
      this.iconL = gonL;
      this.victoryA = "Paper";
      break;
    case "GOD Usopp":
      this.iconL = usoppL;
      break;
    case "Roland":
      this.icon = rolandW;
      this.iconL = rolandL;
      this.icon4S = roland4S;
      this.victoryA = "Durandal";
      this.victoryB = "AllasWorkshop";
      break;
    case "Shanks":
      this.icon4S = shanks4S;
      this.victoryB = "1080PoundPhoenix";
      break;
    case "Gogeta":
      this.icon = gogetaW;
      this.iconL = gogetaL;
      this.victoryA = "Kamehameha";
      break;
    case "Broly":
      this.icon = brolyW;
      this.icon4S = broly4S;
      this.victoryA = "EraserBlow";
      this.victoryB = "PowerRoar";
      break;
    case "Saber":
      this.icon = saberW;
      this.iconL = saberL;
      this.victoryA = "GustBlow";
      break;
    case "All Might":
      this.iconL = allMightL;
      break;
    case "Deku":
      this.iconL = dekuL;
      break;
    case "Sasuke (War)":
      this.icon = sasukeWarW;
      this.victoryA = "Chidori";
      break;
    case "Zoro (PTS)":
      this.icon = zoroW;
      this.iconL = zoroPTSL;
      this.victoryA = "Saikuru";
      break;
    case "Dio Brando":
      this.icon = dioW;
      this.victoryA = "KnifeThrow";
      break;
    case "Joseph Joestar":
      this.icon = josephW;
      this.iconL = josephL;
      this.victoryA = "HamonPunch";
      break;
    case "Goku (Namek)":
      this.icon = gokuW;
      this.iconL = gokuL;
      this.victoryA = "Kamehameha";
      break;
    case "Alucard":
      this.icon = alucardW;
      this.icon4S = alucard4S;
      this.victoryA = "PoliceGirl";
      this.victoryB = "CardThrow";
      break;
    case "Jinbe":
      this.icon = jinbeW;
      this.iconL = jinbeL;
      this.victoryA = "GustBlow";
      break;
    case "Tanjiro":
      this.icon = tanjiroW;
      this.iconL = tanjiroL;
      this.victoryA = "1080PoundPhoenix";
      break;
    case "Yoruichi":
      this.icon = yoruichiW;
      this.victoryA = "Chidori";
      break;
    case "Shisui":
      this.icon = shisuiW;
      this.victoryA = "Fireball";
      break;
    case "Weather Report":
      this.icon = weatherReportW;
      this.victoryA = "GustBlow";
      break;
    case "Sung Jinwoo":
      this.icon4S = sung4S;
      this.iconL = sungL;
      this.victoryB = "ShadowMage";
      break;
    case "Metal Bat":
      this.icon = metalBatW;
      this.victoryA = "SixPaths";
      break;
    case "Ghiacco":
      this.iconL = rolandL;
      break;
    case "Yhwach":
      this.icon = yhwachW;
      this.iconL = rolandL;
      this.victoryA = "1080PoundPhoenix";
      break;
    case "Bardock":
      this.icon = bardockW;
      this.victoryA = "Fireball";
      break;
    case "Power":
      this.icon = powerW;
      this.victoryA = "BloodSpear";
      break;
    case "Sukuna (Manga)":
      this.iconL = sukunaL;
      break;
    case "Vegeta":
      this.icon = vegetaW;
      this.victoryA = "Kamehameha";
      break;
    case "Vegeta (Super)":
      this.icon = superVegetaW;
      this.victoryA = "Kamehameha";
      break;
    case "Kyojuro Rengoku":
      this.icon = rengokuW;
      this.victoryA = "Fireball";
      break;
    case "Morel":
      this.icon = morelW;
      this.victoryA = "GustBlow";
      break;
    case "Wei Wuxian":
      this.icon = weiW;
      this.victoryA = "TalismanThrow";
      break;
    case "Toji":
      this.icon = tojiW;
      this.iconL = tojiL;
      this.victoryA = "1080PoundPhoenix";
      break;
    case "Coyote Starrk":
      this.icon = starrkW;
      this.iconL = rolandL;
      this.victoryA = "Kamehameha";
      break;
    case "Luffy (PTS)":
      this.icon = luffyW;
      this.iconL = luffyL;
      this.victoryA = "Pistol";
      break;
    case "Todo Aoi":
      this.icon = todoW;
      this.victoryA = "BlackFlash";
      break;
    case "Todoroki":
      this.icon = todorokiW;
      this.victoryA = "Fireball";
      break;
    case "Kurapika":
      this.icon = kurapikaW;
      this.victoryA = "ChainJail";
      break;
    case "Vigilante Deku":
      this.icon = vigilanteDekuW;
      this.iconL = dekuL;
      this.victoryA = "BlackWhip";
      break;
    case "Perfect Cell":
      this.iconL = cellL;
      break;
    case "Doppio/Diavolo":
      this.icon = doppioW;
      this.victoryA = "PoliceGirl";
      break;
    case "Yusuke Urameshi":
      this.icon = yusukeW;
      this.victoryA = "SpiritGun";
      break;
    case "Piccolo":
      this.icon = piccoloW;
      this.iconL = piccoloL;
      this.victoryA = "Fireball";
      break;
    case "Crocodile":
      this.icon = crocodileW;
      this.victoryA = "GustBlow";
      break;
    case "Ichigo":
      this.icon4S = ichigo4S;
      this.victoryB = "Getsuga";
      break;
    case "Hol Horse":
      this.iconL = rolandL;
      break;
    case "Speedwagon":
      this.icon = speedwagonW;
      this.victoryA = "HatThrow";
      break;
    case "Luffy (TS)":
      this.iconL = luffyL;
      break;
    case "Mob":
      this.icon = mobW;
      this.iconL = mobL;
      this.victoryA = "Repel";
      break;
     default:
     this.icon = mobW;
     this.iconL = rolandL;
     this.icon4S = ichigo4S;
     break;
    }
  }
}
