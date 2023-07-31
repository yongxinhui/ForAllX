---
js: https://carnap.io/shared/rzach@ucalgary.ca/dark-mode.js
css: 
  - https://carnap.io/shared/rzach@ucalgary.ca/dark-mode.css
  - https://carnap.io/shared/rzach@ucalgary.ca/wideinput.css
---

<!---
This is problem set 1 for MIT Fall 2022 Logic I, 24.241.
Most problems come from Zach Problem Set 2, modified for LogicBookSD system. A couple problems come from Tappenden UMichigan 303 problem Set 1. 

Comments to self can be entered with [blah blah]:: or [](blah blah). Former needs an empty space before the line! 

8 1pt problems, then 8+8+8 +8+10+10+10+10+8+8+4 =8+92=100

Point values: 8 1pt problems, then 6+8+6 +8+10+10+10+10+8+6+4 = 100-6

Cannot turn off check feature for identifying main connective.
Can turn off check in translation problems with options = "exam nocheck"
-->

#### Phil 24.241 Logic I, Fall 2022 
# Problem Set \#1:
### Identifying Main Connectives; Symbolizations in SL

<br />

Note well: The symbolization problems are case-sensitive! So you must enter CAPITAL letters for the atomic sentences or else Carnap will not accept them. You can enter lowercase letter `v` for the or symbol, and it should work, but it must be a LOWERCASE `v`. Only ever use normal parentheses: no brackets or braces! 

###Directions:

```{.QualitativeProblem .ShortAnswer points=0}
PS1.0 If you worked with up to two other students on these problems, please let me know their names in the text box below:
```

There are 19 questions. When (and only when) you are happy with your answer, click the `Submit`
button. YOU CAN ONLY SUBMIT ONCE! So be careful! *Carnap* will then acknowledge and record your submission.

