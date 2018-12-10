VAR bag = 0
VAR person = -1
VAR gamecount = 0

The next day, you go to Kimmy's house. Kimmy is standing on the porch

+ [Talk to Kimmy]
-> MorningKimmy

=== MorningKimmy
Dana: Mornin’ Kimmy! I’m here to babysit, like I promised! Is your mom around?
+[Continue]
-> IsMom

=IsMom
Kimmy: My mommy’s not inside. She left already.
+[Continue]
-> ProdKimmy

= ProdKimmy
Dana: Oh, ok… Um, well… Is there anything you’d like to do today, Kimmy?
+[Continue]
->IDK

=IDK
Kimmy: No… I don’t know.
+[Continue]
-> ProdKimmy2

=ProdKimmy2
Dana: That’s ok, do you have a friend you’d like to visit?
+[Continue]
->ProdKimmy2a

=ProdKimmy2a
Kimmy: No...
+[Continue]
-> MoreSuggestions

=MoreSuggestions
Dana: Should we watch TV or something in your house?
+[Continue]
->MoreSuggestionsA

=MoreSuggestionsA
Kimmy: We don’t have a TV. 
+[Continue]
-> MoreSuggestionsA2

=MoreSuggestionsA2
Kimmy: My dad is in there too, so we should go play somewhere else. He’s busy.
+[Continue]
-> MoreSuggestions2

=MoreSuggestions2
Dana: Ok then! Want to walk around and play some games with the other kids?
+[Continue]
->MoreSuggestions2A

=MoreSuggestions2A
Kimmy: Other kids…?
+[Continue]
->OtherKids

= OtherKids
Dana: You know, the neighborhood kids. Like Donna. 
+[Continue]
->OtherKids2

=OtherKids2
Dana: Isn’t she your age? You’re both going to be in Kindergarten, right?
+[Continue]
->UghDonna

=UghDonna
Kimmy: Oh, yeah… I don’t think Donna is my friend though, so she probably wouldn’t want to play...
+[Continue]
->EncourageKimmy

=EncourageKimmy
Dana: Well, let’s go become her friend! There's lots of other kids around, too. 
+[Continue]
->EncourageKimmy0

=EncourageKimmy0
Dana: Like Anthony. I know him from school. Come on, let’s go!
+[Continue]
->LetsGo

=LetsGo
Kimmy: ...!
+[Continue]
-> VisitFriends

= VisitFriends
Where would you like to go?
+ [Store                                                 ]
-> VisitStore

+ [Playground                                 ] 
~person = 0
-> MeetJimmy

+[Neighborhood                       ]
~person = 1
-> MeetDonna

+[Call it quits]
->Done

= MeetDonna
Kimmy: Hi Donna.
+[Continue]
->MeetDonnaA

=MeetDonnaA
Donna: What happened, Kimmy?
+[Continue]
->MeetDonnaA2

=MeetDonnaA2
Donna: Did you untie yourself from the porch again?
+[Continue]
->MeetDonnaB

=MeetDonnaB
Kimmy: ...
+[Continue]
->ExplainDonna

=ExplainDonna
Dana: Hi Donna! I’m babysitting Kimmy now, so--
+[Continue]
->ExplainDonnaA

=ExplainDonnaA
Donna: So you untied Kimmy from the porch? 
+[Continue]
-> ExplainDonnaA2

=ExplainDonnaA2
Donna: Better not let her parents catch you.
+[Continue]
-> ExplainDonna2

=ExplainDonna2
Dana: First of all, I’m her babysitter.
+[Continue]
-> ExplainDonna20

=ExplainDonna20
Dana: Second, she’s perfectly able to untie herself. 
+[Continue]
->ExplainDonna21

=ExplainDonna21
Dana: She’s too old for that thing now, even her mom thinks so.
+[Continue]
->ExplainDonna2A

=ExplainDonna2A
Donna: She should probably stay on her porch. 
+[Continue]
->ExplainDonna2B

=ExplainDonna2B
Donna: We’re the same age, but my mom takes me everywhere so I won’t get lost. 
+[Continue]
->ExplainDonna2C

=ExplainDonna2C
Donna: I bet Kimmy would get lost if she wandered too far.
+[Continue]
->ChangeSubject

