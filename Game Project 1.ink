LIST Inventory = (Axe), (Basebal_Bat), (Ancient_Stone), (Key), (Old_Book), (Letters)
VAR time = -1 // 0 Night, 1 Morning, 2 Afternoon, 3 Evening
VAR item_pickup =""
VAR daughter_name = ""
VAR health = 100
->Corn_Field
->Barn
->Old_House
->Basement
->Living_Room
->Kitchen
->Broken_Car
->Front_Yard
->Corn_Field_2
->Podium
->Barn_2
->Upstairs
->Attic
->Bathroom
->Master_Bedroom
->Kids_Bedroom
->Living_Room_2

== Front_Yard
You pull up to the the old country home. Its been several years since you daughter went missing and there have been no signs of where she had disappeared to, nor any reason as to why she disappeared. After the end of the investigation, people soon forgot, and went back to normal, except for you. 
You come home one day, While rifling through mail you notice one adress to you, from your daughter. She details how she had ran away in order to find more answers about her mother, and how she needs your help. Enclosed is a map of where she last was, an abandoned farm from her mother's childhood. With this infromation you drive off towards the farm, hoping to be reunited with his daughter and maybe understanding what has happened. 
You take a look around and notice there are several different areas to go. Your not sure where to go or what you are looking for, but you know you are in the right place



INVENTORY start: {Inventory}


+[Walk Through Field]->Corn_Field
+[Explore the Barn]->Barn
+[Go Inside]->Old_House
+[check the vehicle]->Broken_Car






== Broken_Car ==
You check out the old car to see if you find any kind of clue that might help you. Unfortunately you can't get into the car, so you have to come back later.
+[Go Back]->Front_Yard





== Corn_Field ==
It is { advance_time() }
You decide to check out the corn field and see if you find anything that might help your search. As you walk through you see a {item_pickup} on the ground. Picking this up might help for some reason. 

+[Baseball Bat]
~ item_pickup = "Baseball Bat"
~ Inventory += Baseball_Bat
->Corn_Field_2
+[Axe]
~ item_pickup = "Axe"
~ Inventory += Axe
->Corn_Field_2



== Corn_Field_2 ==
You retrived  the {item_pickup}. 
CURRENT INVENTORY: {Inventory}



+[Go Back]->Corn_Field




== Barn == 
You decide check out the barn for further investigation. While in the barn you notice there is several makings on the walls, symbols that you've never noticed before. In the center of the room stands a podium that seems to be holding an {item_pickup}.


+[Ancient Stone]
~ item_pickup = "Ancient Stone"
~ Inventory += Ancient_Stone
*[Pick Up Stone]->Podium
+[Go Back]->Barn_2



== Barn_2 ==
It is { advance_time() }
You didn't retrieve the stone and left it be for now. 
+[Go Back]->Barn

== Podium ==
You retrieved the {item_pickup} and added it to your inventory. After retreiving it you hear a loud moan and groan. You turn around and notice a unfamilar figure come in the shadows, but before you can call out to it, it lunges foward towards you! It proceeds to attack you!
+[Go back]->Barn




== Old_House ==
You walk up the old house. the decrpit place feels sinister and it feels as though no one has lived here for over a decade. you walk inside and are met with several rooms to look search for. 

+[Go Upstairs]->Upstairs
+[Check Kitchen]->Kitchen
+[Go Underground]->Basement
+[Check Main Room]->Living_Room




== Living_Room == 
You enter the living room. It's cluttered and dirty, dishes everywhere and old papers and strunned on the floor. the furniture looks decrpit and worn out, with peeling paint from the walls. In the center of the room sits a table containing different items. There on the table lies a key, an old book, and a set of letters. each item seeming to hold some kind of mystery.

+[Key]
~ item_pickup = "Key"
~ Inventory += Key
+[Go Back]-> Living_Room_2
+[Old Book]
~ item_pickup = "Old Book"
~ Inventory += Old_Book
+[Go Back]-> Living_Room_2
+[Letters]
~ item_pickup = "Letters"
+[Go Back]-> Living_Room_2




== Living_Room_2 ==
You picked up the {item_pickup}. You now have the {Inventory}










== Upstairs ==
You head upstairs and find multiple bedrooms all with different layouts. There's a master bedroom, kids room, bathroom and attic. Each room feeling more errier than the other, you choose to explore further. 

+[Go Middle]->Master_Bedroom
+[Go Left]->Kids_Bedroom
+[Go Right]->Bathroom
+[Go Up]->Attic










->DONE



{
 - Inventory has Baseball_Bat:
 The wooden bat sits on you back, already seeming damaged from use. 
 
 

 
 
 - Iventory hasnt Axe:
 The blood stained axe stays in it's place, it seemily sharpened blade unused. 
 
}
INVENTORY End {Inventory}




== function CalculateDamage(PlayerHealth, EnemyAttackValue) ==
~ return 0



== function advance_time ==


~ time = time + 1

{
     -time > 3:
        ~ time = 0
}

{
     -time == 0: 
        ~return "Night"
        
        
     -time == 1:
        ~return "Morning"
        
        
     -time == 2:
        ~return "Afternoon"
        

    -time == 3:
       ~return "Evening"
}       



    ~return time


