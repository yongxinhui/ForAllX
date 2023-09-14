---
js: https://carnap.io/shared/rzach@ucalgary.ca/dark-mode.js
css: 
  - https://carnap.io/shared/rzach@ucalgary.ca/dark-mode.css
  - https://carnap.io/shared/rzach@ucalgary.ca/wideinput.css
---


PRACTICE Problems: Interpretations
================================

The following are some practice problems on interpretations for QL; i.e., they cover Ch. 9 of _forall x: MIT, Fall 2022_.

<!---

All of these problems are from Zach practice problems 6, modified for logic book system and notation. 

$\exists x goes to ($\exists x)

IN PROBLEMS: \land goes to & (or can stick w/ \land)

In regular text, \land goes to \, \& \,  (note that if you just use & it breaks the math mode. and the \, adds spaces around the & to avoid bunching)
\to goes to \supset
\lnot goes to \sim 

note that to get the \sim to hug the thing to it's right, you need to put it in its own math mode, e.g. the following: $\sim$$(\forall x)(Ax \, \supset \, \sim Bx)$.
otherwise, you get really big spaces between elements which makes things harder to parse 

\forall x goes to (

\sim\forall x
\sim(\forall x)



-->

## Making existence claims true or false

To make "Some $A$s are $B$s" true, the $A$s and the
$B$s must have at least one object in common (it may be the same object).

- In *Carnap*, you specify the **domain** of an interpretation by listing its
elements (only natural numbers are allowed, e.g., 0, 1, 2, 3). 
- To specify the **extension** of a one-place predicate, list the objects in the extension, individually within brackets.

To make $(\exists x)(Ax \, \& \, Bx)$ true, make sure the extension of
$Ax$ and $Bx$ overlap. E.g., put `[0]` for both `A(_)` and `B(_)`.

~~~{.CounterModeler .Simple system="LogicBookPD" submission="none"}
PP9.1 (Ex)(Ax & Bx)
~~~ 

Now give an interpretation that makes ($\exists x)(Ax \, \& \, Bx)$
true, but where it's also true that some $A$ is not $B$, and some $B$
is not $A$. (Once it gets a bit more complicated it may help to have a
piece of paper around to draw the diagrams corresponding to your
attempts to see what happens, where overlap is required, where it is
prohibited, what has to be contained in what, etc.)

~~~{.CounterModeler .Simple system="LogicBookPD" submission="none"}
PP9.2 (Ex)(Ax & Bx), (Ex)(Ax & ~Bx), (Ex)(Bx & ~Ax)
~~~ 

To make ($\exists x)(Ax \, \& \,  Bx)$ *false*, you ensure that
there is *no* overlap between the extensions of $Ax$ and $Bx$. The
easiest way to make this be the case is to make the extensions of
$Ax$ or $Bx$ or both empty. For instance, the default
interpretation has domain `0`, and extensions of `A(_)` and `B(_)`
empty. Click the check button below:

~~~{.CounterModeler .Simple system="LogicBookPD" submission="none"}
PP9.3 ~(Ex)(Ax & Bx)
~~~ 

Now give an interpretation that makes ($\exists x)(Ax \, \& \,  Bx)$ false,
but where it's also true that some A is not B, and some B is not A.

~~~{.CounterModeler .Simple system="LogicBookPD" submission="none"}
PP9.4 ~(Ex)(Ax & Bx), (Ex)(Ax & ~Bx), (Ex)(Bx & ~Ax)
~~~ 

## Making universal claims true or false

To make "All As are Bs" true, the extension of A must be contained in
the extension of B.  The
extensions of A and B may be the same.

So to make ($\forall x)(Ax \, \supset \, Bx)$ true, make sure that everything
in the extension of $Ax$ is also in the extension of $Bx$. If $A$ is
symbolized by a predicate, it's easy to do that. Click the check
button below:

~~~{.CounterModeler .Simple system="LogicBookPD" submission="none"}
PP9.5 (Ax)(Ax -> Bx)
~~~ 

You'll notice that you get a "Success!" message even though you
haven't done anything. That's because by default the extension of
$Ax$ is empty, and so all the (zero) objects in the extension of
$Ax$ are also in the extension of $Bx$. More directly: if $Ax$
has empty extension then no object satisfies $Ax$, i.e., $Ax$ is
false whatever $x$ may be. But a conditional with a false antecedent
is true, so every object satisfies $Ax \, \supset \, Bx$. 

- So if the extension of $Ax$ is empty, then the universal claim "All $A$s are $B$s" is TRIVIALLY true (this is a degenerate or vacuous case). 

Of course, you may not always be so lucky to make a sentence $(\forall
x)(Ax \, \supset \, Bx)$ true just by making the antecedent always false.
Let's see if we can find an interpretation in which it's also the case
that some $B$ is $A$ and some $B$ is not $A$.

~~~{.CounterModeler .Simple system="LogicBookPD" submission="none"}
PP9.6 (Ax)(Ax -> Bx), (Ex)(Bx & Ax), (Ex)(Bx & ~Ax)
~~~ 

To make "All $A$s are $B$s" false, you proceed as if you wanted to
make "Some $A$s are not $B$s true", i.e., you must ensure that the
extension of $Ax$ contains an object that does not satisfy $Bx$:

~~~{.CounterModeler .Simple system="LogicBookPD" submission="none"}
PP9.7 ~(Ax)(Ax -> Bx)
~~~

## Validity and entailment

To show that an argument is invalid, i.e., to show that its premises
do not entail its conclusion, find an interpretation that makes the
premises all true but the conclusion false.

For instance, "Some $A$s are $B$s" does not entail "All $A$s are
$B$s". To see this, find an interpretation that makes ($\exists x)(Ax
\, \& \,  Bx)$ true but ($\forall x)(Ax \, \supset \, Bx)$ false.

