---
js: https://carnap.io/shared/rzach@ucalgary.ca/dark-mode.js
css: 
  - https://carnap.io/shared/rzach@ucalgary.ca/dark-mode.css
  - https://carnap.io/shared/rzach@ucalgary.ca/wideinput.css
---

# Phil 24.241 Logic I
# Problem Set \#10 INSTRUCTOR'S VERSION FOOL! 

<br />

<!---

instructor's version! autochecking on for everything! 

1+1+14+1+14+13+14+20+6+16 = 100.

2+2+14+2+14+10+14+20+6+16 = 100.

This is problem set 10 for MIT Fall 2022 Logic I, 24.241. Five of the problems come from Jtapp 303 Winter 2019 PS 10. Other five come from Zach PS7, modified for LogicBookSD system (so not allowed to ever post solutions to these!)

Description for students: Problem Set 10! Natural Deduction for Quantifier Logic (System QND). Due Saturday, November 19th by 7pm Eastern. 

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


###Directions:

```{.QualitativeProblem .ShortAnswer points=0}
PSI10.0 Just in case you worked with up to two other students on these problems, please let me know their names in the text box below. Otherwise, leave this blank and don't submit! 
```

When (and only when) you are happy with your answer, click the `Submit`
button. YOU CAN ONLY SUBMIT ONCE! So be careful! *Carnap* will then acknowledge and record your submission. There are 10 questions, for a total of 100 points. 

Five lower-point problems (from 2 to 10 pts) will check your answer, giving you that coveted green check mark if you answer correctly. Higher-point problems will only check syntax and will not give a green check mark. So don't submit these until you're confident in your proof! As usual, the lower-point questions function as partial credit for the later ones, which will floor at 50% if you make an attempt and have solved the lower point problems.  

As always, you only get to submit once, and you MUST click `Submit` in order for your answer to be recorded. 

Mandatory syntax for our QND System:

- a quantifier and its bound variable must be in parentheses: e.g. `(Ax)` for (∀x). 

- a predicate (or relation) and its variable(s) must NOT be in parentheses: e.g. Fx, Bxa (these are atomic wffs of QL)

- Constants run from a to v. Variables include w, x, y, z. 

(For the "*fineprint*" directions, see a previous problem set)

####Problems! 

We'll start off with a short and simple one, partly to refresh you on Natural Deduction: 

[from JTapp PS10.1a, Winter 2019 ]::

~~~{.ProofChecker .LogicBookPD options="tabindent guides fonts resize render" points=2} 
PSI10.1 Gb > Fb, Gb :|-: (Ex) (Fx \/ Hx)
~~~

And now let's work on that tricky Existential Elimination (EE) rule, which you'll need to have down pat! Remember that you can always copy/paste the starting assumptions (don't forget to write `:Pr` after each one!). But it's also good practice to write these out yourself, to make sure you understand the proper syntax to use. 

[from JTapp PS10.1b, Winter 2019 ]::

~~~{.ProofChecker .LogicBookPD options="tabindent guides fonts resize render" points=2} 
PSI10.2 (Ex) (Fx & Gx) :|-: (Ew) Gw & (Ey) Fy
~~~

More practice with Existential Elimination (think about how to build the conclusion you want). We turn off Mr. Nice-nap for this, so no green checkmark!: 


[zach PSL7.2 ]::

~~~{.ProofChecker .LogicBookPD options="tabindent guides fonts resize render exam" points=14} 
PSI10.3 (Ex) (Fx -> B) :|-: (Ax) Fx -> B
~~~

The following will help you get comfortable with ForAll Elimination (AE). Typically the trick here is to take-off the ∀'s and then build up to what you want to build. To ultimately apply ForAll Intro (AI), you'll need to build the inside first. For that, don't forget about our beloved rules from SND (and remember that Biconditional Intro and Elimination require typing `<->` for the biconditional symbol $\equiv$, in the justification column)! 

[from JTapp PS10.1c, Winter 2019 ]::

~~~{.ProofChecker .LogicBookPD options="tabindent guides fonts resize render" points=2} 
PSI10.4 (Ax) (Fx <> Gx), (Ax) (Gx <> Hx) :|-: (Ax) (Fx <> Hx)
~~~

Let's get some more relatively unsupervised practice, with one that's not too long!

[from JTapp PS10.1d, Winter 2019 ]::

~~~{.ProofChecker .LogicBookPD options="tabindent guides fonts resize render exam" points=14} 
PSI10.5 (Ax) Fx, (Ez) Bzz :|-: (Ey) (Byy & Fy)
~~~

So we're now going to put together a bunch of pieces! It's a long one, but the proof idea is pretty straightforward (and you have a lot to work with!). Hint: begin with Existential Elimination or things could get messy. Be really careful about counting tabs to keep your subproofs straight. At one point you'll probably go three-levels deep. We'll give you step-by-step checks, but you can submit partial or incorrect work. But strive for the green check mark! 

[zach PSL7.1 ]::

~~~{.ProofChecker .LogicBookPD options="tabindent guides fonts resize render exam" points=10} 
PSI10.6 (Ay) (Fy \/ Gy), (Ax) (Fx -> Hx), (Ex) ~Hx :|-: (Ez) Gz
~~~


Whew, let's do a nice chill one now haha! 

[from JTapp PS10.1e, Winter 2019 ]::

~~~{.ProofChecker .LogicBookPD options="tabindent guides fonts resize render exam" points=14} 
PSI10.7 (Ax) (Fx <> Lx), (Ey) Fy :|-: (Ex) Lx
~~~

The following one is conceptually a bit tricky! Remember that when in doubt, indirect proof it out! (Also, think about what these two sentences mean)

[zach PSL7.3]::

~~~{.ProofChecker .LogicBookPD options="tabindent guides fonts resize render exam" points=20} 
PSI10.8 (Ax) (Px -> ~Qx) :|-: ~(Ex) (Px /\ Qx)
~~~

Note that both sentences mean: "No P is a Q". We'll show that they mean the same thing by proving that they both syntactically entail each other (which by the Soundness of our natural deduction system, proves they are semantically equivalent). We've already done one direction, so let's do the other! 

Hints: figuring out how to start this one is pretty tough! Indeed, I thought about quitting the first time I tried. The trick is to think about what you need to build, and just start building it. Work from the inside-out. If you're like me, you'll encounter some pleasing notes of Existential Introduction (EI) and Universal Introduction (AI). Option of getting a green checkmark


[zach PSL7.4 ]::

~~~{.ProofChecker .LogicBookPD options="tabindent guides fonts resize render exam" points=6} 
PSI10.9 ~(Ex) (Px /\ Qx) :|-: (Ax) (Px > ~Qx)
~~~

Let's do one direction of De Morgan's rule for Quantifer Conversion, showing that from (∃x)Bx we can prove ~(∀x)~Bx. But we'll do this in terms of constructing a conditional: 

Make sure you still tab into a subproof! Otherwise Carnap will be upset. 


[zach PSL7.5 ]::

~~~{.ProofChecker .LogicBookPD options="tabindent guides fonts resize render exam" points=16} 
PSI10.10 :|-: (Ex) Bx -> ~(Ax) ~Bx
~~~

For funsies, you can do the other direction if you want, but it won't be graded! You'll have to use indirect proof, and again build up something you'll need for the contradiction. You can do it in 10 lines! 

~~~{.ProofChecker .LogicBookPD options="tabindent guides fonts resize render" submission="none"} 
PSP10.11 :|-: ~(Ax) ~Bx -> (Ex) Bx
~~~

[zach PSL7.6 ]::



