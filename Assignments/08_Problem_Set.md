---
js: https://carnap.io/shared/rzach@ucalgary.ca/dark-mode.js
css: 
  - https://carnap.io/shared/rzach@ucalgary.ca/dark-mode.css
  - https://carnap.io/shared/rzach@ucalgary.ca/wideinput.css
---

# Phil 24.241 Logic I
# Problem Set \#8

<br />

<!---

This is problem set 8 for MIT Fall 2022 Logic I, 24.241. First seven problems come from Jtapp 303 Winter 2019 PS 8. Last nine problems come from Zach PS5, modified for LogicBookSD system (so not allowed to ever post solutions for these last nine problems!)

Description for students: Problem Set 8! Symbolization/Translation in Quantifier Logic (aka First Order Logic aka Predicate Logic). Due Friday November 4th by 10pm Eastern. 

2+2+4+2+4+8+8+6+6+8+8+8+10+4+8+8+10 = 106 

2+2+4+2+4+8+8+4+4+8+8+8+8+4+8+8+10 = 100 

8 problems have proof-checker; 9 do not 

Comments to self can be entered with [blah blah]:: or [](blah blah). Former needs an empty space before the line! 


-->

###Directions:

```{.QualitativeProblem .ShortAnswer points=0}
PS8.0 ONLY if you worked with up to two other students on these problems, please let me know their names in the text box below. Otherwise, leave this blank and don't submit! 
```

When (and only when) you are happy with your answer, click the `Submit`
button. YOU CAN ONLY SUBMIT ONCE! So be careful! *Carnap* will then acknowledge and record your submission. There are 17 questions, for a total of 100 points. 

Eight lower-point problems will check your answer, giving you that coveted green check mark if you answer correctly. Higher-point problems will forgo the green into the grey! So don't submit these till you're confident in your proof! As usual, the lower-point questions function as partial credit for the later ones, which will floor at 50% if you make an attempt. 

[Before you can submit, you have to check if your solution is correct (by pressing
Enter in the textbox; the problem display will turn green and display
a checkmark).]::

**You must ultimately click the `Submit` button for each exercise!**

