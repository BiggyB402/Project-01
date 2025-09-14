VAR time = -1 // 0 Night, 1 Morning, 2 Afternoon, 3 Evening
VAR item_pickup =""
VAR daughter_name = ""
VAR health = 100
VAR weapon_pickup = ""
->Front_Yard
->Corn_Field
->Barn
->Old_House
->Basement
->Living_Room
->Kitchen
->Broken_Car
->Corn_Field_2
->Podium
->Barn_2
->Upstairs
->Bathroom
->Master_Bedroom
->Kids_Bedroom
->Living_Room_2
->Pantry
->Kitchen_2
->Kids_Bedroom_2
->Bathroom_2
->Bathroom_3
->Bathroom_4
->Bathroom_5









== Front_Yard ==
It is { advance_time() }
You pull up to the the old country home. Its been several years since you daughter went missing and there have been no signs of where she had disappeared to, nor any reason as to why she disappeared. After the end of the investigation, people soon forgot, and went back to normal, except for you. You come home one day, While rifling through mail you notice one adress to you, from your daughter. She details how she had ran away in order to find more answers about her mother, and how she needs your help. Enclosed is a map of where she last was, an abandoned farm from her mother's childhood. With this infromation you drive off towards the farm, hoping to be reunited with his daughter and maybe understanding what has happened. You take a look around and notice there are several different areas to go. Your not sure where to go or what you are looking for, but you know you are in the right place


+[Walk Through Field]->Corn_Field
+[Explore the Barn]->Barn
+[Go Inside]->Old_House
+[Check the Vehicle]->Broken_Car






== Broken_Car ==
You check out the old car to see if you find any kind of clue that might help you. Unfortunately you can't get into the car, so you have to come back later.
+[Go Back]->Front_Yard





== Corn_Field ==
It is { advance_time() }
You decide to check out the corn field and see if you find anything that might help your search. As you walk through you see a {weapon_pickup} on the ground. Picking this up might help for some reason. 

+[Baseball Bat]
~ weapon_pickup = "Baseball Bat"
->Corn_Field_2
+[Axe]
~ weapon_pickup = "Axe"
->Corn_Field_2



== Corn_Field_2 ==
You retrived  the {weapon_pickup}.
+[Go Back]->Front_Yard




== Barn == 
You decide check out the barn for further investigation. While in the barn you notice there is several makings on the walls, symbols that you've never noticed before. In the center of the room stands a podium that seems to be holding an {item_pickup}.


+[Ancient Stone]
~ item_pickup = "Ancient Stone"
->Podium
+[Go Back]->Barn_2



== Barn_2 ==
It is { advance_time() }
You didn't retrieve the stone and left it be for now. 
+[Go Back]->Front_Yard

== Podium ==
You retrieved the {item_pickup} and added it to your inventory. After retreiving it you hear a loud moan and groan. You turn around and notice a unfamilar figure come in the shadows, but before you can call out to it, it lunges foward towards you! It proceeds to attack you! Before it can even harm you, you manage to use {weapon_pickup} and strike back at the beast. You are startled, but manage to gain your composure, with the {item_pickup} in hand. 
+[Go back]->Front_Yard




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
-> Living_Room_2
+[Old Book]
~ item_pickup = "Old Book"
-> Living_Room_2
+[Letters]
~ item_pickup = "Letters"
-> Living_Room_2




== Living_Room_2 ==
You picked up the {item_pickup}. You now have the
+[Go Back]->Living_Room



== Kitchen ==
You find yourself entering the kitchen. It reeks of stale and rotten food and dirt and grime everywhere. As you explore more of the kitchen you notice a puddle of blood coming from the pantry. Do you explore or ignore?
+[Explore]-> Pantry
+[Ignore] -> Kitchen_2



== Pantry ==
You open the pantry and notice a priest's corpse sitting there. It throws into a full shock, see a dead body so out and the open. Before you can close it, the dead priest then leaps and attacks you. Unable to comprehend, he bites and scratches you, unable to fight back and he kills you on the spot. You Have Met Your Demise.
+[Go Back]->Front_Yard




== Kitchen_2 ==
You ignore the pantry, senseing there is something in there that does not need to be open.
+[Go Back]->Old_House




== Upstairs ==
It Is { advance_time() }
You head upstairs and find multiple bedrooms all with different layouts. There's a master bedroom, kids room, bathroom and attic. Each room feeling more errier than the other, you choose to explore further. 

+[Go Middle]->Master_Bedroom
+[Go Left]->Kids_Bedroom
+[Go Right]->Bathroom




== Master_Bedroom ==
As you enter the master bedroom, your body trembles with unease, You tremble as you feel a presence that you feel shouldn't be here just as you are about to turn away, you are suddenly attacked! Before you could even react, the creature takes a bite of your neck, ripping away meat and flesh. Before you fade, the last image you see is that of your daughter and wife, as you fade from this world. You Have Met Your Demise.
+[start Over]->Front_Yard



== Kids_Bedroom ==
Walking into the children's room, it seemingly has a sense of innocence to it. It doesn't seem as though anyone has touched it and everything looks to be in a proper place. Along that you see a diary. Should you ready it?
*[Read diary]-> Kids_Bedroom_2




== Kids_Bedroom_2 ==
You decide to read the diary. You find that the handwriting resembles that of your wifes, but maybe from a younger perspective. You read the entry "May 17, 19XX, The strange man came by today asking for daddy again. From what I saw it seemed like the man was very upset with daddy and daddy actually seemed scared. Before I know it the man looked my way and saw me through the window. I ran away immediately, but I still rememeber his face. There was something about him that seemed... unhuman." That is where the passage ends.
+[Go Back]->Upstairs



== Bathroom ==
Going into the bathroom you see dirt and grime everywhere. Among all of that is you notice the bathtube full of murky green sludge. It's hard to notice what's in there, but you do notice a shimmer at the bottom of the tub. You do get feel as though there a sinister presence in the tub, but the item might be valuble to you later. What will you do?
*[Grab Item]->Bathroom_2
+[Ignore Item]->Bathroom_3





== Bathroom_2 ==
You decide to reach into the tub and grab the item. As you do, you feel something like a chain and grab onto it, but as you grab it, a hand grabs you and grabs your arm, and now both of you are in a struggle, one wanting to drag you under the water. What will you do?
*[Hold on]->Bathroom_4
+[Let Go]->Bathroom_5


== Bathroom_3 ==
You decide to ignore the item you see and go about your way.
+[Go Back]->Upstairs


== Bathroom_4 ==
As much as you struggle to fight this entity, you notice other hands start to grab you a well. Struggle as you might, you get dragged down into the water. You fight to reagin yourself and come back to the surface, but unfortunately you are ultimatley dragged down and never seen again. You Have Met Your Demise.
+[Start Over]->Front_Yard



== Bathroom_5 ==
You decide to let go and the hand immediately let's go of you. From what you can now decern, it's nothing more of a trap to lure people. The more you investigate this house the more sinister it becomes. 
+[Go Back]->Upstairs


== Basement ==
It is { advance_time() }
Walking down into the basement, you are immediately struck from behind. As you wake up you see you daughter standing above you, worried about you as she cries upon seeing you. As you wake up from unconsciousness, you embrace her and both start crying. 
->DONE










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


