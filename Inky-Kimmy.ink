VAR bag = 0
VAR person = -1

The next day, you go to Kimmy's house
Kimmy is standing on the porch

+ [Talk to Kimmy]
-> MorningKimmy

=== MorningKimmy
Dana: Mornin’ Kimmy! I’m here to babysit, like I promised! Is your mom around?
Kimmy: My mommy’s not inside. She left already.

+[Ask Kimmy what she would like to do]
-> ProdKimmy

= ProdKimmy
Dana: Oh, ok… Um, well… Is there anything you’d like to do today, Kimmy?
Kimmy: No… I don’t know.
Dana: That’s ok, do you have a friend you’d like to visit?
Kimmy: No...
+[Give Kimmy more suggestions]
-> MoreSuggestions

=MoreSuggestions
Dana: Should we watch TV or something in your house?
Kimmy: We don’t have a TV. My dad is in there too, so we should go play somewhere else. He’s busy.
Dana: Ok then! Want to walk around and play some games with the other kids?
Kimmy: Other kids…?

+[Talk about the other kids]
->OtherKids

= OtherKids
Dana: You know, the neighborhood kids. Like Donna. Isn’t she your age? You’re both going to be in Kindergarten, right?
Kimmy: Oh, yeah… I don’t think Donna is my friend though, so she probably wouldn’t want to play...
Dana: Well, let’s go become her friend! There's lots of other kids around, too. Like Anthony. I know him from school.
Dana: Come on, let’s go!
Kimmy: ...!
-> VisitFriends

= VisitFriends
Where would you like to go?
+ [Store]
-> VisitStore

+ [Playground] 
~person = 0
-> MeetJimmy

+[Neighborhood]
~person = 1
-> MeetDonna

+[Call it quits]
->Done

= MeetDonna
Kimmy: Hi Donna.
Donna: What happened, Kimmy? Did you untie yourself from the porch again?
Kimmy: ...
+[Explain the situation to Donna]
->ExplainDonna

=ExplainDonna
Dana: Hi Donna! I’m babysitting Kimmy now, so--
Donna: So you untied Kimmy from the porch? Better not let her parents catch you.
Dana: First of all, I’m her babysitter. Second, she’s perfectly able to untie herself. She’s too old for that thing now, even her mom thinks so.
Donna: She should probably stay on her porch. We’re the same age, but my mom takes me everywhere so I won’t get lost. I bet Kimmy would get lost if she wandered too far.
Dana: I don’t know about that. Anyways, I was just going to ask if you wanna play with us... but I feel like you're being mean to Kimmy.
Donna: Oh, no. I'm just being honest!
+[Ask Donna to play a game]
-> AskDonna

=AskDonna
Dana: Ok... well, I hope you two can get along, since you're neighbors... want to play a game with us?
Donna: Well, I’m trying to avoid Harold so it’s probably good to look busy. He keeps trying to tell me that my ears look childish. He is so snobby.
Kimmy: I like your ears.
Donna: Oh, thanks. They’re new. Anyways, I wanna play a new game.
+[Check bag for games]
->CheckBag

= MeetJimmy
Jimmy: ...Hi Kimmy.
Kimmy: Hi Jimmy…
Dana: ...

+[Continue the conversation]
-> ProdJimmy

= ProdJimmy
Dana: Whatcha reading there, Jimmy? Looks neat.
Jimmy: M-my comic… Archie...
Dana: Some of my friends at school read that! Did you get it at the bookstore?
Jimmy: Yeah!
Kimmy: I’ve never read a comic before.
Jimmy: Y-you can borrow one of mine whenever you like, Kimmy! And then we can uh…
Jimmy: We can talk about it and pick our--our favorite characters!
Dana: Wow! That’s so nice of you, Jimmy! Guess you have a new friend, Kimmy!
Kimmy: I think… that sounds fun...
Jimmy: A-anytime, anytime… um…
+[Ask Jimmy to play some games]
-> ProdJimmyMore

=ProdJimmyMore
Dana: Say, are you free to play a game with us, Jimmy? We’ll teach you something new!
Jimmy: I’m not very good at games… b-but, if Kimmy wants me to...
Dana: I’m teaching Kimmy games and helping her make friends this summer.
Jimmy: If you’re learning games, can I play games with you on the playground sometimes too, Kimmy? Once school starts?
Kimmy: ...Ok. I don’t play much at school but I will with you if you want.
Jimmy: What! Oh! Yes… yes please…

