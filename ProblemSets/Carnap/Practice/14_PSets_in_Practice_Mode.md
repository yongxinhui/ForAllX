---
js: https://carnap.io/shared/rzach@ucalgary.ca/dark-mode.js
css: 
  - https://carnap.io/shared/rzach@ucalgary.ca/dark-mode.css
  - https://carnap.io/shared/rzach@ucalgary.ca/wideinput.css
---

# Phil 24.241 Logic I
# Problem Sets \#8, 10, and 11 in Practice Mode 

(Note that PS9 is ALREADY in practice mode)

<br />

<!---

practice versions for review for final exam! autochecking on for everything! 

Description for students: Problem Sets 8, 10, and 11 in practice mode (review for final)! Note that PS9 is already in practice mode! 

Comments to self can be entered with [blah blah]:: or [](blah blah). Former needs an empty space before the line! 

-->

------------------------- -----------------------------
not ~                     `-`, `~`
and &                       `&`, `/\`
or $\lor$                       `v`, `\/`
if then $\supset$                  `>`, `->`
if and only if ≡           `<>`, `<->`
universal quantifier ∀    `A`
existential quantifier ∃  `E` 
------------------------- -----------------------------




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

~~~{.Translate .FOL system="LogicBookPD" submission="none"}
PS8.1 ((Gd & ~Ga) > Pd) & (Ga > (Aa & Vad))  : If David graduates but Alice doesn't, he will become a physician, and if Alice graduates she will become an accountant and visit David.
~~~


~~~{.Translate .FOL system="LogicBookPD" submission="none"}
PS8.2 $[(\!\sim\!Ga\, \lor \!\sim\!Gb) \lor (\!\sim\!Gc\, \lor \!\sim\!Gd)] \supset [[(\!\sim\! Ja \,\&\, \!\sim\!Jb) \,\&\, \!\sim\!Jc] \lor (\!\sim\! Ja \,\&\, \!\sim\!Jb) \,\&\, \!\sim\!Jd] \lor [(\!\sim\! Ja \,\&\, \!\sim\!Jc) \,\&\, \!\sim\!Jd]]\lor [(\!\sim\! Jb \,\&\, \!\sim\!Jc) \,\&\, \!\sim\!Jd]]$  : If not everyone graduates, then at most one of them will get a job. 
~~~

~~~{.Translate .FOL system="LogicBookPD" submission="none"}
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



~~~{.Translate .FOL system="LogicBookPD" submission="none"}
PSP8.1 (Gd > Pd) & (Ga > (Aa & ~Mac))  : If David graduates he will become a physician, and if Alice graduates she will become an accountant and won't move next to Carol.
~~~

~~~{.Translate .FOL system="LogicBookPD" submission="none"}
PSP8.2 ( (Ga & Gb) & (Gc & Gd) ) > ( (Ja v Jb) v (Jc v Jd) )  : If everyone graduates, then at least one of them will get a job. 
~~~

[Note that Carnap accepts the following answer which doesn't follow proper parenthesis convention! 
(Ga & Gb & Gc & Gd) > (Ja v Jb v Jc v Jd)
]:: 

~~~{.Translate .FOL system="LogicBookPD" options="exam" submission="none"}
PSP8.3 ( (Ja v Jb) v (Jc v Jd) ) > ( (((Ga & Gb) v (Ga & Gc)) v (Ga & Gd)) v ( ((Gb & Gc) v (Gb & Gd)) v (Gc & Gd) )  )  : If at least one of the students will get a job, then at least two of them will graduate. 
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

~~~{.Translate .FOL system="LogicBookPD" options="exam" submission="none"}
PSP8.4 (Ax)Gx > (Gd & Gc) : If all the seniors graduate, then David and Carol will graduate.
~~~



[following does NOT compile: (Ax)(Gx) v (Ex)(~Gx)]::

Note that Carnap does NOT allow you to put a single bound predicate in parentheses. E.g. to symbolize "everyone will get a job" you must type `(Ax)Jx` and NOT (Ax)(Jx). 


~~~{.Translate .FOL system="LogicBookPD" options="exam" submission="none"}
PSP8.5 (Ax)Gx v (Ex)~Gx : Everyone will graduate or someone will not graduate. 
~~~

[compilation problem: ((Ax)(Gx) & Jc) > Pa]::

[note that carnap correctly accepts also the following:
(Ax)(Gx & Jc) > Pa
(Ex)((Gx & Jc) > Pa)
which is neat, since a lot of TA's might not realize the latter is equivalent. see logic book p. 302
]::


~~~{.Translate .FOL system="LogicBookPD" options="exam" submission="none"}
PSP8.6 ((Ax)Gx & Jc) > Pa : If everyone graduates and Carol gets a job, then Alice will become a physician. 
~~~

[following results in compilation problem due to second conjunct: (Ex)(Gx & ~Px) & (Ax)(Jx) ]::

~~~{.Translate .FOL system="LogicBookPD" options="exam" submission="none"}
PSP8.7 (Ex)(Gx & ~Px) & (Ax)Jx : Some senior will graduate and will not become a physician, but every senior will get a job.
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


~~~{.Translate .FOL system="LogicBookPD" options="exam" submission="none"}
PSP8.8 (  (Pl /\ Pj) \/ (Pl /\ Pm) \/ (Pj /\ Pm)  ) /\ ~(Pl /\ Pm /\ Pj) : Two of Sila, Mars, and Jupiter are planets, but not all three.
~~~


- Moving to problems that require quantifiers:


[Same symbolization key, repeated for your convenience:]::

~~~{.Translate .FOL system="LogicBookPD" options="exam" submission="none"}
PSP8.9 (Ex)(Mx /\ Oxj) /\ (Ex)(Mx /\ ~Oxj) : Some moons orbit Jupiter, and some don't.
~~~

[ - turning off auto-checker! ]::

Remember, the sun is symbolized by the lowercase letter `o`!

~~~{.Translate .FOL system="LogicBookPD" options="exam" submission="none"}
PSP8.10 (Ax)( (Px /\ Lxm) -> Oxo ) : All planets larger than Mars orbit the sun.
~~~

[note that the following is deemed `ungrammatical’: can’t have parentheses around atomic wffs of QL
(Ax)((Px & Lxm) > (Oxo))
]::

