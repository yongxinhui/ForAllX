---
js: https://carnap.io/shared/rzach@ucalgary.ca/dark-mode.js
css: 
  - https://carnap.io/shared/rzach@ucalgary.ca/dark-mode.css
  - https://carnap.io/shared/rzach@ucalgary.ca/wideinput.css
---

# Phil 24.241 Logic I
# Problem Set \#9

<br />

<!---


This is problem set 9 for MIT Fall 2022 Logic I, 24.241. All problems come from Zach PS6, modified for LogicBookSD system (so not allowed to ever post solutions to these!)

Description for students: Problem Set 9! Models and countermodels in Quantifer Logic. Due Sunday November 13th by 3pm Eastern. 

Comments to self can be entered with [blah blah]:: or [](blah blah). Former needs an empty space before the line! 

order of replacement from zach notation to logic book:
Ax goes to (Ax)
Ex goes to (Ex)
then search for (Ex)ist and fix!
(x) goes to x

(x,a) to xa
(a, x) to ax
(a,x)
etc. (long list---see other file)

-->

###Directions:

We're doin' things a bit differently this week! Successfully complete 17 of the following 20 problems to earn a 100. 16 problems will net you a 95%, 15 a 90%, and so on. (No extra credit for having more than 17 correct; although they're good practice!). *Carnap* auto-checker will be on FOR ALL problems (wohhhhhhhh it's raining *Carnaps*!) *Carnap* is well-known for his Principle of Tolerance; look it up! (Spoiler: “in logic, there are no morals”.) 

