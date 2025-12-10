class Match
{
  public Character myCharacter;
  public Character oppCharacter;
  public String outcome;
  public int lead;
  public String chosenAnim = "Fireball";
  public boolean showDetails;
  public boolean isHover;
  private boolean animComplete = false;


  Match(String myCharName, String oppCharName, String myCharRoster, String oppCharRoster, String Outcome, int Lead, float posX, float posY)
  {
    this.myCharacter = new Character(myCharName, myCharRoster, posX, posY);
    this.oppCharacter = new Character(oppCharName, oppCharRoster, posX + 175, posY);
    this.outcome = Outcome;
    this.lead = Lead;
  }
  boolean clickedRecently = false;
  int elapsedTime = 0;
  void draw()
  {
    this.drawChars();

    // play out victory animation of the match that has been clicked
    // show the characters and the outcome of the match when hovered over

    if (this.isHover  ||  (/*millis() - elapsedTime < 5000  &&*/ this.clickedRecently  ))
    {
      this.showResults();
      if (mousePressed)
      {
        this.clickedRecently = true;
        this.elapsedTime = millis();
        frameCount = 0;
      }
      if ((millis() - this.elapsedTime > 5000))
      {
        this.clickedRecently = false;
        this.animComplete = false;
        this.elapsedTime = 0;
      }
      if (this.clickedRecently && millis() - this.elapsedTime <= 5000)
      {
        // check if animation done so it does not repeat when it has not been completed
        if (!this.animComplete)
        {
          this.animHandler(this.outcome, this.chosenAnim);
        }
      }
    }
  }
  void drawChars()
  {
    if (abs(lead) == 4)
    {
      if (outcome == "W")
      {
        image(this.myCharacter.icon4S, this.myCharacter.charX, this.myCharacter.charY, 50, 50);
        this.chosenAnim = this.myCharacter.victoryB;
        image(this.oppCharacter.iconL, this.oppCharacter.charX, this.oppCharacter.charY, 50, 50);
      } else if (outcome == "L")
      {
        image(this.myCharacter.iconL, this.myCharacter.charX, this.myCharacter.charY, 50, 50);
        image(this.oppCharacter.icon4S, this.oppCharacter.charX, this.oppCharacter.charY, 50, 50);
        this.chosenAnim = this.oppCharacter.victoryB;
      }
    } 
    else
    {
      if (outcome == "W")
      {
        image(this.myCharacter.icon, this.myCharacter.charX, this.myCharacter.charY, 50, 50);
        this.chosenAnim = this.myCharacter.victoryA;
        image(this.oppCharacter.iconL, this.oppCharacter.charX, this.oppCharacter.charY, 50, 50);
      } else if (outcome == "L")
      {
        image(this.myCharacter.iconL, this.myCharacter.charX, this.myCharacter.charY, 50, 50);
        image(this.oppCharacter.icon, this.oppCharacter.charX, this.oppCharacter.charY, 50, 50);
        this.chosenAnim = this.oppCharacter.victoryA;
      }
    }
  }
  void showResults()
  {
    float midpoint = this.myCharacter.charX + 112;
    int myStocks = 0, oppStocks = 0;
    String s = "";
    if (this.outcome == "W")
    {
      s = "I Won";
      myStocks = this.lead;
      oppStocks = 0;
    }
    if (this.outcome == "L")
    {
      s = "I Lost";
      myStocks = 0;
      oppStocks = abs(this.lead);
    }
    textSize(15);
    fill(0);
    text(this.myCharacter.name + "\n roster: " + this.myCharacter.roster, this.myCharacter.charX, this.myCharacter.charY + 60);
    text(this.oppCharacter.name + "\n roster: " + this.oppCharacter.roster, this.oppCharacter.charX, this.oppCharacter.charY + 60);
    text(s + "\n" + myStocks + " - " + oppStocks, midpoint, this.myCharacter.charY);
  }
  void animHandler(String winner, String animation)
  {
    if (winner == "W")
    {
      switch (animation)
      {
      case "BasicRasengan":
        // 2 circles going towards the opponent and explode
        float circleX, circleY, explosionRadius;
        circleX = this.myCharacter.charX + 90;
        circleY = this.myCharacter.charY + 25;
        explosionRadius = 15;

        circleX += frameCount % 60;

        if (circleX >= this.oppCharacter.charX - 40)
        {
          circleX = this.oppCharacter.charX -10;
          explosionRadius = 50;
          this.animComplete = true;
        }
        noStroke();
        fill(10, 182, 240);
        circle(circleX, circleY, 40);
        fill(117, 203, 224);
        circle(circleX, circleY, explosionRadius);
        break;
      case "HamonPunch":
        // another black flash reskin
        float rectX, rectY;
        rectX = this.myCharacter.charX + 10;
        rectY= this.myCharacter.charY + 15;
        rectX += frameCount;
        if (rectX >= this.oppCharacter.charX)
        {
          image(hamonSparks, this.oppCharacter.charX, this.oppCharacter.charY);
          rectX = this.oppCharacter.charX;
          float time = millis();
          if (millis() - time > 1000)
          {
            this.animComplete = true;
          }
        }
        fill(247, 230, 193);
        rect(rectX, rectY, 30, 25);
        break;
      case "Paper":
        // a circle going towards the opponent
        float paperX, paperY;
        paperX = this.myCharacter.charX + 90;
        paperY = this.myCharacter.charY + 25;

        paperX += frameCount % 90;

        if (paperX >= this.oppCharacter.charX - 10)
        {
          paperX = this.oppCharacter.charX -10;
          this.animComplete = true;
        }
        noStroke();
        fill(255, 247, 0);
        circle(paperX, paperY, 30);
        break;
      case "BensKnife":
        // reskin of knife throws
        float bensKnifeX, bensKnifeY;
        bensKnifeX = this.myCharacter.charX + 60;
        bensKnifeY = this.myCharacter.charY + 10;
        bensKnifeX += frameCount % 180;
        if (bensKnifeX >= this.oppCharacter.charX - 55)
        {
          bensKnifeX = this.oppCharacter.charX - 5;
          this.animComplete = true;
        }
        image(bensKnife, bensKnifeX, bensKnifeY);
        break;
      case "Saikuru":
        // slash barrage growing around the character
        float saikuruSize;
        saikuruSize = 10;
        saikuruSize += frameCount % 75;
        image(slashBarrage, this.myCharacter.charX, this.myCharacter.charY, saikuruSize, saikuruSize);
        break;
      case "Kamehameha":
        // basically enuma elish
        fill(0, 60, 255);
        noStroke();
        ellipse(this.myCharacter.charX + 130, this.myCharacter.charY + 25, 150, 45);
        noStroke();
        fill(0, 195, 255);
        ellipse(this.myCharacter.charX + 130, this.myCharacter.charY + 25, 150, 15);
        break;
      case "Fireball":
        // orange ball going to opponent and exploding
        float ballX, ballY, ballSize;
        ballX = this.myCharacter.charX + 50;
        ballY = this.myCharacter.charY + 25;
        ballSize = 50;
        ballX += frameCount % 120;
        if (ballX >= this.oppCharacter.charX - 15)
        {
          ballX = this.oppCharacter.charX;
          ballSize = 60;
          this.animComplete = true;
        }
        noStroke();
        fill(219, 132, 0);
        circle(ballX, ballY, ballSize);
        break;
      case "Chidori":
        // another black flash reskin
        float rectX2, rectY2;
        rectX2 = this.myCharacter.charX + 10;
        rectY2 = this.myCharacter.charY + 15;
        rectX2 += frameCount;
        if (rectX2 >= this.oppCharacter.charX)
        {
          image(chidoriSparks, this.oppCharacter.charX, this.oppCharacter.charY);
          rectX2 = this.oppCharacter.charX;
          float time = millis();
          if (millis() - time > 1000)
          {
            this.animComplete = true;
          }
        }
        fill(247, 230, 193);
        rect(rectX2, rectY2, 30, 25);
        break;
      case "1080PoundPhoenix":
        // an expanding and retracting barrage of slashes quickly moving towards the opponent
        float slashBarrageX, slashBarrageY, slashBarrageSize;
        slashBarrageX = this.myCharacter.charX + 50;
        slashBarrageY = this.myCharacter.charY + 20;
        slashBarrageSize = 10;
        slashBarrageX += frameCount % 240;
        slashBarrageSize += frameCount % 75;
        if (slashBarrageX >= this.oppCharacter.charX + 50 )
        {
          slashBarrageSize = 75;

          this.animComplete = true;
        }
        image(slashBarrage, slashBarrageX, slashBarrageY, slashBarrageSize, slashBarrageSize);
        break;
      case "Durandal":
        // durandal image near opponent
        image(durandal, this.oppCharacter.charX - 30, this.oppCharacter.charY);
        break;
      case "Pistol":
        // rectangle stretching towards target
        float pistolLength;
        pistolLength = 20;
        pistolLength += frameCount % 150;
        if (this.myCharacter.charX + 50 + pistolLength >= this.oppCharacter.charX + 10)
        {
          this.animComplete = true;
        }
        noStroke();
        fill(217, 174, 117);
        rect(this.myCharacter.charX + 50, this.myCharacter.charY + 20, pistolLength, 10);
        break;
      case "HatThrow":
        // hat image towards target
        float hatX, hatY;
        hatX = this.myCharacter.charX + 75;
        hatY = this.myCharacter.charY;
        hatX += frameCount % 180;
        if (hatX >= this.oppCharacter.charX + 10)
        {
          this.animComplete = true;
        }
        image(hat, hatX, hatY);
        break;
      case "Getsuga":
        // getsuga created near my character
        image(getsuga, this.myCharacter.charX + 50, this.myCharacter.charY - 25);
        break;
      case "Repel":
        // repel image created on target
        image(repelEffect, this.oppCharacter.charX, this.oppCharacter.charY, 50, 50);
        break;
      }
    } else if (winner == "L")
    {
      switch (animation)
      {
      case "EnumaEilish":
        // a weapon shooting a beam at an opponent in the form of 2 ellipses

        image(enumaelish, this.oppCharacter.charX - 50, this.oppCharacter.charY);
        fill(255, 25, 0);
        noStroke();
        ellipse(this.oppCharacter.charX - 99, this.oppCharacter.charY + 25, 100, 45);
        noStroke();
        fill(252, 169, 3);
        ellipse(this.oppCharacter.charX - 99, this.oppCharacter.charY + 25, 100, 15);
        break;
      case "SixPaths":
        // a red star appearing on the opponent
        image(redStar, this.myCharacter.charX, this.myCharacter.charY, 60, 60);
        break;
      case "1080PoundPhoenix":
        // an expanding and retracting barrage of slashes quickly moving towards the opponent
        float slashBarrageX, slashBarrageY, slashBarrageSize;
        slashBarrageX = this.oppCharacter.charX - 50;
        slashBarrageY = this.oppCharacter.charY + 20;
        slashBarrageSize = 10;
        slashBarrageX -= frameCount % 240;
        slashBarrageSize += frameCount % 75;
        if (slashBarrageX <= this.myCharacter.charX )
        {
          slashBarrageSize = 75;

          this.animComplete = true;
        }
        image(slashBarrage, slashBarrageX, slashBarrageY, slashBarrageSize, slashBarrageSize);
        break;
      case "BlackFlash":
        // a rect (fist) going towards an opponent and creating black sparks
        float rectX, rectY;
        rectX = this.oppCharacter.charX - 10;
        rectY= this.oppCharacter.charY + 15;
        rectX -= frameCount % 270;
        if (rectX <= this.myCharacter.charX + 30)
        {
          image(blackSparks, this.myCharacter.charX, this.myCharacter.charY);
          rectX = this.myCharacter.charX + 30;
          float time = millis();
          if (millis() - time > 1000)
          {
            this.animComplete = true;
          }
        }
        fill(247, 230, 193);
        rect(rectX, rectY, 30, 25);
        break;
      case "AsuraLaser":
        // a clone of pain and an explosion to the opponent
        image(painW, this.oppCharacter.charX + 50, this.oppCharacter.charY, 50, 50);
        image(explosion, this.myCharacter.charX, this.myCharacter.charY - 10);
        break;
      case "Chidori":
        // black flash but different colour
        float rectX2, rectY2;
        rectX2 = this.oppCharacter.charX - 10;
        rectY2= this.oppCharacter.charY + 15;
        rectX2 -= frameCount % 270;
        if (rectX2 <= this.myCharacter.charX + 30)
        {
          image(chidoriSparks, this.myCharacter.charX + 10, this.myCharacter.charY);
          rectX2 = this.myCharacter.charX + 30;
          float time = millis();
          if (millis() - time > 1000)
          {
            this.animComplete = true;
          }
        }
        fill(38, 68, 117);
        rect(rectX2, rectY2, 30, 25);
        break;
      case "Kamui":
        // create a kamui image on the opponent
        image(kamui, this.myCharacter.charX, this.myCharacter.charY);
        break;
      case "Kunai":
        // moving kunai image at the opponent
        float kunaiX, kunaiY;
        kunaiX = this.oppCharacter.charX - 10;
        kunaiY = this.oppCharacter.charY + 10;
        kunaiX -= frameCount % 270;
        if (kunaiX <= this.myCharacter.charX + 30)
        {
          kunaiX = this.myCharacter.charX + 30;
          this.animComplete = true;
        }
        image(kunai, kunaiX, kunaiY);
        break;
      case "StarFinger":
        // a purple line to the opponent
        fill(99, 61, 153);
        line(this.oppCharacter.charX, this.oppCharacter.charY + 10, this.myCharacter.charX, this.myCharacter.charY + 10);
        break;
      case "BasicRasengan":
        // 2 circles going towards the opponent and explode
        float circleX, circleY, explosionRadius;
        circleX = this.oppCharacter.charX - 40;
        circleY = this.oppCharacter.charY + 25;
        explosionRadius = 15;

        circleX -= frameCount % 120;

        if (circleX <= this.myCharacter.charX + 70)
        {
          circleX = this.myCharacter.charX + 10;
          explosionRadius = 50;
          this.animComplete = true;
        }
        noStroke();
        fill(10, 182, 240);
        circle(circleX, circleY, 40);
        fill(117, 203, 224);
        circle(circleX, circleY, explosionRadius);
        break;
      case "KnifeThrow":
        // 3 knives towards the opponent like kunai
        float knife1X, knife2X, knife3X, knife1Y, knife2Y, knife3Y;
        knife1X = this.oppCharacter.charX - 10;
        knife2X = this.oppCharacter.charX - 15;
        knife3X = this.oppCharacter.charX - 9;
        knife1Y = this.oppCharacter.charY + 5;
        knife2Y = this.oppCharacter.charY + 40;
        knife3Y = this.oppCharacter.charY + 17;
        knife1X -= frameCount % 180;
        knife2X -= frameCount % 180;
        knife3X -= frameCount % 180;
        if (knife1X <= this.myCharacter.charX + 30)
        {
          knife1X = this.myCharacter.charX + 30;
          knife2X = this.myCharacter.charX + 32;
          knife3X = this.myCharacter.charX + 36;
          this.animComplete = true;
        }
        image(knife, knife1X, knife1Y);
        image(knife, knife2X, knife2Y);
        image(knife, knife3X, knife3Y);
        break;
      case "AngelPoem":
        // a bird firing a bullet towards the opponent
        image(heavenBird, this.oppCharacter.charX - 40, this.oppCharacter.charY + 10);
        float circleX2, circleY2;
        circleX2 = this.oppCharacter.charX - 40;
        circleY2 = this.oppCharacter.charY + 20;
        circleX2 -= frameCount % 120;
        if (circleX2 <= this.myCharacter.charX + 45)
        {
          this.animComplete = true;
        }
        fill(245);
        circle(circleX2, circleY2, 10);
        break;
      case "GustBlow":
        // a gust of air/smoke moving to the opponent
        float gustX, gustY;
        gustX = this.oppCharacter.charX - 10;
        gustY = this.oppCharacter.charY + 10;
        gustX -= frameCount %150;
        if (gustX <= this.myCharacter.charX +45)
        {
          this.animComplete = true;
        }
        image(gust, gustX, gustY);
        break;
      case "Kamehameha":
        // basically enuma elish
        fill(0, 60, 255);
        noStroke();
        ellipse(this.oppCharacter.charX - 75, this.oppCharacter.charY + 25, 150, 45);
        noStroke();
        fill(0, 195, 255);
        ellipse(this.oppCharacter.charX - 75, this.oppCharacter.charY + 25, 150, 15);
        break;
      case "PowerRoar":
        // kamehameha but green and a bit higher
        fill(23, 224, 16);
        noStroke();
        ellipse(this.oppCharacter.charX - 75, this.oppCharacter.charY + 25, 150, 45);
        noStroke();
        fill(0, 255, 119);
        ellipse(this.oppCharacter.charX - 75, this.oppCharacter.charY + 25, 150, 15);
        break;
      case "EraserBlow":
        // rasengan but bigger and black and green
        float eraserX, eraserY, explosionRadius2;
        eraserX = this.oppCharacter.charX - 20;
        eraserY = this.oppCharacter.charY + 25;
        explosionRadius2 = 50;

        eraserX -= frameCount % 120;

        if (eraserX <= this.myCharacter.charX + 60)
        {
          circleX = this.myCharacter.charX + 10;
          explosionRadius = 75;
          this.animComplete = true;
        }
        noStroke();
        fill(23, 224, 16);
        circle(eraserX, eraserY, explosionRadius2);
        fill(0);
        circle(eraserX, eraserY, explosionRadius2 * 0.95);
        break;
      case "Saikuru":
        // slash barrage growing around the character
        float saikuruSize;
        saikuruSize = 10;
        saikuruSize += frameCount % 75;
        image(slashBarrage, this.oppCharacter.charX, this.oppCharacter.charY, saikuruSize, saikuruSize);
        break;
      case "Fireball":
        // orange ball that explodes
        float ballX, ballY, ballSize;
        ballX = this.oppCharacter.charX - 20;
        ballY = this.oppCharacter.charY + 25;
        ballSize = 50;
        ballX -= frameCount % 120;
        if (ballX <= this.myCharacter.charX + 60)
        {
          ballX = this.myCharacter.charX + 40;
          ballSize = 60;
          this.animComplete = true;
        }
        noStroke();
        fill(219, 132, 0);
        circle(ballX, ballY, ballSize);
        break;
      case "Durandal":
        // durandal sprite near opponent
        image(durandalOpp, this.myCharacter.charX + 40, this.myCharacter.charY);
        break;
      case "AllasWorkshop":
        // going to the opponent and piercing them when close enough
        float allasX, allasY;
        allasX = this.oppCharacter.charX - 10;
        allasY = this.oppCharacter.charY + 10;
        allasX -= frameCount % 120;
        if (allasX <= this.myCharacter.charX + 55)
        {
          allasX = this.myCharacter.charX + 25;
          this.animComplete = true;
        }
        image(allasWorkshop, allasX, allasY);
        break;
      case "SpiritGun":
        // a circle going towards the opponent more basic than rasengan
        float spiritX, spiritY;
        spiritX = this.oppCharacter.charX - 15;
        spiritY = this.oppCharacter.charY + 25;
        spiritX -= frameCount % 120;
        if (spiritX <= this.myCharacter.charX + 60)
        {
          spiritX = this.myCharacter.charX + 40;
          this.animComplete = true;
        }
        noStroke();
        fill(43, 255, 251);
        circle(spiritX, spiritY, 30);
        break;
      case "PoliceGirl":
        // a reticle over the target
        image(targetSign, this.myCharacter.charX, this.myCharacter.charY, 50, 50);
        break;
      case "CardThrow":
        // a portal throwing a card at the opponent
        float cardX, cardY;
        cardX = this.oppCharacter.charX - 50;
        cardY = this.oppCharacter.charY + 25;
        cardX -= frameCount % 120;
        if (cardX <= this.myCharacter.charX + 50)
        {
          cardX = this.myCharacter.charX + 25;
          this.animComplete = true;
        }
        fill(0);
        circle(this.oppCharacter.charX - 20, this.oppCharacter.charY + 25, 40);
        image(playingCard, cardX, cardY, 20, 15);
        break;
      case "ShadowMage":
        // a black rectangle shooting a fireball at the target
        float ball2X, ball2Y, ball2Size;
        ball2X = this.oppCharacter.charX - 50;
        ball2Y = this.oppCharacter.charY + 25;
        ball2Size = 20;
        ball2X -= frameCount % 120;
        if (ball2X <= this.myCharacter.charX + 60)
        {
          ball2X = this.myCharacter.charX + 40;
          ball2Size = 30;
          this.animComplete = true;
        }
        noStroke();
        fill(219, 132, 0);
        circle(ball2X, ball2Y, ball2Size);
        noStroke();
        fill(0);
        rect(this.oppCharacter.charX - 60, this.oppCharacter.charY, 50, 50);
        break;
      case "ChainJail":
        // chain jail image on target
        image(chains, this.myCharacter.charX, this.myCharacter.charY, 50, 50);
        break;
      case "BlackWhip":
        // green and black rectangles towards target
        noStroke();
        fill(18, 92, 8);
        rect(this.myCharacter.charX + 25, this.myCharacter.charY + 20, 150, 15);
        noStroke();
        fill(0);
        rect(this.myCharacter.charX + 25, this.myCharacter.charY + 20, 150, 10);
        break;
      case "BloodSpear":
        // blood spear image towards target
        float spearX, spearY;
        spearX = this.oppCharacter.charX - 50;
        spearY = this.oppCharacter.charY + 25;
        spearX -= frameCount % 180;
        if (spearX <= this.myCharacter.charX + 50)
        {
          spearX = this.myCharacter.charX + 45;
          this.animComplete = true;
        }
        image(spear, spearX, spearY, 50, 30);
        break;
      case "TalismanThrow":
        // card image towards target then explode when reaching them
        float talismanX, talismanY;
        talismanX = this.oppCharacter.charX - 30;
        talismanY = this.oppCharacter.charY + 25;
        talismanX -= frameCount % 270;
        if (talismanX <= this.myCharacter.charX + 50)
        {
          talismanX = this.myCharacter.charX + 50;
          image(explosion, this.myCharacter.charX, this.myCharacter.charY, 50, 50);
          float time = millis();
          if (millis() - time > 1000)
          {
            this.animComplete = true;
          }
        }
        image(playingCard, talismanX, talismanY, 50, 30);
        break;
      }
    }
  }
}