=ChangeSubject
Dana: I don’t know about that. 
+[Continue]
->ChangeSubject1

=ChangeSubject1
Dana: Anyways, I was just going to ask if you wanna play with us... 
+[Continue]
->ChangeSubject2

=ChangeSubject2
Dana: but I feel like you're being mean to Kimmy.
+[Continue]
->ChangeSubjectA

=ChangeSubjectA
Donna: Oh, no. I'm just being honest!
+[Continue]
-> AskDonna

=AskDonna
Dana: Ok... well, I hope you two can get along, since you're neighbors... 
+[Continue]
->AskDonna1

=AskDonna1
Dana: ... want to play a game with us?
+[Continue]
->AskDonnaA

=AskDonnaA
Donna: Well, I’m trying to avoid Harold so it’s probably good to look busy. 
+[Continue]
->AskDonnaB

=AskDonnaB
Donna: He keeps trying to tell me that my ears look childish. He is so snobby.
+[Continue]
-> KimmyCompliment

=KimmyCompliment
Kimmy: I like your ears.
+[Continue]
->KimmyCompliment2

=KimmyCompliment2
Donna: Oh, thanks. They’re new. Anyways, I wanna play a new game.
+[Continue]
->CheckBag

= MeetJimmy
Jimmy: ...Hi Kimmy.
+[Continue]
->MeetJimmyA

=MeetJimmyA
Kimmy: Hi Jimmy…
+[Continue]
->MeetJimmyB

=MeetJimmyB
Dana: ...
+[Continue]
-> ProdJimmy

= ProdJimmy
Dana: Whatcha reading there, Jimmy? Looks neat.
+[Continue]
->ProdJimmyA

=ProdJimmyA
Jimmy: M-my comic… Archie...
+[Continue]
->EncourageJimmy

=EncourageJimmy
Dana: Some of my friends at school read that! Did you get it at the bookstore?
+[Continue]
->EncourageJimmyA

=EncourageJimmyA
Jimmy: Yeah!
+[Continue]
->KimmyComic

=KimmyComic
Kimmy: I’ve never read a comic before.
+[Continue]
->KimmyComicA

=KimmyComicA
Jimmy: Y-you can borrow one of mine whenever you like, Kimmy!
+[Continue]
->KimmyComicA1

=KimmyComicA1
Jimmy: And then we can uh…
+[Continue]
->KimmyComicB

=KimmyComicB
Jimmy: We can talk about it and pick our--our favorite characters!
+[Continue]
->ComplimentJimmy

=ComplimentJimmy
Dana: Wow! That’s so nice of you, Jimmy! 
+[Continue]
->ComplimentJimmy1

=ComplimentJimmy1
Dana: Guess you have a new friend, Kimmy!
+[Continue]
->ComplimentJimmyA

=ComplimentJimmyA
Kimmy: I think… that sounds fun...
+[Continue]
->ComplimentJimmyB

=ComplimentJimmyB
Jimmy: A-anytime, anytime… um…
+[Continue]
-> ProdJimmyMore

=ProdJimmyMore
Dana: Say, are you free to play a game with us, Jimmy? 
+[Continue]
->ProdJimmyMore1

=ProdJimmyMore1
Dana: We’ll teach you something new!
+[Continue]
->ProdJimmyMoreA

=ProdJimmyMoreA
Jimmy: I’m not very good at games… b-but, if Kimmy wants me to...
+[Continue]
->EncourageJimmy2

=EncourageJimmy2
Dana: I’m teaching Kimmy games and helping her make friends this summer.
+[Continue]
->EncourageJimmy2A

=EncourageJimmy2A
Jimmy: If you’re learning games, can I play games with you on the playground sometimes too, Kimmy? 
+[Continue]
-> EncourageJimmy2B

=EncourageJimmy2B
Jimmy: Once school starts?
+[Continue]
-> KimmySpeaksToJimmy

=KimmySpeaksToJimmy
Kimmy: ...Ok. I don’t play much at school but I will with you if you want.
+[Continue]
->KimmySpeaksToJimmyA

=KimmySpeaksToJimmyA
Jimmy: What! Oh! Yes… yes please…
+[Continue]
-> CheckBag

