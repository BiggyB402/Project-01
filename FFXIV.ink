VAR job_class = ""







->dungeon_entrance





== dungeon_entrance ==
 You've heard tales of a dragon war that has raged for millennium in another contry. They have reqested your aid in finally ending the war. You know of this land due to the churches great influence over it, Specifically the Bishop, who has been in his position for many years. It is because of him that the war between dragons has raged for so long, deeming that they be hunted and extict, for the prosoerty of the land. You have fought in this war for so long, witnessing loss after loss of friends. They final showdown now resides itself in the great cathidral, where the mighty dragon; Nidhogg; Has taken up refuge and is vowing that this will be the end of all who have taken from him. 
 Which role do you chose?

+[Warrior]
~ job_class = "Tank"
-> dungeon_level1
+[White Mage]
~ job_class = "Healer"
-> dungeon_level1
+[Dragoon]
~ job_class = "Physical DPS"
-> dungeon_level1
+[Black Mage]
~ job_class = "Magical DPS"
-> dungeon_level1







== dungeon_level1 ==
You have chosen { job_class }. You encounter you some enemies that gaurd the great cathidral where the dragon is held up. You must defend and defeat them in order to get to Nidhogg.
*[Warrior] ->tank_role 
*[White Mage] ->healer_role
*[Dragoon] ->physical_role
*[Black Mage] ->magical_role
+[re-pick role]->repick






== tank_role ==
You handle them with ease taking only a minor bit of damage, and have procceeded victorious! With deafting these enemies, you are rewarded an chest. 
*[open chest]->open_chest




== healer_role ==
You cast a  barrier on yourself, but still sustain some damage. you were able to escaspe and avoid death just varely. you manage to heal your wounds, but you use an exuberant amount of mana. Even though you are not victorious you are still rewarded with a chest.
*[Open Chest]->open_chest2




== physical_role ==
You manage to scathe off the enemies, with more struggle so be, but still with minor scrapes and brusies. You manage to recive a reward, yet it looks exactly like the treasures you are use to when dungeon crawling.
*[Open Chest]->open_chest2




== magical_role ==
You destroy them with you magic with quick haste, from a great distance, with a mighty blast. You use a consideral amount of mana, but have still remaind composed. You are rewarded with an exuberant chest. 
*[Open Chest]->open_chest







== procceed ==
You move foward and have reached the great bridge where Nidhogg is waiting. He has been known to be ferocious, easily killing those that have challeged him before, tormenting the lands killing all mankind due to vengence for its kind. With it now standing in front of you, it is time to take action and avenge all those who have fallen. You {job_class} make your next move.
*[Warrior]
~ job_class = "Tank"
->Tank_Ending
*[White Mage]
~ job_class = "Healer"
->Healer_Ending
*[Dragoon]
~ job_class = "Physical DPS"
->Physical_Ending
*[Black Mage]
~ job_class = "Magical DPS"
->Magical_Ending 
*[turn back]->back





== open_chest ==
With opening this chest you find the holy lance. It was prophesized that with this lance you can finally end this war and finally cleanse this land of all dragons, allowing the church and this great land to prosper. With this lance you'll be known as a hero and. should you take this lance and end this war or leave it and fight Nidhogg on your own accord?
*[take holy lance]->take_lance



== open_chest2 ==
You open the chest and find... a key. You remember a door you came across not that long ago and wonder if this is the key to opening it. Should you press you see what spoils await you or contine as you were?
*[Go back to door]->use_key






== use_key ==
You follow the trail back to the door to use the key. Using the key, you open the door and find that it contains an egg, a dragon egg. Could this egg be the key to stopping this war?
*[bring egg you]->take_egg



== Tank_Ending ==
With Holy Lance in hand you, You fight the great dragon. It is a thunderos battle and you almost come close to this being your final quest in this land, but with lance in hand you manage to defeat this great drgaon and prosper as foretold. As you seem to have solved this mighty problem, you notice a dark aura eminating from the lance and before you can dislodge from your grasp, you are filled with that of the spirit of Nidhogg himself! "If my body is taken from me then I'll shall take yours from you!" as you feel his spirit enter and take over what free will you possessed. Before you finally sercum to the influnce, you see that of the Bishop and one of his holy servants. You beg for him to help you but all he has to offer is that of a prayer. "May the great mother have mercy on thy" This is the end of your jorney and the end of your story.
->END


== Physical_Ending ==
With the egg in hand you decide to face the great dragon. His viroucios body and presence can be felt throughout the whole kingdom. His anger ever present, ever foreboding and the pressure from his great being weigths heavy on you. As you step foward, Nidhogg delivers a trechorus roar that echos throughout the land. "You shall die like all those before you for what your kind has done to my brothers and sisters! You humans must atone for what all has been done!" As he prepares to strike you down, you feel the egg presence start to change. As you take the egg out, Nidhogg notices and accosts you. "That is born of the first brood, how did a human like you come into possession of that?" As you explain the Bishop and his servants come forth. "Where did you find that? That was not meant to be seen by the likes of you or the dragons." You demand answers, but before you can a shot is taken and hits you sqaure in the chest. Before you know it you fall to the ground unconscious.
->END


== Healer_Ending ==
With the egg in hand you decide to face the great dragon. His viroucios body and presence can be felt throughout the whole kingdom. His anger ever present, ever foreboding and the pressure from his great being weigths heavy on you. As you step foward, Nidhogg delivers a trechorus roar that echos throughout the land. "You shall die like all those before you for what your kind has done to my brothers and sisters! You humans must atone for what all has been done!" As he prepares to strike you down, you feel the egg presence start to change. As you take the egg out, Nidhogg notices and accosts you. "That is born of the first brood, how did a human like you come into possession of that?" As you explain the Bishop and his servants come forth. "Where did you find that? That was not meant to be seen by the likes of you or the dragons." You demand answers, but before you can a shot is taken and hits you sqaure in the chest. Before you know it you fall to the ground unconscious.
->DONE

== Magical_Ending ==
With Holy Lance in hand you, You fight the great dragon. It is a thunderos battle and you almost come close to this being your final quest in this land, but with lance in hand you manage to defeat this great drgaon and prosper as foretold. As you seem to have solved this mighty problem, you notice a dark aura eminating from the lance and before you can dislodge from your grasp, you are filled with that of the spirit of Nidhogg himself! "If my body is taken from me then I'll shall take yours from you!" as you feel his spirit enter and take over what free will you possessed. Before you finally sercum to the influnce, you see that of the Bishop and one of his holy servants. You beg for him to help you but all he has to offer is that of a prayer. "May the great mother have mercy on thy" This is the end of your jorney and the end of your story.
->END











== take_lance ==
you take the lance and procced to face Nidhogg
->procceed

== take_egg ==
You take the egg with you and procced to face Nidhogg
->procceed
















== repick ==
Not feeling up to the task whith this roll? Why not try again?
->dungeon_entrance




== back ==
You decide that this is not your destiny and leave be. The story ends with you being known as someone who this land and who's name shall be washed from history. GAME OVER.
->END





    






































