[note the need for OR in the antecedent for the following, since we're really saying "Everything that is a planet orbits the sun, and everything that is an asteroid orbits the sun". I should check that it will accept this conjunction of for-all claims as well ]::


[Note that you can put space after (Ax) or remove space with no problems. But you do need the outer paren around the sentence you are quantifying over, so Carnap will NOT accept the following: 
(Ax)    Ax -> ~(Lxm \/ Tx) ]::

- Let **$Tx$** = x has an atmosphere 

~~~{.Translate .FOL system="LogicBookPD" options="exam" submission="none"}
PSP8.11 (Ax) (Ax -> ~(Lxm \/ Tx)) : No asteroid is larger than Mars or has an atmosphere.
~~~

[equivalent solN that i found more natural to work through: ~(Ex)(Ax & (Lxm v Tx)). i.e. it's not the case that there is something that is an asteroid and is larger than mars or has an atmospher]::

Same symbolization key, repeated for your convenience:

- UD: celestial objects in the solar system, including the following constants (the sun is `o`!):
- $o =$  the sun; $m=$  Mars; $j=$ Jupiter   
- $d=$  Deimos; $p=$  Phobos
- $l=$  Sila; $n=$  Nunam


Predicates:
 **$Ax$** = $x$ is an asteroid;	 **$Mx$** = $x$ is a moon;	**$Px$** =  $x$ is a planet;	**$Oxy$** =    $x$ orbits $y$;	**$Lxy$**  =   $x$ is larger than $y$

[Note that $s$ is a variable in FOL, so neither the Sun nor Sila can be
symbolized by $s$. Josh: this just seems like a bad feature of their notation! LogicBookPD treats only x, y, z as variables I think. maybe w. ]::


~~~{.Translate .FOL system="LogicBookPD" options="exam" submission="none"}
PSP8.12 (Ax)((Mx /\ Oxm) -> Lmx) : All moons of Mars are smaller than Mars.
~~~

~~~{.Translate .FOL system="LogicBookPD" options="exam" submission="none"}
PSP8.13 ~(Ax)((Mx /\ Lxd) -> (Oxm \/ Oxj)) : Not every moon larger than Deimos orbits Mars or Jupiter.
~~~

[  the next problem has auto-checking enabled: ]::

~~~{.Translate .FOL system="LogicBookPD" options="exam" submission="none"}
PSP8.14 (Ax) (Ax ->(Oxo \/ Llx)) : Every asteroid orbits the sun, unless it is smaller than Sila.
~~~

[Note that carnap accepts the following, which I find more intuitive: (Ax)((Ax > Oxo) v Llx)]:: 


~~~{.Translate .FOL system="LogicBookPD" options="exam" submission="none"}
PSP8.15 (Ex) (Ax /\ (~Lxp & ~Lpx)) : Some asteroids are the same size as Phobos.
~~~

Remember, the schema "x has an atmosphere" is symbolized as "**$Tx$**".

~~~{.Translate .FOL system="LogicBookPD" options="exam" submission="none"}
PSP8.16 (Ax)((Px /\ Lxm) <-> Tx) : All and only planets larger than Mars have an atmosphere.
~~~

~~~{.Translate .FOL system="LogicBookPD" options="exam" submission="none"}
PSP8.17 (Ex)(Mx & Oxj) -> (Ex)(Mx & (Oxj & Tx)) : If Jupiter has a moon, it has a moon with an atmosphere.
~~~

- UD: celestial objects in the solar system, including the following constants (the sun is `o`!):
- $o =$  the sun; $m=$  Mars; $j=$ Jupiter   
- $d=$  Deimos; $p=$  Phobos
- $l=$  Sila; $n=$  Nunam


Predicates:
 **$Ax$** = $x$ is an asteroid;	 **$Mx$** = $x$ is a moon;	**$Px$** =  $x$ is a planet;	**$Oxy$** =    $x$ orbits $y$;	**$Lxy$**  =   $x$ is larger than $y$



# Problem Set \#10 QND (Practice Mode) 


Mandatory syntax for our QND System:

- a quantifier and its bound variable must be in parentheses: e.g. `(Ax)` for (∀x). 

- a predicate (or relation) and its variable(s) must NOT be in parentheses: e.g. Fx, Bxa (these are atomic wffs of QL)

- Constants run from a to v. Variables include w, x, y, z. 


We'll start off with a short and simple one, partly to refresh you on Natural Deduction: 

[from JTapp PS10.1a, Winter 2019 ]::

~~~{.ProofChecker .LogicBookPD options="tabindent guides fonts resize render" submission="none"} 
PSP10.1 Gb > Fb, Gb :|-: (Ex) (Fx \/ Hx)
~~~

And now let's work on that tricky Existential Elimination (EE) rule, which you'll need to have down pat! Remember that you can always copy/paste the starting assumptions (don't forget to write `:Pr` after each one!). But it's also good practice to write these out yourself, to make sure you understand the proper syntax to use. 

[from JTapp PS10.1b, Winter 2019 ]::

~~~{.ProofChecker .LogicBookPD options="tabindent guides fonts resize render" submission="none"} 
PSP10.2 (Ex) (Fx & Gx) :|-: (Ew) Gw & (Ey) Fy
~~~

More practice with Existential Elimination (think about how to build the conclusion you want). 

[We turn off Mr. Nice-nap for this, so no green checkmark!]:: 


[zach PSL7.2 ]::

~~~{.ProofChecker .LogicBookPD options="tabindent guides fonts resize render exam" submission="none"} 
PSP10.3 (Ex) (Fx -> B) :|-: (Ax) Fx -> B
~~~

The following will help you get comfortable with ForAll Elimination (AE). Typically the trick here is to take-off the ∀'s and then build up to what you want to build. To ultimately apply ForAll Intro (AI), you'll need to build the inside first. For that, don't forget about our beloved rules from SND (and remember that Biconditional Intro and Elimination require typing `<->` for the biconditional symbol $\equiv$, in the justification column)! 

[from JTapp PS10.1c, Winter 2019 ]::

~~~{.ProofChecker .LogicBookPD options="tabindent guides fonts resize render" submission="none"} 
PSP10.4 (Ax) (Fx <> Gx), (Ax) (Gx <> Hx) :|-: (Ax) (Fx <> Hx)
~~~

Let's get some more relatively unsupervised practice, with one that's not too long!

[from JTapp PS10.1d, Winter 2019 ]::

~~~{.ProofChecker .LogicBookPD options="tabindent guides fonts resize render exam" submission="none"} 
PSP10.5 (Ax) Fx, (Ez) Bzz :|-: (Ey) (Byy & Fy)
~~~

So we're now going to put together a bunch of pieces! It's a long one, but the proof idea is pretty straightforward (and you have a lot to work with!). Hint: begin with Existential Elimination or things could get messy. Be really careful about counting tabs to keep your subproofs straight. At one point you'll probably go three-levels deep. Strive for the green check mark! 

[zach PSL7.1 ]::

~~~{.ProofChecker .LogicBookPD options="tabindent guides fonts resize render exam" submission="none"} 
PSP10.6 (Ay) (Fy \/ Gy), (Ax) (Fx -> Hx), (Ex) ~Hx :|-: (Ez) Gz
~~~


Whew, let's do a nice chill one now haha! 

[from JTapp PS10.1e, Winter 2019 ]::

~~~{.ProofChecker .LogicBookPD options="tabindent guides fonts resize render exam" submission="none"} 
PSP10.7 (Ax) (Fx <> Lx), (Ey) Fy :|-: (Ex) Lx
~~~

The following one is conceptually a bit tricky! Remember that when in doubt, indirect proof it out! (Also, think about what these two sentences mean)

[zach PSL7.3]::

~~~{.ProofChecker .LogicBookPD options="tabindent guides fonts resize render exam" submission="none"} 
PSP10.8 (Ax) (Px -> ~Qx) :|-: ~(Ex) (Px /\ Qx)
~~~

Note that both sentences mean: "No P is a Q". We'll show that they mean the same thing by proving that they both syntactically entail each other (which by the Soundness of our natural deduction system, proves they are semantically equivalent). We've already done one direction, so let's do the other! 

Hints: figuring out how to start this one is pretty tough! Indeed, I thought about quitting the first time I tried. The trick is to think about what you need to build, and just start building it. Work from the inside-out. If you're like me, you'll encounter some pleasing notes of Existential Introduction (EI) and Universal Introduction (AI). Option of getting a green checkmark


[zach PSL7.4 ]::

~~~{.ProofChecker .LogicBookPD options="tabindent guides fonts resize render exam" submission="none"} 
PSP10.9 ~(Ex) (Px /\ Qx) :|-: (Ax) (Px > ~Qx)
~~~

Let's do one direction of De Morgan's rule for Quantifer Conversion, showing that from (∃x)Bx we can prove ~(∀x)~Bx. But we'll do this in terms of constructing a conditional: 

Make sure you still tab into a subproof! Otherwise Carnap will be upset. 


[zach PSL7.5 ]::

~~~{.ProofChecker .LogicBookPD options="tabindent guides fonts resize render exam" submission="none"} 
PSP10.10 :|-: (Ex) Bx -> ~(Ax) ~Bx
~~~

For funsies, you can do the other direction if you want, but it won't be graded! You'll have to use indirect proof, and again build up something you'll need for the contradiction. You can do it in 10 lines! 

~~~{.ProofChecker .LogicBookPD options="tabindent guides fonts resize render" submission="none"} 
PSP10.11 :|-: ~(Ax) ~Bx -> (Ex) Bx
~~~

[zach PSL7.6 ]::




# Problem Set \#11 Identity (Practice Mode) 


To enter logical symbols logically on the logical keyboard, use:

------------------------- -----------------------------
not ~                     `-`, `~`
and &                       `&`, `/\`
or $\lor$                       `v`, `\/`
if then $\supset$                  `>`, `->`
if and only if ≡           `<>`, `<->`
universal quantifier ∀    `A`
existential quantifier ∃  `E` 
identity =                `=`
x not identical to y                `~x=y`
------------------------- -----------------------------

<br />


- MEGA NOTE **READ THIS PLZ**: to say that one variable does NOT equal another, type the following: `~x = y` or `~x=y`. I can't find a not-equal symbol that works. Sorry!

- Some of these require long disjunctions or conjunctions. *Carnap*
  will accept disjunctions or conjunctions of more than two
  disjuncts/conjuncts, e.g., it treats `(A & B & C)` as if you had
  typed `((A & B) & C)`.

[As always, you only get to submit once, and you MUST click `Submit` in order for your answer to be recorded.]::


<br />

###Problems 1 through 2! 

- **Universe of Discourse** (UD): all currently living people (YOLO!), including in particular `**b**', denoting Barbara (Streisand) 


**Predicate schemas**:

- $Ey$:	$y$ will travel to Europe.   
- $Py$:	$y$ will travel to Portugal.         
- $Hx$:	$x$ will stay home (lame!).     
- $Vxy$:	$x$ will visit $y$.         

<br />

[note that Carnap also accepts the following, since quantifiers commute across a conditional when in the consequent: 
(Ax)(Ey)((Ex > (Vxb &(~Vyb & ~y=x))))   ]::

[JTapp PS8 3a]::

~~~{.Translate .FOL system="LogicBookPDE" submission="none"}
PSP11.1 (Ax)(Ex > (Vxb & (Ey)(~Vyb & ~y=x))) : Any person will travel to Europe only if that person visits Barbara and a different person doesn't visit Barbara.
~~~

[easy one! so include. can also have it in the form (Ax)(Px > (Ey)(Ez)((~Ey & ~Ez & ~x=y & ~x=z) )). Since the quantifiers commute across conditional when in the CONSEQUENT. 
So carnap also accepts the following:
(Ax)(Px > (Ey)(Ez)((~Ey & ~Ez & ~x=y & ~x=z)) )  ]::

[JTapp PS8 3d]::

~~~{.Translate .FOL system="LogicBookPDE" options="exam" submission="none"}
PSP11.2 (Ax)(Ey)(Ez)(Px > (~Ey & ~Ez & ~x=y & ~x=z) ), (Ax)(Ey)(Ez)(Px > (~Ey & ~Ez & ~x=y & ~x=z &~y=z) ) : For everyone who visits Portugal, there are two other people that don't visit Europe.
~~~



###The rest of the problems (12 total)!  



**Solar system of Discourse**: celestial objects in the solar system

------------- ----------------------- ------------- --------
**$Ax$**:         $x$ is an asteroid.      **$e$**:           Earth
**$Mx$**:         $x$ is a moon.            **$m$**:           Mars
**$Px$**:         $x$ is a planet.         **$j$**:                Jupiter
**$Oxy$**:       $x$ orbits $y$.	       **$i$**:           Io
**$Tx$**:     $x$ has an atmosphere.
**$Lxy$**:     $x$ is larger than $y$.
------------- ----------------------- ------------- --------

Symbolize the following sentences using the above symbolization key, repeated at points below for your viewing convenience. 


[Zach PS9.1 ]::

~~~{.Translate .FOL system="LogicBookPDE" submission="none"}
PSP11.3 (Ax)(~x=m -> Tx) : Every celestial body other than Mars has an atmosphere.
~~~

[Zach PS9.2 ]::

~~~{.Translate .FOL system="LogicBookPDE" options="exam" submission="none"}
PSP11.4 (Ex)(Ey)(~x=y /\ Ax /\ Ay /\ Oxy)  : Some asteroid orbits another.
~~~

[Zach PS9.3 ]::

~~~{.Translate .FOL system="LogicBookPDE" options="exam" submission="none"}
PSP11.5 (Ex)(Px /\ (Ay)((Py /\ ~x=y) -> Lxy)) : Some planet is larger than every other planet.
~~~

(Hint for the next one: Remember that "except for" leaves open whether Io has an atmosphere; the sentence does not entail that Io necessarily lacks an atmosphere)

[Zach PS9.4 ]::

~~~{.Translate .FOL system="LogicBookPDE" options="exam" submission="none"}
PSP11.6 (Ax)((Mx /\ Oxj /\ ~x = i) -> Tx), (Ax)((Mx /\ Oxj /\ ~x = i) -> Tx) /\ Mi /\ Oij : Except for Io, all of Jupiter's moons have an atmosphere.
~~~


**UD**: celestial objects in the solar system

------------- ----------------------- ------------- --------
**$Ax$**:         $x$ is an asteroid.      **$e$**:           Earth
**$Mx$**:         $x$ is a moon.            **$m$**:           Mars
**$Px$**:         $x$ is a planet.         **$j$**:                Jupiter
**$Oxy$**:       $x$ orbits $y$.	       **$i$**:           Io
**$Tx$**:     $x$ has an atmosphere.
**$Lxy$**:     $x$ is larger than $y$.
------------- ----------------------- ------------- --------

## "Only"

<br />

[Zach PS9.5 ]::

~~~{.Translate .FOL system="LogicBookPDE" options="exam" submission="none"}
PSP11.7 Tm /\ Te /\ (Ax)(Tx -> (x=m \/ x=e)), (Ax)(Tx <-> (x=m \/ x=e)) : Only Mars and Earth have an atmosphere.
~~~

- For a future problem(set): "Only that which is truly yourself has the power to heal." --Carl Jung

[seems like comma between sentences allows you to include two logically distinct answers as correct; so that's neat! way to assign problems where there are ambiguities]::



## Uniqueness

<br />

[Zach PS9.7 ]::

~~~{.Translate .FOL system="LogicBookPDE" submission="none"}
PSP11.8 (Ex)(Mx /\ Oxe /\ (Ay)((My /\ Oye) -> y=x)), (Ex)(Ay)((My /\ Oye) <-> y=x) : Earth has only one moon.
~~~

- Or as the philosophers say: "we are all disturbed in our own special way."

## Numerical quantification 

**UD**: celestial objects in the solar system

------------- ----------------------- ------------- --------
**$Ax$**:         $x$ is an asteroid.      **$e$**:           Earth
**$Mx$**:         $x$ is a moon.            **$m$**:           Mars
**$Px$**:         $x$ is a planet.         **$j$**:                Jupiter
**$Oxy$**:       $x$ orbits $y$.	       **$i$**:           Io
**$Tx$**:     $x$ has an atmosphere.
**$Lxy$**:     $x$ is larger than $y$.
------------- ----------------------- ------------- --------

- Remember that "two moons" means "at least two", not "exactly two". (Remember that someone is gonna ask you this 10 years from now. Hint: it's not gonna be me!)

[ - No auto-checker for the rest! ]::


[Zach PS9.9 ]::

~~~{.Translate .FOL system="LogicBookPDE" options="exam" submission="none"}
PSP11.9 (Ex)(Ey)(~x=y /\ Mx /\ Oxm /\ My /\ Oym) : Mars has two moons.
~~~

[Zach PS9.11]::

~~~{.Translate .FOL system="LogicBookPDE" options="exam" submission="none"}
PSP11.10 ~(Ex)(Ey)(Ez)(Mx /\ Oxm /\ My /\ Oym /\ Mz /\ Ozm /\ ~x=y /\ ~x=z /\ ~y=z) : Mars has at most two moons.
~~~

[Zach PS9.12 ]::

~~~{.Translate .FOL system="LogicBookPDE" options="exam" submission="none"}
PSP11.11 (Ex)(Ey)(~x=y /\ Mx /\ Tx /\ My /\ Ty /\ (Az)((Mz /\ Tz) -> (z = x \/ z = y))), (Ex)(Ey)(~x=y /\ (Az)((Mz /\ Tz) <-> (z = x \/ z = y))) : There are exactly two moons with an atmosphere.
~~~

Remember that "x has an atmosphere" is `Tx` not `Ax`.



## Definite descriptions

- Remember that **singular** possessives like "Earth's moon" can be
interpreted like the definite description "the moon of Earth."  But
**plural** possessives like "Mars's moon**s**" aren't definite
descriptions.


[Zach PS9.14]::

~~~{.Translate .FOL system="LogicBookPDE" options="exam" submission="none"}
PSP11.12 (Ex)(((Mx /\ Oxe) /\ (Ay)((My /\ Oye) ->x=y)) /\ (Az)((Mz /\ Ozm)-> Lxz)),(Ex)(Ay) ( ( (My /\ Oye) <->x=y) /\ (Az) ( (Mz /\ Ozm)-> Lxz) ) : Earth's moon is larger than Mars's moons.
~~~


**UD**: celestial objects in the solar system

------------- ----------------------- ------------- --------
**$Ax$**:         $x$ is an asteroid.      **$e$**:           Earth
**$Mx$**:         $x$ is a moon.            **$m$**:           Mars
**$Px$**:         $x$ is a planet.         **$j$**:                Jupiter
**$Oxy$**:       $x$ orbits $y$.	       **$i$**:           Io
**$Tx$**:     $x$ has an atmosphere.
**$Lxy$**:     $x$ is larger than $y$.
------------- ----------------------- ------------- --------

<br />


#####Pro-tip: reflect daily on at least one thing you're grateful for! I'm grateful for *Carnap*!