+[Check bag for games]
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
Dana: Oh no! I’m sorry… I thought I had some stuff to play games with in my bag… but it looks like I ran out.
Kimmy: Oh no...
Dana: It’s ok! Kimmy, let’s run to the store and buy some game pieces! We’ll be right back!
-> VisitFriends

=DiceGame
{person:
-0: ->ThankJimmy
-1: ->ThankDonna
}

=RopeGame
{person:
-0: ->ThankJimmy
-1: ->ThankDonna
}

=ChalkGame
{person:
-0: ->ThankJimmy
-1: ->ThankDonna
}

=PaperGame
{person:
-0: ->ThankJimmy
-1: ->ThankDonna
}

= ThankDonna
Donna: Kimmy loved that.
Donna: I’m surprised, normally you’re so quiet Kimmy.
Kimmy: Mom said it’s ok to be quiet.
Dana: That’s right! Games are a nice way to talk and play with your friends though, don’t you think? Even quiet kids like games, I think, usually.
Kimmy: … Are we friends? I thought you were my babysitter.
+[Answer Kimmy]
-> OfCourse

=OfCourse
Dana: Yes! Of course we’re friends! I know we just met yesterday, but… that’s normal!
Kimmy: I always thought babysitters were more like parents.
Dana: I can be your friend AND your babysitter. We’re having fun playing games together, right? That’s what friends do a lot of the time.
Dana: Anthony and I became friends by playing games together. We met playing kickball.
Donna:			Anthony and his little sister Amber are… annoying. Don’t tell them I said that though…
Dana: Really? Anthony and I go to the same school and do sports together sometimes. He’s way nicer than the other boys at my school. I like him and Amber.
Donna: There’s no rule that says you have to like your classmates.
Dana: Yeah, I know… but Anthony is nice to me, so I like him.
Donna: Oooh, you like... Like him?
Dana: …I’m not going to answer that, Donna. Who I like is none of your business.
->VisitFriends

=ThankJimmy
Kimmy: You’re not bad at games Jimmy... I think you were good.
Jimmy: Oh! Thank you…
Jimmy: Did you get those toys at the corner store, Dana?
Dana: Yup! I had a little money saved up.
Jimmy: I save up my money for comics, but I’ve been saving up money for a Yo-yo lately.
Kimmy: I don’t have any money but my mom said that’s ok. I do sometimes wish I could buy more toys though...
Jimmy: You don’t get an allowance?
Kimmy: What’s an allowance?
+[Explain what an allowance is]
-> Allowance

=Allowance
Dana: A little money that your parents give you every week, usually.
Kimmy: Oh…
Dana: Don’t worry, not everyone gets allowance, Kimmy. Friends are better than money anyways, and we’re going to make lots of friends for you!
Kimmy: Ok…
->VisitFriends

= VisitStore
Dean: Hey, Kid.
Dana: Hi, Dean. This is Kimmy. I’m babysitting her now.
Dean: Well lookit that, aren’t you all grown up. You gettin’ paid?
Kimmy: My mom pays Dana a quarter a day.
Dana: That’s right! I’m here to buy some things… I mean, I haven’t gotten paid yet. This is my first day. But I have some money saved up!
Dean: Hah, I wish I had that kinda discipline. I blew my budget on fabric last week.
Dana: I need to save up money. For college, you know! My mom would get so mad if I didn’t plan ahead.
Dean: Hah! Your mom’s got the right idea. I wish I’d saved up for college.
+[Ask Dean what he spent his money on]
-> ProdDean

= ProdDean
Dana: So what did you spend all your money on? Your sewing classes?
Dean: Nah, that’s over. I’m workin’ on some Halloween costumes for my cousins… and some new pants for myself. You know, gotta apply those skills somehow.
Kimmy: I didn’t know people made clothes!
Dean: They do, Kimmy, they do. I make sweaters, dresses, hats--you name it.
Dana: You should sell your clothes at Jordan Marsh! That’s where I always find the nicest clothes.
Dean: Hah! That’s a long ways off for me. But maybe someday… anyways, what can I get for ya?

+ [Pick out some games] -> GameMenu

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
Kimmy: Thank you Mr. Dean!
Dean: Bye bye girls. Have fun.

+[Find a friend to play with]
->VisitFriends

->Done

=== Done
+[Play Again] -> MorningKimmy
+[End here] -> DONE