///incomebase = 0 tot anders gedefineerd:
foodIncomeBase = 0;
stoneIncomeBase = 0;
leatherIncomeBase = 0;
copperIncomeBase = 0;
coalIncomeBase = 0;
ironIncomeBase = 0;
tinIncomeBase = 0;
silverIncomeBase = 0;
goldIncomeBase = 0;
horsesIncomeBase = 0;

if (tileType == "Field")
{
    foodIncomeBase = 2 + random(2);
    horsesChance = 0.10;
    horsesYes = random(1);
    if (horsesYes <= horsesChance)
    {
        horsesIncomeBase = 1 + random(1);
    }
    
}
else if (tileType == "Forrest")
{
    woodIncomeBase = 1 + random(2);
    foodIncomeBase = 0.5 + random(0.5);
    stoneIncomeBase = 0.2 + random(0.7);
    animalChance = 0.75;
    animalYes = random(1);
    if (animalYes <= animalChance)
    {
        leatherIncomeBase = 2 + random(2);
        foodIncomeBase += random(2);
    }
    
}
else if (tileType == "Mountain")
{
    stoneIncomeBase = 1 + random(2);
    copperChance = 0.20;
    copperYes = random(1);
    if (copperYes <= copperChance)
    {
        copperIncomeBase = 0.5 + random(1);
    }
    coalChance = 0.25;
    coalYes = random(1);
    if (coalYes <= coalChance)
    {
        coalIncomeBase = 1 + random(1);
    }
    tinChance = 0.15;
    tinYes = random(1)
    if (tinYes <= tinChance)
    {
        tinIncomeBase = 0.25 + random(0.25);
    }
    ironChance = 0.15;
    ironYes = random(1);
    if (ironYes <= ironChance)
    {
        ironIncomeBase = 0.5 + random(1);
    }
    silverChance = 0.05;
    silverYes = random(1);
    if (silverYes <= silverChance)
    {
        silverIncomeBase = 0.25 + random(0.5);
    }
    goldChance = 0.05;
    goldYes = random(1);
    if (goldYes <= goldChance)
    {
        goldIncomeBase = 0.10 + random(0.3);
    }
    
}
else if (tileType == "Lake")
{
    foodIncomeBase = 1 + random(4);
}
else if (tileType == "Village")
{
    scrVillageCreation();
}
//show_debug_message("Food:" + string(foodIncomeBase));