For lower-point problems, Carnap will check your work before submitting if you press `Enter`. Most low-point problems will actually REQUIRE your answer to be correct before allowing you to submit (this is to help make sure you know what you're doing for the later problems. It also grants you BIG BALLER partial credit for later problems, which will floor at 50 percent if you attempt them). 

If you have it correct, *Carnap* will highlight part of the problem in green, but you STILL HAVE TO CLICK `Submit`!

Higher-point problems will typically *not* have this *checking* feature, so please don't submit these until you're happy with your answer! There's no way in *Carnap* to resubmit answers! 

[For some of the low-point problems, *Carnap* will require you to get them correct before you can submit. This is to make sure that you are familiar with the system and not making any easily-preventable errors. ]:: 

*The fineprint*: Your student page on *Carnap* lists which problems you have completed.
You do not have to complete all problems at the same time; you can
come back to this page and complete part of the problem set later.
*However,* Carnap *will not save work on this page, and it won't show
which problems you already have submitted!* So you should
keep track of which problems are done, copy any work you want to
save, and paste it into a text document for later use or reference (but **not for sharing with others**---that's cheating!). You
can also print the problem page with completed problems, or take
screenshots.

[The following are the problems you should complete for Problem Set 1.
When you have successfully completed a problem, click the `Submit`
button. Carnap will acknowledge and record your submission. You can
only submit a problem once if it is completed correctly. Before you can
submit, you have to check if your solution is correct (by pressing
Enter in the textbox; the problem display will turn green and display
a checkmark).]::



To enter logical symbols on the keyboard, use:

------------------------- -----------------------------
not ~                     `-`, `~`
and &                     `/\`,  `&`
or ∨                      `\/`, `v`
if then $\supset$                 `->`, `>`
if and only if $\equiv$          `<->`, `<>`
------------------------- -----------------------------

<br />

### Before you leave this page, make sure every problem which you have solved correctly is also submitted!

<br />

<br />

## Identifying the main connective:

[Note that .MatchClean in syntax checker kills the outer parentheses, but then LogicBookSD system turns them back on...! e.g. in the following  
~~~{.SynChecker .MatchClean} 
1.2 P /\ Q /\ R 
~~~
]::

<br />

Working from the inside out, every sentence of SL is built up from sentence letters
using one of the connectives of SL ($\sim$, &, $\lor$, $\supset$,
$\equiv$). The final connective used in the construction of a
sentence is its _main logical operator_. In the exercises below, type
the main logical operator of the sentence, then hit return. 

If you
picked the correct connective, the system will show you the
sub-sentence(s) from which the sentence is constructed using the main
logical operator you just entered. It may be a sentence letter, or
itself constructed from simpler sentences. 

Enter the main logical
operator of the highlighted (in `red`) sub-sentence, until only sentence
letters are left. When you have completely analyzed the sentence, the
box will turn green. THEN CLICK `SUBMIT`. 

[Notes on .Synchecker: even in exam mode, people still get green checkmark for doing it correctly. This is true even if you specify nocheck as an option. So seemingly can't avoid full verification on these kinds of problems... You also still get the dialog box if you enter the incorrect main connective]::

[From JTapp 303, HW1, 1a]::
~~~{.SynChecker .Match system="LogicBookSD" .MatchClean points=1} 
PS1.16  ~ ( A & ~H )
~~~

~~~{.SynChecker .Match system="LogicBookSD" .MatchClean points=1} 
PS1.17 ~((P > ~R) >B)
~~~

[options = "exam" doesn't do anything... Likewise for options="exam nocheck". So making these all low point values since guaranteed to get correct with enough effort!]::

~~~{.SynChecker .Match system="LogicBookSD" .MatchClean points=1} 
PS1.18 (((~P \/ Q) <> (P /\ R))) & H
~~~

[From JTapp 303, HW1, 1b]::
~~~{.SynChecker .Match system="LogicBookSD" .MatchClean points=1} 
PS1.19  M > (~N > (D <> ~(R or X)))
~~~


## Symbolization 

<br />

Using the symbolization key given above, symbolize the following sentences in SL. There are 15 questions in total. Those worth 1 point have an autocheck feature so you can verify if you did it correctly before submitting. You type your answer in the text box above `Submit`. (The box below `Submit` stays fixed to show you what you're trying to symbolize). 

* $S$: Siobhan is a logician.
* $R$: Thi is a logician. 
* $P$: Thi is a philosopher.
* $M$: Thi is a musician.
* $L$: Leslie likes Siobhan.

~~~{.Translate .Prop system="LogicBookSD" points=1}
PS1.1 P \/ M : Thi is either a philosopher or a musician.
~~~
~~~{.Translate .Prop system="LogicBookSD" points=1}
PS1.2 P /\ ~M : Thi is a philosopher, but not a musician.
~~~

[Again, with just exam option, you still get a dialogue box pop up if you try to submit an incorrect result! But adding in nocheck does work! Eliminates green box entirely!]::

~~~{.Translate .Prop system="LogicBookSD" points=1}
PS1.3 ~S -> R : Thi is a logician if Siobhan isn't.
~~~
~~~{.Translate .Prop system="LogicBookSD" points=1}
PS1.4 S -> L : Siobhan is a logician only if Leslie likes her.
~~~

####Turning off auto-checking! Watchout!!!

* $S$: Siobhan is a logician.
* $C$: Siobhan is Canadian.
* $R$: Thi is a logician. 
* $P$: Thi is a philosopher.
* $M$: Thi is a musician.
* $L$: Leslie likes Siobhan.

~~~{.Translate .Prop system="LogicBookSD" options="exam nocheck" points=8}
PS1.5 L /\ S : Leslie likes Siobhan even though she is a logician.
~~~
~~~{.Translate .Prop system="LogicBookSD" options="exam nocheck" points=8}
PS1.6 (S /\ C) \/ L : Siobhan is a Canadian logician unless Leslie likes her.
~~~
~~~{.Translate .Prop system="LogicBookSD" options="exam nocheck" points=8}
PS1.7 ~R /\ ~S : Neither Thi nor Siobhan is a logician.
~~~
~~~{.Translate .Prop system="LogicBookSD" options="exam nocheck" points=8}
PS1.8 (P /\ M) -> ~(C /\ S) : Thi is both a philosopher and a musician only if Siobhan isn't a Canadian logician.
~~~

* $S$: Siobhan is a logician.
* $C$: Siobhan is Canadian.
* $R$: Thi is a logician. 
* $P$: Thi is a philosopher.
* $M$: Thi is a musician.
* $L$: Leslie likes Siobhan.

~~~{.Translate .Prop system="LogicBookSD" options="exam nocheck" points=10}
PS1.9 (S /\ L) -> (R \/ M) : If Siobhan is a logician whom Leslie likes, Thi is a logician, too, or a musician. 
~~~
~~~{.Translate .Prop system="LogicBookSD" options="exam nocheck" points=10}
PS1.10 ~R /\ (~P /\ ~M) : Thi is neither a logician, nor a philosopher, nor a musician.
~~~
~~~{.Translate .Prop system="LogicBookSD" options="exam nocheck" points=10}
PS1.11 L \/ (S <-> ~R)  : Unless Leslie likes her, Siobhan is a logician if and only if Thi isn't.
~~~
~~~{.Translate .Prop system="LogicBookSD" options="exam nocheck" points=10}
PS1.12 (S /\ R) -> ((P \/ M) /\ ~(P /\ M)) : Thi is a philosopher or musician but not both, provided he and Siobhan are both logicians.
~~~

* $S$: Siobhan is a logician.
* $R$: Thi is a logician. 
* $P$: Thi is a philosopher.
* $M$: Thi is a musician.

For the next problem you have to find a sentence of SL that is true if, and
only if, exactly one of Thi and Shioban is a logician.

~~~{.Translate .Prop system="LogicBookSD" options="exam nocheck" points=8}
PS1.13 ~(S <-> R) : Exactly one of Thi and Shioban is a logician.
~~~

[alternate solution for `exactly one' problem: (S & ~R) v (~S & R)]::

"Thi is not a logician or a philosopher" is ambiguous. One reading is
that either Thi isn't a logician, or Thi is a philosopher. Symbolize the
*other* reading.

~~~{.Translate .Prop system="LogicBookSD" options="exam nocheck" points=8}
PS1.14 ~(R \/ P) : Thi is not a logician or a philosopher.
~~~

* $R$: Thi is a logician. 
* $P$: Thi is a philosopher.
* $M$: Thi is a musician.

The sentence "Thi is a musician or not a philosopher and a logician" is ambiguous.
One reading is that Thi is either a musician, or he is not a
philosopher but is a logician. Another is that Thi is a logician, and
also either a musician or not a philosopher. Symbolize the remaining third
reading. You should be able to check this one before submitting!

~~~{.Translate .Prop system="LogicBookSD" options="exam" points=4}
PS1.15 M \/ ~(P /\ R) : Thi is a musician or not a philosopher and a logician.
~~~

[To be fair, I got this one wrong myself. I entered M v (~P & ~R), reading the not as giving an implicit/elliptical not before logician. Other readings listed are (1) M v (~P & R) and (2) R & (M v ~P)]::


<br />


### Before you leave this page, make sure every problem which you have solved correctly is also submitted!