=CheckBag
{ bag:
- 0: 	->EmptyBag 
- 1: 	->DiceGame
- 2: 	->RopeGame 
- 3:    ->ChalkGame
- 4:    ->PaperGame
}

= EmptyBag
Dana: Oh no! I’m sorry… 
+[Continue] -> EmptyBag1

=EmptyBag1
Dana: I thought I had some stuff to play games with in my bag…
+[Continue]
->EmptyBag2

=EmptyBag2
Dana: but it looks like I ran out.
+[Continue]
->EmptyBagA

=EmptyBagA
Kimmy: Oh no...
+[Continue]
-> ItsOk

=ItsOk
Dana: It’s ok! Kimmy, let’s run to the store and buy some game pieces! 
+[Continue]
-> ItsOk2

=ItsOk2
We’ll be right back!
-> VisitFriends

=DiceGame
Dana: Okay, let's play Yahtzee then...
-> Yahtzee

=Yahtzee
Okay, I'll teach you how to play Yahtzee.
+[You need a twenty-sided die] You need a twenty-sided die
->Yahtzee2
+[You need 100 dice] You need 100 dice
->Yahtzee2
+[You need five dice] You need five dice
~gamecount += 1
->Yahtzee2

=Yahtzee2
Then, you have 
+[lots of ways to roll dice, but only some are quiet.] lots of ways to roll dice, but only some are quiet.
->Yahtzee3
+[five ways to toss the dice at your friend.] five ways to toss the dice at your friend.
->Yahtzee3
+[13 combinations of dice that you want to roll.] 13 combinations of dice that you want to roll.
~gamecount += 1
->Yahtzee3

