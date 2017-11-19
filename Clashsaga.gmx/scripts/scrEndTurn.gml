Time_perTurn = argument[0]; //tijd per beurt in jaren
foodIncome = 30; //deze komt van de omliggende tegels.
//stoneIncome tot en met goldIncome (ook van omliggende tegels)


foodSupply = foodStock + foodIncome*Time_perTurn - villagePop*Time_perTurn;

lifeStandard = 0; //deze moet stijgen met technologische vooruitgang
lifeExpectation = 25 + lifeStandard; //levensverwachting in jaren
deathCount_age = villagePop*(1/lifeExpectation)*Time_perTurn; //dood door veroudering.
deathCount_food = 0;
pop_growth = popInVillage * 1/3 * time_perTurn + villagePop * 1/10 * Time_perTurn;

if (foodSupply < 0)
{
    deathCount_food = villagePop / 2;
    deathCount_Age = 0;
    pop_groth = 0;
    foodSupply = 0;
    
}
villagePop += pop_growth - deathCount_age -deathCount_food;


