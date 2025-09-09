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




== Front_Yard
You pull up to the the old country home. Its been several years since you daughter went missing and there have been no signs of where she had disappeared to, nor any reason as to why she disappeared. After the end of the investigation, people soon forgot, and went back to normal, except for you. 
You come home one day, While rifling through mail you notice one adress to you, from your daughter. She details how she had ran away in order to find more answers about her mother, and how she needs your help. Enclosed is a map of where she last was, an abandoned farm from her mother's childhood. With this infromation you drive off towards the farm, hoping to be reunited with his daughter and maybe understanding what has happened. 
You take a look around and notice there are several different areas to go. Your not sure where to go or what you are looking for, but you know you are in the right place

+[walk through field]->Corn_Field
+[explore the barn]->Barn
+[go inside]->Old_House
+[check the vehicle]->Broken_Car




== Corn_Field ==
It is { advance time() }
You decide to check out the corn field and see if you find anything that might help your search. As you walk through you see a {item_pickup} on the ground. Picking this up might help for some reason. 

+[Baseball Bat]
~ item_pickup = "Baseball Bat"
->Corn_Field

+[Axe]
~ item_pickup = "Axe"
->Corn_Field



== Corn_Field_2 ==
You retrived  the {item_pickup} and added it to your inventory. 










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


