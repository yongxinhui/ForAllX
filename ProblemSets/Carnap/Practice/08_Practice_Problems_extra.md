---
js: https://carnap.io/shared/rzach@ucalgary.ca/dark-mode.js
css: 
  - https://carnap.io/shared/rzach@ucalgary.ca/dark-mode.css
  - https://carnap.io/shared/rzach@ucalgary.ca/wideinput.css
---


[problems for elsewhere, e.g. i don't particularly like them and so am removing them from PS 8]::

[i think the following is a hard one to start out on!

options="exam nocheck"

]::

## Some Practice Problems for Week 8 Lecture!

<br />

<!---

These are problems from Zach PS 5 not included in my PS8 for 24.241

previously titled this doc `week_8_extra_problems' 

Use these as in-class problems, alongside working through some of the harder PS8 problems (e.g. at the end of the Pset)

Description for students: some in-class PRACTICE problems modeled on PS 8! Symbolization/Translation in Quantifier Logic (aka First Order Logic aka Predicate Logic).

Comments to self can be entered with [blah blah]:: or [](blah blah). Former needs an empty space before the line!  

-->

Symbolization key (same one as for PS8 Problems 8-17)

- Let the domain be the celestial objects in the solar system:
- $o =$  the sun; $m=$  Mars; $j=$ Jupiter   
- $d=$  Deimos; $p=$  Phobos
- $l=$  Sila; $n=$  Nunam


Predicates:
 **$Ax$** = $x$ is an asteroid;	 **$Mx$** = $x$ is a moon;	**$Px$** =  $x$ is a planet;	**$Oxy$** =    $x$ orbits $y$;	**$Lxy$**  =   $x$ is larger than $y$; 
**$Tx$** = x has an atmosphere 

- a "sneaky or" case: 

~~~{.Translate .FOL system="LogicBookPD" submission="none"}
PP8.18 (Ax)((Px \/ Ax) -> Oxo) : All planets and asteroids orbit the sun.
~~~

~~~{.Translate .FOL system="LogicBookPD" submission="none"}
PP8.19 ~(Mp & Opm) & ~(Md & Odm) : Neither Phobos nor Deimos is a moon orbiting Mars.
~~~

~~~{.Translate .FOL system="LogicBookPD" submission="none"}
PP8.20 (Al /\ An) /\ (Oln /\ Onl) : Sila and Nunam are asteroids orbiting each other.
~~~


~~~{.Translate .FOL system="LogicBookPD" submission="none"}
PP8.21 (Ax)((Ax /\ Lxl) -> ~Lxp) : No asteroid larger than Sila is larger than Phobos.
~~~


~~~{.Translate .FOL system="LogicBookPD" submission="none"}
PP8.22 (Ax)((Mx /\ Oxj) -> Lxn) : If a moon orbits Jupiter, it is larger than Nunam.
~~~

- an ``only case" (tricky conditional!)

~~~{.Translate .FOL system="LogicBookPD" submission="none"}
PP8.23 (Ax)(Tx -> (Px \/ Mx)) : Only planets and moons have an atmosphere.
~~~

- UD: celestial objects in the solar system, including the following constants (the sun is `o`!):
- $o =$  the sun; $m=$  Mars; $j=$ Jupiter   
- $d=$  Deimos; $p=$  Phobos
- $l=$  Sila; $n=$  Nunam


Predicates:
 **$Ax$** = $x$ is an asteroid;	 **$Mx$** = $x$ is a moon;	**$Px$** =  $x$ is a planet;	**$Oxy$** =    $x$ orbits $y$;	**$Lxy$**  =   $x$ is larger than $y$; 
**$Tx$** = x has an atmosphere 
