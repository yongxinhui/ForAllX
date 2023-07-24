---
title: 'Practice Problems: Proofs for QL'
author: Richard Zach, modified by Josh Hunt for Logic Book system
js: https://carnap.io/shared/rzach@ucalgary.ca/dark-mode.js
css: https://carnap.io/shared/rzach@ucalgary.ca/dark-mode.css
---

Practice Problems: Proofs for QL
================================

The following are some practice problems on natural deduction proofs
for QL; they cover Chapter 10 of _forall x: MITtens it's gettin' cold_.

When writing sentences of SL, remember you can use the following ways
to enter connectives that are easier to do with a keyboard:

------------------------- -----------------------------
not ~                     `-`, `~`
and &                       `&`, `/\`
or $\lor$                       `v`, `\/`
if then $\supset$                  `>`, `->`
if and only if ≡           `<>`, `<->`
universal quantifier ∀    `A`
existential quantifier ∃  `E` 
------------------------- -----------------------------

<br />

[Updated on 12-13-22 with three examples at the very bottom, the penultimate one could be a good exam problem. final one could be a good tough but short HW problem]::


## The rules for $\forall$

To justify a sentence of the form $(\forall
\mathscr{x})\,\mathscr{A}\mathscr{x}$, you need
$\mathscr{A}\mathscr{c}$, say with line number $m$. Then write as
justification ":$m$ AI" (replacing $m$ with the actual line number, of
course). The name $\mathscr{c}$ _cannot_ occur in $(\forall
\mathscr{x})\,\mathscr{A}\mathscr{x}$ or in any premise or assumption
open on line $m$.

You can use $(\forall \mathscr{x})\,\mathscr{A}\mathscr{x}$ to justify
$\mathscr{A}\mathscr{a}$ (for any name $\mathscr{a}$, even if it
appears in a premise or open assumption). If you have justified
$(\forall \mathscr{x})\,\mathscr{A}\mathscr{x}$ on line number $n$,
write ": $n$ AE" next to $\mathscr{A}\mathscr{a}$ as the
justification.

Here's a simple proof that shows that you can rename variables. Fill
in the missing justifications:

~~~{.ProofChecker .LogicBookPD options="resize guides render tabindent fonts" init="now" submission="none" points=0} 
PP10.1 (Ax) Bx :|-: (Ay) By
|(Ax) Bx :PR
|Bc
|(Ay) By
~~~

You can combine the rules for $\forall$ with the rules for the
connectives of SL.

~~~{.ProofChecker .LogicBookPD options="resize guides render tabindent fonts" init="now" submission="none" points=0} 
PP10.2 (Ax)(Hx -> Axg), (Ax)(Axg -> Cx) :|-: (Ax)(Hx -> Cx)
|(Ax)(Hx > Axg) :PR
|(Ax)(Axg > Cx) :PR
|?
|(Ax)(Hx > Cx)
~~~

~~~{.ProofChecker .LogicBookPD options="resize guides render tabindent fonts" init="now" submission="none" points=0} 
PP10.3 (Ax) Ax \/ (Ax) Bx :|-: (Ax) (Ax \/ Bx)
~~~

## The rules for $\exists$

To justify a sentence of the form $(\exists
\mathscr{x})\,\mathscr{A}\mathscr{x}$, you need
$\mathscr{A}\mathscr{a}$, say with line number $m$. Then write as
justification ": $m$ EI" (replacing $m$ with the actual line number, of
course). The name $\mathscr{c}$ cannot appear in $(\exists
\mathscr{x})\,\mathscr{A}\mathscr{x}$ or in any premise or
assumption open on line $m$.

You can use $(\exists \mathscr{x})\,\mathscr{A}\mathscr{x}$ to justify
$\mathscr{B}$ (for any sentence $\mathscr{B}$, if you can complete a
subproof which:

- ends with $\mathscr{B}$,
- starts with $\mathscr{A}\mathscr{c}$, and where 
- $\mathscr{c}$ only occurs in that subproof, but not in
  $\mathscr{B}$. 
  
If you have $(\exists \mathscr{x})\,\mathscr{A}\mathscr{x}$ on line
number $n$, and your subproof is on lines $k$-$l$, write ":$n$,
$k$-$l$ EE" next to $\mathscr{B}$ (after the subproof) as the
justification.

Here's a simple proof that shows that you can rename variables. Fill
in the missing justifications:

~~~{.ProofChecker .LogicBookPD options="resize guides render tabindent fonts" init="now" submission="none" points=0} 
PP10.4 (Ex) Bx :|-: (Ey) By
|(Ex) Bx :PR
|   Bc :AS
|   (Ey) By
|(Ey) By
~~~

~~~{.ProofChecker .LogicBookPD options="resize guides render tabindent fonts" init="now" submission="none" points=0} 
PP10.5 (Ex)(Hx /\ Cx), (Ax)(Cx -> Axg) :|-: (Ex)(Hx /\ Axg)
|(Ex)(Hx & Cx) :PR
|(Ax)(Cx > Axg) :PR
|?
|(Ex)(Hx & Axg)
~~~

~~~{.ProofChecker .LogicBookPD options="resize guides render tabindent fonts" init="now" submission="none" points=0} 
PP10.6 (Ex) (Ax \/ Bx) :|-: (Ex) Ax \/ (Ex) Bx
~~~

# Practice problems without quantifier nesting

Here are the two examples illustrating how you can't pull a quantifier across a conditional! In other words: if you try to commute a quantifier with a conditional, then everything will go wrong. Is this the state of American Democracy today????? 

[ from Chapter 33. Try to complete them without looking at the book:]::

~~~{.ProofChecker .LogicBookPD options="resize guides render tabindent fonts" init="now" submission="none" points=0} 
PP10.7 (Ax) (Ax -> B) :|-: (Ex) Ax -> B
~~~

~~~{.ProofChecker .LogicBookPD options="resize guides render tabindent fonts" init="now" submission="none" points=0} 
PP10.8 (Ex) Ax -> B :|-: (Ax) (Ax -> B)
~~~

Here are the two examples of de Morgan quantifier conversion. 

[Again, try them before looking up the solution:]::

~~~{.ProofChecker .LogicBookPD options="resize guides render tabindent fonts" init="now" submission="none" points=0} 
PP10.9 (Ax) ~Ax :|-: ~(Ex) Ax
~~~

~~~{.ProofChecker .LogicBookPD options="resize guides render tabindent fonts" guides="fitch" init="now" submission="none" points=0} 
PP10.10 (Ex) ~Ax :|-: ~(Ax) Ax
~~~

[Here are exercises from Problem A from Chapter 33: ]:: 

~~~{.ProofChecker .LogicBookPD options="resize guides render tabindent fonts" init="now" submission="none" points=0} 
PP10.11 A -> (Ax) Bx :|-: (Ax)(A -> Bx)
~~~

~~~{.ProofChecker .LogicBookPD options="resize guides render tabindent fonts" init="now" submission="none" points=0} 
PP10.12 (Ex)(A -> Bx) :|-: A -> (Ex) Bx
~~~

~~~{.ProofChecker .LogicBookPD options="resize guides render tabindent fonts" init="now" submission="none" points=0} 
PP10.13  :|-: (Ax) (Ax /\ Bx) <-> ((Ax) Ax /\ (Ax) Bx)
~~~

~~~{.ProofChecker .LogicBookPD options="resize guides render tabindent fonts" init="now" submission="none" points=0} 
PP10.14  :|-: (Ex) (Ax \/ Bx) <-> ((Ex) Ax \/ (Ex) Bx)
~~~

~~~{.ProofChecker .LogicBookPD options="resize guides render tabindent fonts" init="now" submission="none" points=0} 
PP10.15 ~(Ax) Ax \/ B :|-: (Ex) (~Ax \/ B)
~~~

Here are some harder examples; they all require using indirect proof. When they go in, we go out! 

~~~{.ProofChecker .LogicBookPD options="resize guides render tabindent fonts" init="now" submission="none" points=0} 
PP10.16 A -> (Ex) Bx :|-: (Ex) (A -> Bx)
~~~

~~~{.ProofChecker .LogicBookPD options="resize guides render tabindent fonts" init="now" submission="none" points=0} 
PP10.17 (Ax)(Ax \/ B) :|-: (Ax) Ax \/ B
~~~

~~~{.ProofChecker .LogicBookPD options="resize guides render tabindent fonts" init="now" submission="none" points=0} 
PP10.18 ~(Ex) Ax :|-: (Ax) ~Ax
~~~

## Proofs with quantifier nesting (like birds! logic for birds!)

~~~{.ProofChecker .LogicBookPD options="resize guides render tabindent fonts" init="now" submission="none" points=0} 
PP10.19 (Ey) (Ax) Axy :|-: (Ax) (Ey) Axy
~~~

~~~{.ProofChecker .LogicBookPD options="resize guides render tabindent fonts" init="now" submission="none" points=0} 
PP10.20 (Ey)(Wy /\ (Ax)(Mx -> Syx)) :|-: (Ax)(Mx -> (Ey)(Wy /\ Syx))
~~~


###Examples in Lecture!

[For Hunt, these are a blast from the past, and he admires his creativity!]::

~~~{.ProofChecker .LogicBookPD options="resize guides render tabindent fonts" init="now" submission="none" points=0} 
PP10.21 Gb, Fb :|-: (Ex)(Fx & Gx)
~~~

~~~{.ProofChecker .LogicBookPD options="resize guides render tabindent fonts" init="now" submission="none" points=0} 
PP10.22 (Ax)((Fx <-> Gx) > Hx), (Fa <-> Ga) :|-: Ha
~~~

~~~{.ProofChecker .LogicBookPD options="resize guides render tabindent fonts" init="now" submission="none" points=0} 
PP10.23 (Az)(Dz > Szz), (Ey)Dy :|-: (Ex)(Dx & Sxx)
~~~

~~~{.ProofChecker .LogicBookPD options="resize guides render tabindent fonts" init="now" submission="none" points=0} 
PP10.24 (Ez)(Jz&Sz), (Ax)Lxx :|-: (Ex)Jx & (Ey)Sy & (Ez)Lzz
~~~

Now, the moment we've all been waiting for: show how to modify the previous proof to prove the following (which should be shorter by two lines let's hope!): 

~~~{.ProofChecker .LogicBookPD options="resize guides render tabindent fonts" init="now" submission="none" points=0} 
PP10.25 (Ez)(Jz&Sz), (Ax)Lxx :|-: (Ex)((Jx & Sx) & Lxx)
~~~

~~~{.ProofChecker .LogicBookPD options="resize guides render tabindent fonts" init="now" submission="none" points=0} 
PP10.26 (Ax)(Fx > (Gx v Hx)), (Ay)((Gy v Hy) > Fy) :|-: (Az)(Fz <-> (Gz v Hz))
~~~

I just want you all to know: be thankful we're not driving a lem(m)on (system)!!!! It could be worse. it could be much worsT. 


Thanks to Luna for suggesting the next one; an analog of PS10.8!

~~~{.ProofChecker .LogicBookPD options="resize guides render tabindent fonts" init="now" submission="none" points=0} 
PP10.27  :|-: ~(Ex)(Px & ~Px)
~~~

<!--- 
Solution for this problem: 

    (∃x)(Px & ~Px) :A/ for ~I
        Pa & ~Pa :A/ for EE
            (∃x)(Px & ~Px) :A/ for ~I
            Pa :2 &E
            ~Pa :2 &E
        ~(∃x)(Px & ~Px) :3-5 ~I
    ~(∃x)(Px & ~Px) :1, 2-6 EE
    (∃x)(Px & ~Px) :1 R
~(∃x)(Px & ~Px) :1-8 ~I

-->

~~~{.ProofChecker .LogicBookPD options="tabindent guides fonts resize render" submission="none"} 
PP10.28 (Ex) Qx, (Ax) (Qx > Px) :|-: (Ex) Px
~~~


<!--- 
Solution for this problem: 

(∃x)Qx :PR
(∀x)(Qx ⊃ Px) :PR
    Qa :A/ for EE
    Qa > Pa :2 AE
    Pa :3, 4 >E
    (Ex)Px :5 EI
(Ex)Px :1, 3-6 EE
very easy; app of EE, AE, EI 

-->



~~~{.ProofChecker .LogicBookPD options="tabindent guides fonts resize render" submission="none"} 
PP10.29 (Ex)Gx > Fa :|-: (Ax)(Gx > Fa)
~~~

<!--- 
Solution for this problem: 

(∃x)Gx ⊃ Fa :PR
    Gb :A/ for >I
    (Ex)Gx :2 EI
    Fa :1, 3 >E
Gb > Fa :2-4 >I
(Ax)(Gx > Fa) :5 AI

-->

Other direction is significantly trickier but can be done in 10 lines! (This probably requires more ingenuity than something I'd ask on a timed exam) 

~~~{.ProofChecker .LogicBookPD options="tabindent guides fonts resize render exam" submission="none"} 
PP10.30 (Ax)(Gx > Fa)  :|-: (Ex)Gx > Fa
~~~

<!--- 
Solution for this problem: 
Other direction of this one is MUCH trickier but I figured it out!!! and only 10 lines. but seems probably too clever to put on an exam. could be a good problem set problem:

(∀x)(Gx ⊃ Fa) :PR
    (Ex)Gx :A/ for >I
        Gb :A/ for EE
            (Ex)Gx :A/ for >I
            Gb > Fa : 1 AE
            Fa :3, 5 >E
        (Ex)Gx>Fa :4-6 >I
    (Ex)Gx>Fa :2, 3-7 EE
    Fa :2, 8 >E
(Ex)Gx>Fa :2-9 >I  

-->



<!---

seems that logic book systems don't let you handle identity. sigh. 

#### Proofs with identity (which we probs won't get to, but hey, maybe this course will be different in 2044?)

"Everyone loves my baby, but my baby loves no one but me"

~~~{.ProofChecker .LogicBookPDPlus options="resize guides render tabindent fonts" init="now" submission="none" points=0} 
PP10.21 (Ax) Lxb, (Ax)(Lbx -> x = i) :|-: b = i
~~~

"There is exactly one hero" has two different symbolizations. Let's
prove they are equivalent.

~~~{.ProofChecker .LogicBookPD options="resize guides render tabindent fonts" init="now" submission="none" points=0} 
PP10.22 (Ex)(Hx /\ (Ay)(Hy -> x = y)) :|-: (Ex)(Ay)(Hy <-> x=y)
~~~

~~~{.ProofChecker .LogicBookPD options="resize guides render tabindent fonts" init="now" submission="none" points=0} 
PP10.23 (Ex)(Ay)(Hy <-> x=y) :|-: (Ex)(Hx /\ (Ay)(Hy -> x = y))
~~~

If there is at least one P, and no more than one, there is exactly one.

~~~{.ProofChecker .LogicBookPD options="resize guides render tabindent fonts" init="now" submission="none" points=0} 
PP10.24 (Ex) Px, (Ax)(Ay)((Px /\ Py) -> x=y) :|-: (Ex)(Px /\ (Ay)(Py -> x=y))
~~~

-->

<!---

## A proof box for you to play in!

Want to use Carnap to construct and check an arbitrary proof? You can
do that in this "playground" proof editor. Use it for any of the
exercises from Chapter 10 in the book, for instance.
(It should accept derived rules, too.)

~~~{.Playground .ZachQLPlus2019 options="resize render tabindent fonts"} 
~~~

-->