~~~{.CounterModeler .Validity system="LogicBookPD" options="turnstilemark double-turnstile" submission="none"}
PP9.8 (Ex) (Ax /\ Bx)  :|-: (Ax)(Ax -> Bx)
~~~ 

Now show that "Some $A$s are $B$s" also does not entail "Not all $A$s are
$B$s".

~~~{.CounterModeler .Validity system="LogicBookPD" options="turnstilemark double-turnstile" submission="none"}
PP9.9 (Ex) (Ax /\ Bx)  :|-: ~(Ax)(Ax -> Bx)
~~~

## Equivalence

To show that two sentences are not equivalent, you have to give an
interpretation that makes one false and the other true.

For instance, a common mistake is to think that the **negation** of "No
$A$s are $B$s" is "All $A$s are $B$s". The symbolization of "No
$A$s are $B$s" is ($\forall x)(Ax \, \supset \, \sim Bx)$ and that of "All
$A$s are $B$s" is ($\forall x)(Ax \, \supset \, Bx)$. So find an
interpretation that shows that $\sim$$(\forall x)(Ax \, \supset \, \sim Bx)$
and ($\forall x)(Ax \, \supset \, Bx)$ are not equivalent.

~~~{.CounterModeler .Simple counterexample-to="equivalence" system="LogicBookPD" submission="none"}
PP9.10 ~(Ax)(Ax -> ~Bx), (Ax)(Ax -> Bx)
~~~

If you've paid attention above, you will have first tried to hit the
"check!" button and found that the default interpretation works. Why?
Because if the extension of $Ax$ is empty, both ($\forall x)(Ax \, \supset \,
\sim Bx)$ and ($\forall x)(Ax \, \supset \, Bx)$ are true. This shows that
($\forall x)(Ax \, \supset \, Bx) \nvDash \sim$$(\forall x)(Ax \, \supset \, \sim Bx)$. 
Now find an interpretation that shows it's also possible to make "Not
all $A$s are not $B$s" true without making "All $A$s are $B$s" true.

~~~{.CounterModeler .Validity system="LogicBookPD" options="turnstilemark double-turnstile" submission="none"}
PP9.11 ~(Ax)(Ax -> ~Bx) :|-:  (Ax)(Ax -> Bx)
~~~