[(Wouldn't it be nice to **Educate** yourself for a change!) ]::


```{.QualitativeProblem .ShortAnswer points=0}
PS9.0 (if and) ONLY if you worked with up to two other students on these problems, please let me know their names in the text box below. Otherwise, leave this blank and don't submit! 
```

Before you can submit, you have to check if your solution is correct (by clicking the
`Check` button; the problem display will turn green and display a checkmark).
When (and only when) you are happy with your answer, click the `Submit`
button. YOU CAN ONLY SUBMIT ONCE! *Carnap* will then acknowledge and record your submission. For this week only, you can only submit a problem once it is completed correctly (and again: you can leave up to four questions blank and still get full credit!) 

**You must ultimately click the `Submit` button for each exercise!**

*The fineprint*: Your student page on *Carnap* lists which problems you have completed. You do not have to complete all problems at the same time; you can come back to this page and complete part of the problem set later. *However*, Carnap *will not save work on this page, and it won't show
which problems you already have submitted correctly!* So you should
keep track of which problems are done, and copy any work you want to
save and paste it into a text document for later use or reference (but **not for sharing with others**---that's cheating!). You
can also print the problem page with completed problems, or take
screenshots.

### Before you leave this page, make sure every problem which you have solved correctly is also submitted!

For each of the following questions, you have to provide an
interpretation. To give the domain, provide a list of numbers, e.g.,
`0, 1, 2`. To give the extension of a one-place predicate, enter each
element from the domain that you want to be in the extension. For
instance, if you want the extension of $Ax$ to be $1$, $2$, enter
`1, 2` in the spot for `A(_)`. For two-place predicates, enter the
list of pairs, with each pair in "angle brackets" (i.e. less than `<` and greater than `>` signs), e.g., `<0,0>, <0,1>`.

It is often possible to find a solution simply by trial and error.
If you do this, you will not understand why the solution works, and
you will have trouble solving harder questions. So **you should not use
trial and error**. Rather, think about what the sentences say, and under
what conditions they are true and false. Draw diagrams to visualize
the relationships between the predicates, especially when two-place
prediates are involved. Add elements to the domain, or to the
extensions of predicates to make the sentences true (or false). *Carnap* will tell you which sentences do not (yet) have the right truth value (this Carnap guy is really somethin' eh? what a chum!)

There are a total of 20 questions on this problem set, each nominally worth 5 points (but not exactly---this is mainly book-keeping). You have to solve 17 of them correctly to earn a 100%, 16 for a 95%, 15 for a 90%, etc. 

[You have to solve 17 of them correctly to earn a 100%, 16 for a 96%, 15 for a 92%, etc. ]::

## Existence claims

For each of the following sentences, give an interpretation that shows
the sentences are jointly satisfiable (i.e., make them all true in your model).

```{.CounterModeler .Simple system="LogicBookPD" points=5}
PS9.1 (Ex)(Ax /\ Bx), (Ex)(Ax /\ ~Bx)
```
```{.CounterModeler .Simple system="LogicBookPD" points=5}
PS9.2 (Ex)(Ax /\ Bx), (Ex) (Ax /\ ~Bx), (Ex)(~Ax /\ Bx)
```
```{.CounterModeler .Simple system="LogicBookPD" points=5}
PS9.3 (Ex)(Ax \/ ~Bx), (Ex)(~Ax /\ Bx), ~(Ex) (Ax /\ ~Bx)
```
```{.CounterModeler .Simple system="LogicBookPD" points=5}
PS9.4 (Ex)(Ax /\ Bx), (Ex) ~(Ax <-> Bx)
```

## Universal claims

For each of the following sentences, give an interpretation that shows
the sentences are jointly satisfiable.

```{.CounterModeler .Simple system="LogicBookPD" points=5}
PS9.5 (Ax)(Ax -> Bx), (Ex) Ax, (Ex) ~Bx
```
```{.CounterModeler .Simple system="LogicBookPD" points=5}
PS9.6 ~(Ax)(Ax -> Bx), ~(Ax)(Ax -> ~Bx)
```
```{.CounterModeler .Simple system="LogicBookPD" points=5}
PS9.7 (Ax)(Ax \/ Bx), ~(Ex)(Ax /\ Bx), (Ex)(~Ax /\ Bx)
```
```{.CounterModeler .Simple system="LogicBookPD" points=5}
PS9.8 (Ax)(Ax -> (Bx \/ Cx)), ~Ba, ~Cb, (Ex) (Ax /\ ~Cx)
```
```{.CounterModeler .Simple system="LogicBookPD" points=5}
PS9.9 (Ax)(Ax \/ Bx), (Ex)~(Ax <-> Cx), (Ax)((Ax \/ Bx) -> Cx)
```

## Relations and quantifiers

For each of the following sentences, give an interpretation that shows
the sentences are jointly satisfiable.

- Note that you can make a textbox bigger by dragging its bottom right corner!

```{.CounterModeler .Simple system="LogicBookPD" points=5}
PS9.10 Caa, (Ax)(Cxa -> (Bx \/ ~Cax))
```
```{.CounterModeler .Simple system="LogicBookPD" points=5}
PS9.11 Cab, ~(Ex) Cxx, (Ax)(Cax -> Cxa)
```
```{.CounterModeler .Simple system="LogicBookPD" points=5}
PS9.12 (Ex) Cxx, (Ex) (Cax /\ ~Cxx), (Ax)(~Cxx -> Cxa)
```
```{.CounterModeler .Simple system="LogicBookPD" points=5}
PS9.13 Cab, Cbc, ~Ccc, (Ex)(Cax /\ ~Cxc), (Ax)(Cax -> Cxx)
```
```{.CounterModeler .Simple system="LogicBookPD" points=5}
PS9.14 (Ax) Cxx, Ba /\ ~Bb, (Ax)(Cax <-> Cbx)
```

## Entailment and invalidity of arguments

Give interpretations that show that the following
entailments do not hold (i.e., that the arguments are invalid in QL).

```{.CounterModeler .Validity system="LogicBookPD" options="turnstilemark double-turnstile" points=5}
PS9.15 (Ex)(Ax /\ Bx), (Ex)(Cx /\ ~Ax) :|-: (Ex)(Cx /\ ~Bx)
```
```{.CounterModeler .Validity system="LogicBookPD" options="turnstilemark double-turnstile" points=5}
PS9.16 (Ax)(Ax -> (Bx \/ Cx)), (Ex)(Ax /\ ~Bx) :|-: (Ax) Cx
```
```{.CounterModeler .Validity system="LogicBookPD" options="turnstilemark double-turnstile" points=5}
PS9.17 (Ax)((Axb \/ Axc) -> Bx), (Ex) Axc /\ (Ex)(Bx /\ ~Acx), ~(Ax) Axx :|-: (Ex) ~Axc
```

## (In)validities

Give an interpretation that shows the following sentence is *not* a
validity of QL. 

```{.CounterModeler .Simple counterexample-to="validity" system="LogicBookPD" points=5}
PS9.18 ((Ax) Bx -> (Ax) Cx) -> (Ax)(Bx -> Cx) 
```

## Equivalence

Give an interpretation that shows that the following
sentences are not equivalent in QL.

```{.CounterModeler .Simple counterexample-to="equivalence" system="LogicBookPD" points=5}
PS9.19 (Ex)(Axb /\ Abx), (Ex) Axb /\ (Ex) Abx
```
```{.CounterModeler .Simple counterexample-to="equivalence" system="LogicBookPD" points=5}
PS9.20 (Ax)(Axb -> Abx), ~(Ex) (Axb /\ Abx)
```

### Before you leave this page, make sure every problem which you have solved correctly is also submitted!