*The fineprint*: Your student page on *Carnap* lists which problems you have completed. You do not have to complete all problems at the same time; you can come back to this page and complete part of the problem set later. *However*, Carnap *will not save work on this page, and it won't show
which problems you already have submitted correctly!* So you should
keep track of which problems are done, and copy any work you want to
save and paste it into a text document for later use or reference (but **not for sharing with others**---that's cheating!). You
can also print the problem page with completed problems, or take
screenshots.


To enter logical symbols on the keyboard, use:

------------------------- -----------------------------
not ~                     `-`, `~`
and &                     `/\`,  `&`
or ∨                      `\/`, `v` 
if then $\supset$                 `->`, `>`
if and only if $\equiv$          `<->`, `<>`
universal quantifier ∀    `A`
existential quantifier ∃  `E`
------------------------- -----------------------------

### Before you leave this page, make sure every problem which you have solved correctly is also submitted!

## Problems 1–3

<!---

JTapp Problems 1a, 1b, 1c from 2020 Fall (different from 2019 winter!):

\item Use this symbolization key to formalize the sentences that follow.
UD: The set $\{Alice, Bob, Carol, David\}$\\
a: Alice b: Bob, c: Carol d: David\\
Gy: y will graduate; Jy: y will get a job; Ay: y will become an accountant Py: y will become a physician Vxy: x will visit y. \\
({\bf{Don't use quantifiers for this question.}} Just use names of the elements of the UD.)
\begin{enumerate}
\item If David graduates but Alice doesn't, he will become a physician, and if Alice graduates she will become an accountant and visit David.
\item If not everyone graduates, then at most one of them will get a job. 
\item At least one of the students will get a job if and only if at most three of them will graduate.

$Vxy$  $x$ will visit $y$.  

~~~{.Translate .FOL system="LogicBookPD" points=2}
PS8.1 ((Gd & ~Ga) > Pd) & (Ga > (Aa & Vad))  : If David graduates but Alice doesn't, he will become a physician, and if Alice graduates she will become an accountant and visit David.
~~~


~~~{.Translate .FOL system="LogicBookPD" points=2}
PS8.2 $[(\!\sim\!Ga\, \lor \!\sim\!Gb) \lor (\!\sim\!Gc\, \lor \!\sim\!Gd)] \supset [[(\!\sim\! Ja \,\&\, \!\sim\!Jb) \,\&\, \!\sim\!Jc] \lor (\!\sim\! Ja \,\&\, \!\sim\!Jb) \,\&\, \!\sim\!Jd] \lor [(\!\sim\! Ja \,\&\, \!\sim\!Jc) \,\&\, \!\sim\!Jd]]\lor [(\!\sim\! Jb \,\&\, \!\sim\!Jc) \,\&\, \!\sim\!Jd]]$  : If not everyone graduates, then at most one of them will get a job. 
~~~

~~~{.Translate .FOL system="LogicBookPD" points=2}
PS8.3 $ [(Ja \lor Jb) \lor (Jc \lor Jd)] \equiv [(\sim\!Ga \,\lor\, \!\sim\!Gb) \,\lor \, (\sim\!Gc\, \lor \!\sim\!Gd)]$  : At least one of the students will get a job if and only if at most three of them will graduate.
~~~

-->

For these initial three translation exercises, do **NOT** use any quantifiers! 

- Instead, since the Universe of Discourse (UD) is so tiny, simply ascribe properties to constants from the UD, which in this case are names of imaginary SENIORS at an imaginary university where everyone is happy because there is no logic HW ever! 

- Some of these require long-ish disjunctions and conjunctions. Carnap will now accept disjunctions and conjunctions of more than two disjuncts/conjuncts, e.g., it treats `(A & B & C)` as if you had typed `((A & B) & C)`, likewise for `( Pa v Pb v Pc v Pd )` is treated as if you had typed `( (Pa v Pb) v (Pc v Pd) )`. Rejoice! 

- **Universe of Discourse** (UD): the set $\{ a, b, c, d \}$ denoting the seniors Alice, Bob, Carol, and David, respectively. 

**Predicate schemas**:

- $Gy$:	$y$ will graduate.     
- $Jy$:	$y$ will get a job.          
- $Ay$:	$y$ will become an accountant.       
- $Py$:	$y$ will become a physician.           
- $Mxy$:	$x$ will move next to $y$.   

<br />

[these three problems come from JTapp PS8, Winter 2019, problem 1a-c; Fall 2020 has different problems]::



~~~{.Translate .FOL system="LogicBookPD" points=2}
PS8.1 (Gd > Pd) & (Ga > (Aa & ~Mac))  : If David graduates he will become a physician, and if Alice graduates she will become an accountant and won't move next to Carol.
~~~

~~~{.Translate .FOL system="LogicBookPD" points=2}
PS8.2 ( (Ga & Gb) & (Gc & Gd) ) > ( (Ja v Jb) v (Jc v Jd) )  : If everyone graduates, then at least one of them will get a job. 
~~~

[Note that Carnap accepts the following answer which doesn't follow proper parenthesis convention! 
(Ga & Gb & Gc & Gd) > (Ja v Jb v Jc v Jd)
]:: 

~~~{.Translate .FOL system="LogicBookPD" options="exam" points=4}
PS8.3 ( (Ja v Jb) v (Jc v Jd) ) > ( (((Ga & Gb) v (Ga & Gc)) v (Ga & Gd)) v ( ((Gb & Gc) v (Gb & Gd)) v (Gc & Gd) )  )  : If at least one of the students will get a job, then at least two of them will graduate. 
~~~

[Note that Carnap accepts the following answer with much simpler parenthsis convention: 
( Ja v Jb v Jc v Jd ) > ( (Ga & Gb) v (Ga & Gc) v (Ga & Gd) v (Gb & Gc) v (Gb & Gd) v (Gc & Gd))
]::


## Problems 4–7

[these four problems come from JTapp PS8, Winter 2019, problem 2a-d]::

Now, alongside constants in the UD, you **will** use quantifiers, and you'll appreciate them *all the more*, having experienced the tedium of not having them at your disposal. 

- Use the same symbolization key as in the previous question, except change the UD to **all** MIT seniors (and *super*-seniors!)
- Note that Carnap does NOT allow outer parentheses around a quantified expression. For instance, you should type `(Ax)Gx` and NOT ((Ax)Gx). *Carnap* deems the latter expression "ungrammatical". 

[seems that the following results in a compilation problem: ((Ax)Gx) > (Gd & Gc). 
whereas it is fine to write (Ax) Gx > (Gd & Gc)]::

~~~{.Translate .FOL system="LogicBookPD" options="exam" points=2}
PS8.4 (Ax)Gx > (Gd & Gc) : If all the seniors graduate, then David and Carol will graduate.
~~~



[following does NOT compile: (Ax)(Gx) v (Ex)(~Gx)]::

Note that Carnap does NOT allow you to put a single bound predicate in parentheses. E.g. to symbolize "everyone will get a job" you must type `(Ax)Jx` and NOT (Ax)(Jx). 


~~~{.Translate .FOL system="LogicBookPD" options="exam" points=4}
PS8.5 (Ax)Gx v (Ex)~Gx : Everyone will graduate or someone will not graduate. 
~~~

[compilation problem: ((Ax)(Gx) & Jc) > Pa]::

[note that carnap correctly accepts also the following:
(Ax)(Gx & Jc) > Pa
(Ex)((Gx & Jc) > Pa)
which is neat, since a lot of TA's might not realize the latter is equivalent. see logic book p. 302
]::


- No auto-checking for the next two! 

~~~{.Translate .FOL system="LogicBookPD" options="exam nocheck" points=8}
PS8.6 ((Ax)Gx & Jc) > Pa : If everyone graduates and Carol gets a job, then Alice will become a physician. 
~~~

[following results in compilation problem due to second conjunct: (Ex)(Gx & ~Px) & (Ax)(Jx) ]::

~~~{.Translate .FOL system="LogicBookPD" options="exam nocheck" points=8}
PS8.7 (Ex)(Gx & ~Px) & (Ax)Jx : Some senior will graduate and will not become a physician, but every senior will get a job.
~~~


## Problems 8–17

[The remaining problems are symbolizations in FOL. They cover the
lecture videos for Unit 5 and Chapters 22 and 23 of the textbook.]::

[Please use the following symbolization key: ]::

Using the key given, symbolize the following sentences in QL

- UD: celestial objects in the solar system, including the following constants (the sun is `o`!):
- $o =$  the sun; $m=$  Mars; $j=$ Jupiter   
- $d=$  Deimos; $p=$  Phobos
- $l=$  Sila; $n=$  Nunam


Predicates:
 **$Ax$** = $x$ is an asteroid;	 **$Mx$** = $x$ is a moon;	**$Px$** =  $x$ is a planet;	**$Oxy$** =    $x$ orbits $y$;	**$Lxy$**  =   $x$ is larger than $y$

- No quantifiers needed for the first problem. Double check the constants you use! 


~~~{.Translate .FOL system="LogicBookPD" options="exam" points=4}
PS8.8 (  (Pl /\ Pj) \/ (Pl /\ Pm) \/ (Pj /\ Pm)  ) /\ ~(Pl /\ Pm /\ Pj) : Two of Sila, Mars, and Jupiter are planets, but not all three.
~~~

[Alternate solution idea: only three possibilities for exactly two of them to be planets: (Pl & Pj & ~Pm) v (Pl &~Pj & Pm) v (~Pl &Pj &Pm) ]:: 

- Moving to problems that require quantifiers:


[Same symbolization key, repeated for your convenience:]::

~~~{.Translate .FOL system="LogicBookPD" options="exam" points=4}
PS8.9 (Ex)(Mx /\ Oxj) /\ (Ex)(Mx /\ ~Oxj) : Some moons orbit Jupiter, and some don't.
~~~

[Alternative solution idea using adjacent quantifiers: 
(Ex)(Ey)(Mx & Oxj & My & ~Oyj) ]:: 

- turning off auto-checker! Remember, the sun is symbolized by the lowercase letter `o`!

~~~{.Translate .FOL system="LogicBookPD" options="exam nocheck" points=8}
PS8.10 (Ax)( (Px /\ Lxm) -> Oxo ) : All planets larger than Mars orbit the sun.
~~~

[note the need for OR in the antecedent for the following, since we're really saying "Everything that is a planet orbits the sun, and everything that is an asteroid orbits the sun". I should check that it will accept this conjunction of for-all claims as well ]::


[Note that you can put space after (Ax) or remove space with no problems. But you do need the outer paren around the sentence you are quantifying over, so Carnap will NOT accept the following: 
(Ax)    Ax -> ~(Lxm \/ Tx) ]::

- Let **$Tx$** = x has an atmosphere 

~~~{.Translate .FOL system="LogicBookPD" options="exam nocheck" points=8}
PS8.11 (Ax) (Ax -> ~(Lxm \/ Tx)) : No asteroid is larger than Mars or has an atmosphere.
~~~

[~(Ex)((Ax & Lxm) v (Ax & Tx))]:: 

Same symbolization key, repeated for your convenience:

- UD: celestial objects in the solar system, including the following constants (the sun is `o`!):
- $o =$  the sun; $m=$  Mars; $j=$ Jupiter   
- $d=$  Deimos; $p=$  Phobos
- $l=$  Sila; $n=$  Nunam


Predicates:
 **$Ax$** = $x$ is an asteroid;	 **$Mx$** = $x$ is a moon;	**$Px$** =  $x$ is a planet;	**$Oxy$** =    $x$ orbits $y$;	**$Lxy$**  =   $x$ is larger than $y$

[Note that $s$ is a variable in FOL, so neither the Sun nor Sila can be
symbolized by $s$. Josh: this just seems like a bad feature of their notation! LogicBookPD treats only x, y, z as variables I think. maybe w. ]::


~~~{.Translate .FOL system="LogicBookPD" options="exam nocheck" points=8}
PS8.12 (Ax)((Mx /\ Oxm) -> Lmx) : All moons of Mars are smaller than Mars.
~~~

~~~{.Translate .FOL system="LogicBookPD" options="exam nocheck" points=8}
PS8.13 ~(Ax)((Mx /\ Lxd) -> (Oxm \/ Oxj)) : Not every moon larger than Deimos orbits Mars or Jupiter.
~~~

- the next problem has auto-checking enabled:

~~~{.Translate .FOL system="LogicBookPD" options="exam" points=4}
PS8.14 (Ax) (Ax ->(Oxo \/ Llx)) : Every asteroid orbits the sun, unless it is smaller than Sila.
~~~


~~~{.Translate .FOL system="LogicBookPD" options="exam nocheck" points=8}
PS8.15 (Ex) (Ax /\ (~Lxp & ~Lpx)) : Some asteroids are the same size as Phobos.
~~~

Remember, the schema "x has an atmosphere" is symbolized as "**$Tx$**".

~~~{.Translate .FOL system="LogicBookPD" options="exam nocheck" points=8}
PS8.16 (Ax)((Px /\ Lxm) <-> Tx) : All and only planets larger than Mars have an atmosphere.
~~~

[some alternative solutions to 8.16:

(Ax)(  (Px>(Lxm>Tx)) & (Tx > (Px&Lxm)))

can even do the following!

(Ax)((Px & Lxm) > Tx) & ~(Ex)(Tx & ~(Px & Lxm))
]::



~~~{.Translate .FOL system="LogicBookPD" options="exam nocheck" points=10}
PS8.17 (Ex)(Mx & Oxj) -> (Ex)(Mx & (Oxj & Tx)) : If Jupiter has a moon, it has a moon with an atmosphere.
~~~

- UD: celestial objects in the solar system, including the following constants (the sun is `o`!):
- $o =$  the sun; $m=$  Mars; $j=$ Jupiter   
- $d=$  Deimos; $p=$  Phobos
- $l=$  Sila; $n=$  Nunam


Predicates:
 **$Ax$** = $x$ is an asteroid;	 **$Mx$** = $x$ is a moon;	**$Px$** =  $x$ is a planet;	**$Oxy$** =    $x$ orbits $y$;	**$Lxy$**  =   $x$ is larger than $y$

### Before you leave this page, make sure every problem which you have solved correctly is also submitted!


<!---

There are 18 questions on this assignment, with a total of 20 points
(5.3 and 5.4 count for 2 points). To get a complete, you have to get
at least 16 points.

The first two problems for this week are proofs that require
the IP rule.

## Problem 1

Give a formal proof of the following argument.

~~~{.ProofChecker .ZachTFL2019 options="indent resize render tabindent fonts" points=1} 
PS8.1 (A -> B) :|-: ~A \/ B
~~~

## Problem 2
Give a formal proof of the following theorem.

~~~{.ProofChecker .ZachTFL2019 options="indent resize render tabindent fonts" points=1} 
PS8.2 :|-: (A -> B) \/ (B -> A)
~~~

(This one is quite hard.)

-->
