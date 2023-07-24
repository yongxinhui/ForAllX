---
js: https://carnap.io/shared/rzach@ucalgary.ca/dark-mode.js
css: 
  - https://carnap.io/shared/rzach@ucalgary.ca/dark-mode.css
  - https://carnap.io/shared/rzach@ucalgary.ca/wideinput.css
---


[problems mainly from Zach PS9 that i removed to shorten PS 11]::

## Some PRACTICE Problems for Week 11 Lecture!

<br />

<!---

These are problems from Zach PS 9 not included in my PS11 for 24.241; and first two from JTapp PS8, which i think were harder/more ambiguous 

Use these as in-class problems, alongside working through some of the harder PS11 problems (e.g. at the end of the Pset)

Description for students: some in-class PRACTICE problems modeled on PS 11! Symbolization/Translation in Quantifier Logic with Identity 

Comments to self can be entered with [blah blah]:: or [](blah blah). Former needs an empty space before the line!  

-->

To enter logical symbols on the keyboard, use:

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



[DON'T INCLUDE THIS ONE on Pset; too hard i think! some ambiguity about whether the `if one person' is a universal or an existential...seems like i got the first universal but treated the second person as an exisential, which is WRONG. so this one is TRICKY! so maybe allow them to submit even if not correct]::

[note that the following two sentences are allegedly not equivalent, at least not in carnap, which is interesting...:
(Ax)(Px & (Ey)( (~y=x & ~Ey) > (~Vxy & ~Vyx)))
(Ax)(Ey) ( (Px & ~Ey & ~x=y) > (~Vxy & ~Vyx ) )

But Carnap DOES accept the following in this case:
(Ax)(Ey)(Px&((~x=y & ~Ey) > (~Vxy & ~Vyx)))
so I think it has to do w/ form P & (Q >R ) vs. (P&Q)>R

so really I ought to have entered the following from the start:
(Ax)( (Px & (Ey)( (~y=x & ~Ey)) > (~Vxy & ~Vyx) )
but this is ungrammatical: so seems IMPOSSIBLE to have the (Ey) not out front, since otherwise you close of the scope of (Ey) as you go to close off the antecedent...
]::

- **Universe of Discourse** (UD): all currently living people (YOLO!), including in particular `**b**', denoting Barbara (Streisand) 


**Predicate schemas**:

- $Ey$:	$y$ will travel to Europe.   
- $Py$:	$y$ will travel to Portugal.         
- $Hx$:	$x$ will stay home (lame!).     
- $Vxy$:	$x$ will visit $y$.        

[JTapp PS8 3b]::

~~~{.Translate .FOL system="LogicBookPDE" submission="none"}
PP11.1 (Ax)(Ay)( (Px &  (~y=x & ~Ey))  > (~Vxy & ~Vyx) ) : If one person travels to Portugal and a different person doesn't travel to Europe, then neither of those people will visit the other.
~~~

[some ambiguity about whether this universals or existentials! but i got it right; they are universals!]::

[JTapp PS8 3c]::

~~~{.Translate .FOL system="LogicBookPDE" submission="none"}
PP11.2 (Ax)(Ay)( (Vxy & ~x=y)>( (Ex & Ey) \/ (Hx & Hy) ) ) : If one person visits someone else, then either both travel to Europe or both stay home.
~~~


**Solar system of Discourse**: celestial objects in the solar system

------------- ----------------------- ------------- --------
**$Ax$**:         $x$ is an asteroid.      **$e$**:           Earth
**$Mx$**:         $x$ is a moon.            **$m$**:           Mars
**$Px$**:         $x$ is a planet.         **$j$**:                Jupiter
**$Oxy$**:       $x$ orbits $y$.	       **$i$**:           Io
**$Tx$**:     $x$ has an atmosphere.
**$Lxy$**:     $x$ is larger than $y$.
------------- ----------------------- ------------- --------

<br />

## "Only"

[seems like comma between sentences allows you to include two logically distinct answers as correct; so that's neat! way to assign problems where there are ambiguities or where Carnap logic engine lets us down]::

- Remember that singular `only blah' statements say two things: 1) nothing else besides blah has the property in question and 2) blah has the property in question. 
- Rather than an `$\&$', you can use a biconditional 

[Following claim I now think is false! I think these sentences actually ARE equivalent, but Carnap logic engine just let's us down: 
- (Technically these two expressions are not quantificationally equivalent, but they are both equally legit ways of symbolizing these `only' claims)]::

~~~{.Translate .FOL system="LogicBookPDE" submission="none"}
PP11.3a (Ax)(Hx > x = g)&Hg, (Ax)(Hx <-> x=g): Only Greta is a hero.
~~~

[Zach PS9.6]::

~~~{.Translate .FOL system="LogicBookPDE" submission="none"}
PP11.3b (Ex)(Mx /\ Oxm) /\ (Ax)(Ey)((My /\ Oyx) -> x=m), (Ax)(Ey)((My /\ Oyx) <-> x=m) : Only Mars has a moon.
~~~


<!---

In principle, one should be able to construct a model showing that $(\forall x)(Hx \supset x = g) \& Hg$ is logically inequivalent to $(\forall x)(Hx \equiv x=g)$:

~~~{.CounterModeler .Simple counterexample-to="equivalence" system="LogicBookPDE" submission="none"}
PP11.3c (Ax)(Hx > x = g)&Hg, (Ax)(Hx <-> x=g)
~~~

To make the first one false, suffices to have g not be an H. Then when we sub in g for Hx in second one, we get F <> T, which is false. So making the first one false in this way makes the second one false as well!

Other option is to make (Ax)(Hx > x = g) false. To do this, we need something that is an H but is not g. Call this thing c. Then Hc is true but c=g is false, so again the second formula is false. 

So it seems that anyway of making the first formula false makes the second false as well. 

So let's see if we can make the first true while the second is false. So ask what it means to make the second one false: we need at least one element c s.t. Hc has a diff truth-value than c=g. 
So if Hc is true, then we need c not equal g. but then there's something that is an H that is not a g, so that makes the first sentence false. 

Alternatively, if Hc is false, then we need c=g. But then Hg would also be false, making the first sentence false! so i think these are in fact equivalent but Carnap logic engine just lets us down I guess!


-->

## Uniqueness

The next one is a bit tricky. As you try to come up with a solution, think about
how to get your symbolization to preclude the following situations:

- Jupiter is a star larger than all planets.
- Saturn and Jupiter are both planets and the same size.

[Zach PS9.8]::

~~~{.Translate .FOL system="LogicBookPDE" submission="none"}
PP11.4 (Ax)((Px /\ ~x=j) -> Ljx) /\ Pj,(Ex)(Ay) ( ( (Py/\~y=x)->Lxy) /\(Px/\x=j) ) : Jupiter is largest among all planets.
~~~

[- (See the note after the next problem for a probably unnecessary clarificatory remark)]::

## Numerical quantification (aka "eeny, meeny, miny, moe")

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

[Zach PS9.10]::

~~~{.Translate .FOL system="LogicBookPDE" submission="none"}
PP11.5 ~(Ex)(Mx /\ (Ey)(Ez)(Py /\ Pz /\ ~z=y /\ Oxy /\ Oxz)), ~(Ex)(Ey)(Ez)(Mx & Oxy & Oxz &Py &Pz & ~y=z & ~x=y & ~x=z) : No moon orbits two planets.
~~~

"No moon orbits two planets" is actually ambiguous. Chances are you're
interpreting it the right way: there are no moons which orbit two
planets simultaneously.  The other reading is that there are two
planets which don't have moons. We want the first reading, not the second.


## Definite descriptions (it's defs something)

[ Don't forget to say that Earth's moon is distinct from Io! & ~i=x  But then this breaks symmetry with problem 11.12. so maybe don't do this part ]::

~~~{.Translate .FOL system="LogicBookPDE" submission="none"}
PP11.6a (Ex)(Mx & Oxe & Lix & (Az)(( Mz & Oze)> x=z)), (Ex)(Ay)((My /\ Oye & Liy) <-> y=x), (Ex)(Ay)( ((My /\ Oye & Liy) <-> y=x) & Lix):  The moon of Earth is smaller than Io.  
~~~

The following problem is pretty tricky! 

[Zach PS9.14. i don't think the following should be a legit answer, since doesn't have form of a definite description
(Ex)(Px /\ (Ay)((Py /\ ~x=y) -> Lyx) /\ ~Tx) This just says that at least one smallest planet doesn't have an atmosophere]::

[Adding the following solN inspired by Manny's proof idea, 
(Ex)(Px & (Ay)((~x=y & Py) > Lyx) & ~(Ez)( ~x=z & Pz & (Aw)((~z=w & Pw) > Lwz)) & ~Tx)
]::

~~~{.Translate .FOL system="LogicBookPDE" submission="none"}
PP11.6b (Ex)(~Tx /\ (Ay)(( Py /\ (Az)((~y=z /\ Pz) -> Lzy) ) <-> x=y)), (Ex)(~Tx /\ Px /\ (Ay)(( Py /\ (Az)((~y=z /\ Pz) -> Lzy) ) <-> x=y)), (Ex)(Px &~Tx & (Ay) ( ((Py & ~y=x) > Lyx)  & (Az)( (Pz & Lyz & ~y=z) > x=z))), (Ex)(Px & (Ay)((~x=y & Py) > Lyx) & ~(Ez)( ~x=z & Pz & (Aw)((~z=w & Pw) > Lwz)) & ~Tx): The smallest planet has no atmosphere.
~~~

## Neither (of us are happy to solve these logic probs probs!)

[Zach PS9.15]::

~~~{.Translate .FOL system="LogicBookPDE" submission="none"}
PP11.7 (Ex)(Ey)(((~x=y /\ ((Mx /\ Oxm) /\ (My /\ Oym))) /\ (Az)((Mz /\ Ozm) -> (z = x \/ z = y))) /\ (~Lxe /\ ~Lye)), (Ex)(Ey)( ( ~x=y /\ (Az)((Mz /\ Ozm) <-> (z = x \/ z = y)) ) /\ (~Lxe /\ ~Lye)) : Neither moon of Mars is larger than Earth.
~~~

[easier way of writing solution:
(Ex)(Ey)(Mx & My & Oxm & Oym & ~y=x & ~Lxe & ~Lye & (Az)( (Mz & Ozm)>(z=x v z=y))) ]::

~~~{.Translate .FOL system="LogicBookPDE" submission="none"}
PP11.8 (Ex)(Ey)(((~x=y /\ ((Mx /\ Oxm) /\ (My /\ Oym))) /\ (Az)((Mz /\ Ozm) -> (z = x \/ z = y))) /\ (~Tx /\ ~Ty)), (Ex)(Ey)( ( ~x=y /\ (Az)((Mz /\ Ozm) <-> (z = x \/ z = y)) ) /\ (~Tx /\ ~Ty)) : Neither moon of Mars has an atmosphere.
~~~

[(Ex)(Ey)(Mx & My & Oxm & Oym & ~y=x & ~Tx & ~Ty & (Az)( (Mz & Ozm)>(z=x v z=y)))]::

**UD**: celestial objects in the solar system

------------- ----------------------- ------------- --------
**$Ax$**:         $x$ is an asteroid.      **$e$**:           Earth
**$Mx$**:         $x$ is a moon.            **$m$**:           Mars
**$Px$**:         $x$ is a planet.         **$j$**:                Jupiter
**$Oxy$**:       $x$ orbits $y$.	       **$i$**:           Io
**$Tx$**:     $x$ has an atmosphere.
**$Lxy$**:     $x$ is larger than $y$.
------------- ----------------------- ------------- --------



###Miscellaneous problems






