=Yahtzee3
Now, you
+[take turns rolling the dice. Add them up to get points from certain combinations.]
take turns rolling the dice. Add them up to get points from certain combinations.
~gamecount += 1
->Yahtzee4
+[get points if you roll the dice and they don't make a sound.]get points if you roll the dice and they don't make a sound.
->Yahtzee4
+[get points if you catch the dice when your friend tries to roll them.]get points if you catch the dice when your friend tries to roll them.
->Yahtzee4

=Yahtzee4
You win if
+[you caught the most dice!]you caught the most dice!
->Evaluate
+[you rolled the quietest dice!]you rolled the quietest dice!
->Evaluate
+[you scored the most points!]you scored the most points!
~gamecount += 1
->Evaluate

=RopeGame
Okay, let's try tug-of-war then... 
-> Rope1

=Rope1
Okay, I'll teach you how to play tug-of-war.
+[You need a rope and a ribbon.]You need a rope and a ribbon.
~gamecount += 1
->Rope2
+[You need a rope and puddles.] You need a rope and puddles.
->Rope2
+[You need a rope and a staircase.] You need a rope and a staircase.
->Rope2

=Rope2
Then,
+[you each hold one end of the rope on a different side of the puddle.] you each hold one end of the rope on a different side of the puddle.
->Rope3
+[tie a ribbon around the middle of the rope, and mark the ground with two parallel goal lines.] tie a ribbon around the middle of the rope, and mark the ground with two parallel goal lines.
~gamecount +=1
->Rope3
+[you each hold one end of the rope, one at the top of the stairs and one at the bottom.] you each hold one end of the rope, one at the top of the stairs and one at the bottom.
->Rope3

=Rope3
Now,
+[the friend at the bottom of the stairs ties the rope around their waist.] 
->Rope4
+[you try to pull each other into the puddle using the rope.]
->Rope4
+[you can each hold one end of the rope, and tug as hard as you can.]
~gamecount += 1
->Rope4

=Rope4
You win if you
+[can pull the other friend to the top of the stairs using the rope] can pull the other friend to the top of the stairs using the rope
->Evaluate
+[can pull your friend into the puddle] can pull your friend into the puddle
->Evaluate
+[can pull the rope's ribbon across your side, where the marking's closest to you]can pull the rope's ribbon across your side, where the marking's closest to you 
~gamecount += 1
->Evaluate

=ChalkGame
Dana: Okay, let's play hopscotch then... 
-> HopScotch

=HopScotch
Dana: Okay, I'll teach you how to play hopscotch.
+[You need chalk and a rock.] You need chalk and a rock.
~gamecount += 1
-> HopScotch2
+[You need chalk and snacks.] You need chalk and snacks.
-> HopScotch2
+[You need chalk and eggs.] You need chalk and eggs.
-> HopScotch2

= HopScotch2
Dana: Then, 
+[count how many snacks you have and draw that many squares in a column using your chalk.] count how many snacks you have and draw that many squares in a column using your chalk.
-> HopScotch3
+[use your chalk to draw ten squares all in a column, with some rows containing two squares.] use your chalk to draw ten squares all in a column, with some rows containing two squares.
~gamecount += 1
-> HopScotch3
+[put the eggs on the ground and draw small squares around them] put the eggs on the ground and draw small squares around them 
-> HopScotch3

= HopScotch3
Dana: Now
+[each player takes turns hopping through the egg squares, trying not to squash them.] each player takes turns hopping through the egg squares, trying not to squash them.
-> HopScotch4
+[everyone hops through the squares all at once, trying to pick up snacks] everyone hops through the squares all at once, trying to pick up snacks
-> HopScotch4
+[toss the rock into a square and hop to the other end of the column, picking it up on your way back.]toss the rock into a square and hop to the other end of the column, picking it up on your way back.
~gamecount += 1
-> HopScotch4

= HopScotch4
Dana: You win if you
+[finish ten turns without breaking more than one egg.] finish ten turns without breaking more than one egg.
-> Evaluate
+[pick up the most snacks.] pick up the most snacks.
-> Evaluate
+[pick up the rock without falling or tossing it outside of the column ten times.]pick up the rock without falling or tossing it outside of the column ten times.
~gamecount += 1
->Evaluate

=Evaluate
{gamecount:
-4: 
~gamecount = 0
->EndGame
-3:~gamecount = 0
->Wrong
-2: ~gamecount = 0
->Wrong
-1: ~gamecount = 0
->Wrong
-0: ~gamecount = 0
->Wrong
}

= Wrong
Really? Are you sure you know how to play?
+[Try Again] -> CheckBag

=EndGame
Okay, that makes sense! 
+[One hour later]-> Play

= Play
{person:
-0: ->ThankJimmy
-1: ->ThankDonna
}

=PaperGame
Okay, let's try tic-tac-toe then... ->Paper1

=Paper1
Okay, I'll teach you how to play tic-tac-toe
+[You need to draw a dog] You need to draw a dog
->Paper2
+[You need to draw a grid]You need to draw a grid
~gamecount += 1
->Paper2
+[You need to draw a heart] You need to draw a heart
->Paper2

=Paper2
Then, you
+[draw cookies and the other draws cakes] draw cookies and the other draws cakes
->Paper3
+[draw X's, and the other draws O's] draw X's, and the other draws O's
~gamecount += 1
->Paper3
+[each draw your crush] each draw your crush 
->Paper3

=Paper3
Now,
+[take turns drawing your X's and O's]take turns drawing your X's and O's
~gamecount += 1
->Paper4
+[draw all your cookies and cakes as fast as you can for ten seconds] draw all your cookies and cakes as fast as you can for ten seconds
->Paper4
+[your friend guesses who your crush is]your friend guesses who your crush is 
->Paper4

=Paper4
You win if you
+[get three of your symbols in a row]get three of your symbols in a row
~gamecount += 1
->Evaluate
+[guess your friends crush]guess your friends crush
->Evaluate
+[drew more cookies or cakes within ten seconds] drew more cookies or cakes within ten seconds
->Evaluate

= ThankDonna
Donna: Kimmy loved that.
+[Continue]
->ThankDonnaA

=ThankDonnaA
Donna: I’m surprised, normally you’re so quiet Kimmy.
+[Continue]
->ThankDonnaB

=ThankDonnaB
Kimmy: Mom said it’s ok to be quiet.
+[Continue]
->ItsOk20

=ItsOk20
Dana: That’s right! 
+[Continue]
->ItsOk21

=ItsOk21
Dana: Games are a nice way to talk and play with your friends though, don’t you think?
+[Continue]
->ItsOk22

=ItsOk22
Dana: Even quiet kids like games, I think, usually.
+[Continue]
->ItsOk2A

=ItsOk2A
Kimmy: … Are we friends? I thought you were my babysitter.
+[Continue]
-> OfCourse

=OfCourse
Dana: Yes! Of course we’re friends! 
+[Continue]
->OfCourse1

=OfCourse1
Dana: I know we just met yesterday, but… that’s normal!
+[Continue]
->OfCourseA

=OfCourseA
Kimmy: I always thought babysitters were more like parents.
+[Continue]
-> ExplainKimmy

=ExplainKimmy
Dana: I can be your friend AND your babysitter.
+[Continue]
->ExplainKimmy1

=ExplainKimmy1
Dana: We’re having fun playing games together, right?
+[Continue]
->ExplainKimmy2

=ExplainKimmy2
Dana: That’s what friends do a lot of the time.
+[Continue]
->ExplainKimmyA

=ExplainKimmyA
Dana: Anthony and I became friends by playing games together. 
+[Continue]
->ExplainKimmyA2

=ExplainKimmyA2
Dana: We met playing kickball.
+[Continue]
->WhatUWantDonna

=WhatUWantDonna
Donna: Anthony and his little sister Amber are…
+[Continue]
->WhatUWantDonna1

=WhatUWantDonna1
Donna: annoying.
+[Continue]
->WhatUWantDonna2

=WhatUWantDonna2
Donna: Don’t tell them I said that though…
+[Continue]
->WhatUWantDonnaA

=WhatUWantDonnaA
Dana: Really? 
+[Continue]
->WhatUWantDonnaB

=WhatUWantDonnaB
Dana: Anthony and I go to the same school and do sports together sometimes.
+[Continue]
->WhatUWantDonnaC

=WhatUWantDonnaC
Dana: He’s way nicer than the other boys at my school.
+[Continue]
->WhatUWantDonnaD

=WhatUWantDonnaD
Dana: I like him and Amber.
+[Continue]
->DonnaSass

=DonnaSass
Donna: There’s no rule that says you have to like your classmates.
+[Continue]
->DonnaSassA

=DonnaSassA
Dana: Yeah, I know… but Anthony is nice to me, so I like him.
+[Continue]
->DonnaSass2

=DonnaSass2
Donna: Oooh, you like... Like him?
+[Continue]
->DonnaSass2A

=DonnaSass2A
Dana: …I’m not going to answer that, Donna. 
+[Continue]
->DonnaSass2A1

=DonnaSass2A1
Dana: Who I like is none of your business.
+[Continue]
->VisitFriends

=ThankJimmy
Kimmy: You’re not bad at games Jimmy...
+[Continue]
->ThankJimmy1

=ThankJimmy1
Kimmy: I think you were good.
+[Continue]
->ThankJimmyA

=ThankJimmyA
Jimmy: Oh! Thank you…
+[Continue]
->YesJimmy

=YesJimmy
Jimmy: Did you get those toys at the corner store, Dana?
+[Continue]
-> YesJimmyA

=YesJimmyA
Dana: Yup! I had a little money saved up.
+[Continue]
->YayJimmy

=YayJimmy
Jimmy: I save up my money for comics, but I’ve been saving up money for a Yo-yo lately.
+[Continue]
->YayJimmyA

=YayJimmyA
Kimmy: I don’t have any money but my mom said that’s ok. 
+[Continue]
->YayJimmyA1

=YayJimmyA1
Kimmy: I do sometimes wish I could buy more toys though...
+[Continue]
->SurprisedJimmy

=SurprisedJimmy
Jimmy: You don’t get an allowance?
+[Continue]
->SurprisedJimmyA

=SurprisedJimmyA
Kimmy: What’s an allowance?
+[Continue]
-> Allowance

=Allowance
Dana: A little money that your parents give you every week, usually.
+[Continue]
->AllowanceA

=AllowanceA
Kimmy: Oh…
+[Continue]
->EncourageK2

=EncourageK2
Dana: Don’t worry, not everyone gets allowance, Kimmy. 
+[Continue]
->EncourageK2A

=EncourageK2A
Dana: Friends are better than money anyways...
+[Continue]
->EncourageK2B

=EncourageK2B
Dana: and we’re going to make lots of friends for you!
+[Continue]
->EncourageKimmy2A

=EncourageKimmy2A
Kimmy: Ok…
+[Continue]
->VisitFriends

= VisitStore
Dean: Hey, Kid.
+[Continue]
->VisitStoreA

=VisitStoreA
Dana: Hi, Dean. This is Kimmy. I’m babysitting her now.
+[Continue]
->DeanSpeaks

=DeanSpeaks
Dean: Well lookit that, aren’t you all grown up. 
+[Continue]
->DeanSpeaks1

=DeanSpeaks1
Dean: You gettin’ paid?
+[Continue]
->DeanSpeaksA

=DeanSpeaksA
Kimmy: My mom pays Dana a quarter a day.
+[Continue]
->TellDean

=TellDean
Dana: That’s right! I’m here to buy some things…
+[Continue]
->TellDean1

=TellDean1
Dana: I mean, I haven’t gotten paid yet. This is my first day.
+[Continue]
->TellDean2

=TellDean2
Dana: But I have some money saved up!
+[Continue]
->TellDeanA

=TellDeanA
Dean: Hah, I wish I had that kinda discipline.
+[Continue]
->TellDeanB

=TellDeanB
Dean: I blew my budget on fabric last week.
+[Continue]
->DanaPlan

=DanaPlan
Dana: I need to save up money. For college, you know!
+[Continue]
->DanaPlan2

=DanaPlan2
Dana: My mom would get so mad if I didn’t plan ahead.
+[Continue]
->DanaPlanA

=DanaPlanA
Dean: Hah! Your mom’s got the right idea.
+[Continue]
-> DeanPlanB

=DeanPlanB
Dean: I wish I’d saved up for college.
+[Continue]
-> ProdDean

= ProdDean
Dana: So what did you spend all your money on? Your sewing classes?
+[Continue]
->ProdDeanA

=ProdDeanA
Dean: Nah, that’s over.
+[Continue]
->ProdDeanB

=ProdDeanB
Dean: I’m workin’ on some Halloween costumes for my cousins…
+[Continue]
->ProdDeanC

=ProdDeanC
Dean: and some new pants for myself.
->ProdDeanD

=ProdDeanD
Dean: You know, gotta apply those skills somehow.
+[Continue]
->KimmyClothes

=KimmyClothes
Kimmy: I didn’t know people made clothes!
+[Continue]
->KimmyClothesA

=KimmyClothesA
Dean: They do, Kimmy, they do.
+[Continue]
->KimmyClothesB

=KimmyClothesB
Dean: I make sweaters, dresses, hats--you name it.
+[Continue]
->SuggestDean

=SuggestDean
Dana: You should sell your clothes at Jordan Marsh! 
+[Continue]
->SuggestDean1

=SuggestDean1
Dana:That’s where I always find the nicest clothes.
+[Continue]
->SuggestDeanA

=SuggestDeanA
Dean: Hah! That’s a long ways off for me.
+[Continue]
->SuggestDean2

=SuggestDean2
Dean: But maybe someday… anyways, what can I get for ya?
+ [Continue] -> GameMenu

= GameMenu
What would you like to get?
+[Dice] You picked dice! -> dice
+[Jump Rope]  You picked jump rope! -> rope
+[Chalk]  You picked chalk! -> chalk
+[Pen and Paper] You picked pen and paper! -> paper

=dice
~bag = 1
+[Thank Dean and leave the store]
->ThankDean

=rope
~bag = 2
+[Thank Dean and leave the store]
->ThankDean

=chalk
~bag = 3
+[Thank Dean and leave the store]
->ThankDean

=paper
~bag = 4
+[Thank Dean and leave the store]
->ThankDean

=ThankDean
Dana: Thanks, Dean!
+[Continue]
->ThankDeanA

=ThankDeanA
Kimmy: Thank you Mr. Dean!
+[Continue]
->ThankDeanB

=ThankDeanB
Dean: Bye bye girls. Have fun.

+[Continue]
->VisitFriends

->Done

=== Done
+[Play Again] -> MorningKimmy
+[End here] -> DONE