(Hint: "No $A$s are $B$s" can also be symbolized by $\sim$$(\exists
x)(Ax \, \& \,  Bx)$, so $\sim$$(\forall x)(Ax \, \supset \, \sim Bx)$ is
equivalent to ($\exists x)(Ax \, \& \,  Bx)$. And to make "All $A$s are
$B$s" false, you have to make "Some $A$s are not $B$s" true.) 

## Validities

Sentences that are true in every possible interpretation are called
(quantificational) validities. For instance, ($\forall x)\,Ax \lor (\exists x)$$\sim$$Ax$
is a validity: either everything in the domain is in the extension of
$Ax$, or at least one thing is not.  But ($\forall x)Ax \lor
(\forall x)$$\sim$$Ax$ is not a validity. Show this by giving an
interpretation where it is false:

~~~{.CounterModeler .Simple counterexample-to="validity" system="LogicBookPD" submission="none"}
PP9.12 (Ax) Ax \/ (Ax) ~Ax
~~~

Let's try an example with a two-place predicate. Show that $(\forall
x)Bxx \, \supset \, ((\forall x)\,Bxc \, \& \,  (\forall x)\,Bcx)$ is not a
validity. To tell *Carnap* about the referent of the name `c`, just type
the object from the domain into the respective input area. To specify
the extension of a two-place predicate, list all the pairs you want to be in the extension, in brackets and separated by commas. For
instance, if your domain is just 0, and you want ($\forall x)\,Bxx$ to be true, the extension of $Bxy$ has to include `[0,0]`. This by itself isn't enough for a counterexample, though: both ($\forall x)\,Bxc$ and ($\forall x)\,Bcx$ are also true.

- In keeping with our textbook's notation, you can also type `<0, 0>`, `<1, 0>`, etc. to say that a pair is in the extension of a two-place predicate.

~~~{.CounterModeler .Simple counterexample-to="validity" system="LogicBookPD" submission="none"}
PP9.13 (Ax) Bxx -> ((Ax) Bxc /\ (Ax) Bcx)
~~~

## Examples from Week 9 lecture

Show that the two sentences are not equivalent:

~~~{.CounterModeler .Simple counterexample-to="equivalence" system="LogicBookPD" submission="none"}
PP9.a (Ax)(Ax \/ Bx), (Ax) Ax \/ (Ax) Bx
~~~ 

Show that the sentences are jointly satisfiable:

~~~{.CounterModeler .Simple system="LogicBookPD" submission="none"}
PP9.b (Ax)(Ax -> Bx), (Ax)(Ax -> ~Bx)
~~~ 

Show that the argument is invalid:

~~~{.CounterModeler .Validity system="LogicBookPD" options="turnstilemark double-turnstile" submission="none"}
PP9.c (Ax)(~Ax -> Bx), (Ex) (Bx /\ Cxb)  :|-: (Ex)(~Ax /\ Cxb)
~~~ 

Show that the sentence is not a validity:

~~~{.CounterModeler .Simple counterexample-to="validity" system="LogicBookPD" submission="none"}
PP9.d (Ex) Aax -> (Ex) Axx
~~~ 

## Quantifier alternation

Show that the following two arguments are invalid (i.e. for each, provide a model that makes the premise true but the conclusion false):

~~~{.CounterModeler .Validity system="LogicBookPD" options="turnstilemark double-turnstile" submission="none"} 
PP9.e (Ax) (Ey) Axy :|-: (Ey) (Ax) Axy 
~~~

~~~{.CounterModeler .Validity system="LogicBookPD" options="turnstilemark double-turnstile" submission="none"} 
PP9.f  (Ax)(Mx -> (Ey)(Wy /\ Syx)) :|-:  (Ey)(Wy /\ (Ax)(Mx -> Syx))
~~~

## Changing Quantifer Scope across conditionals

Show that the following two sentences are inequivalent. Compare this to PS8 problem 17: " If Jupiter has a moon, it has a moon with an atmosphere." Which one of QL wffs below has the general form needed to schematize this sentence in QL? 

~~~{.CounterModeler .Simple counterexample-to="equivalence" system="LogicBookPD" submission="none"}
PP9.g (Ex)Mx > (Ex)(Mx & Tx), (Ex)(Mx > (Mx & Tx))
~~~ 

[Note that the latter claim is true even if something is NOT a moon of jupiter, since that thing would trivially satisfy the conditional and hence make the existential true. So we can make the former false by letting anything that is a moon NOT have an atmosophere, while making the latter true by letting something NOT be a moon of jupiter. But intuitively, the sentence we want to schematize SHOULDN'T be true in this case, showing that the former form is needed.

So easy solution: have domain of two objects 0 and 1.
Let 0 be the counterexample to the first sentence: it's a moon but it lacks an atmosophere. so makes that conditional false
Whereas since 1 is not a moon, it trivially makes the second sentence true]::

