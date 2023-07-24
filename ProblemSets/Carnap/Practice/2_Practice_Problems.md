---
js: https://carnap.io/shared/rzach@ucalgary.ca/dark-mode.js
css: 
  - https://carnap.io/shared/rzach@ucalgary.ca/dark-mode.css

---

<!---
  title: "Practice Problems: Truth Tables"
  author: Richard Zach
  description: |
    The following are some practice problems on truth tables. They
    cover Part III of _forall x: Calgary_.

Modified for Logic Book Syntax. But would be nice to be able to turn off outer parentheses


Possible header option, which I can't really tell what it does...
  - https://carnap.io/shared/rzach@ucalgary.ca/wideinput.css

-->

Practice Problems: Truth Tables
===============================

The following are some practice problems on truth tables. They
cover Chapter 2 of _forall x:
MIT, Fall 2022_. For each problem, you
can use the "Check" button to see if you have filled in the truth
table correctly. You will get a message that says "Success!" if so,
and otherwise one that says "Something's not quite right!".

## Characteristic truth tables

Fill in the complete truth table for each of the following sentences.
These all have just one logical operator, so this is just testing if
you remember the characteristic truth tables for the connectives of
SL.

~~~{.TruthTable .Simple options="nocounterexample" system="LogicBookSD" submission="none"}
PP2.1 ~P
~~~

~~~{.TruthTable .Simple options="nocounterexample" system="LogicBookSD" submission="none"}
PP2.2 P/\Q
~~~

~~~{.TruthTable .Simple options="nocounterexample" system="LogicBookSD" submission="none"}
PP2.3 P \/ Q
~~~

~~~{.TruthTable .Simple options="nocounterexample" system="LogicBookSD" submission="none" points=0}
PP2.4 P->Q
~~~

~~~{.TruthTable .Simple options="nocounterexample" system="LogicBookSD" submission="none" points=0}
PP2.5 P<->Q
~~~

## Validity of arguments

An argument is _valid_ in SL if every valuation (row of the complete
truth table) makes one of the premises false or makes the conclusion
true. A _counterexample_ is a valuation that shows that an argument is
not valid, i.e., a valuation where the premises are all true and the
conclusion is false. Recall that we often also call a "valuation" a "truth-value assignment": it is an assignment of truth values (true or false) to the atomic sentences that compose the sentences of interest.

Here are two example truth tables to test your understanding of this
concept. First, fill in the table to compute the truth value of each
sentence on each valuation.  The conclusion is the sentence on the far
right; it is separated from the premises by a ⊨ symbol, which
basically here means the same as in _forall x_,
i.e., that the sentences on the left entail the sentence on the right.
Underneath the ⊨ symbol, select ✓ if the valuation is "good" (makes a
premise false or the conclusion true), and select ✗ if the valuation
is "bad" (makes all premises true and the conclusion false). If the
argument is invalid, you should indicate this by clicking the
"Invalid!" button, and entering a combination of truth values that
shows that the argument is invalid (i.e., the T/F combination
underneath $G$ and $H$ in a line which you think shows that the
argument is invalid.

You should see a "Success!" message when you've
picked a truth value combination which actually shows that the
argument is invalid, and "Something's not quite right" if you've not
given a valuation that shows the argument invalid if it is in fact
invalid.

~~~{.TruthTable .Validity counterexample-to="validity" system="LogicBookSD" options="turnstilemark double-turnstile" submission="none"}
PP2.6 ~H \/ ~G, H :|-: ~G
~~~

~~~{.TruthTable .Validity counterexample-to="validity" system="LogicBookSD" options="turnstilemark double-turnstile" submission="none"}
PP2.7 ~H \/ ~G, ~H :|-: ~G
~~~

Here is a complex truth table to test for the validity of an argument.
We'll fill in the truth values of the sentence letters for you in this
one.

~~~{.TruthTable .Validity counterexample-to="validity" system="LogicBookSD" options="turnstilemark double-turnstile autoAtoms" submission="none"}
PP2.8 (C \/ E), (A \/ M), (A -> -C), -M :|-: E
~~~

## Equivalence in SL

Two sentences of SL are _equivalent_ if they agree in truth value on
every valuation (i.e. on every truth-value assignment). To test for equivalence, compute the truth values of
both sentences, and then compare them row-wise. If their truth values
match in every valuation, the two sentences are quivalent; if there is
a valuation in which they have different (opposite) truth values, they
are not. If you think the are not equivalent, click the
"Inequivalent!" button and enter the truth-value combination of the
valuation that shows that they are not.

~~~{.TruthTable .Simple counterexample-to="equivalence" system="LogicBookSD" options="autoAtoms" submission="none"}
PP2.9 ~(P\/Q), ~P\/Q
~~~

~~~{.TruthTable .Simple counterexample-to="equivalence" system="LogicBookSD" options="autoAtoms" submission="none"}
PP2.10 ~(P\/Q), ~P/\~Q
~~~

You should have managed to figure out that the two sentences in PP2.9
are not equivalent, but the two sentences in PP2.10 are. The latter
equivalence is one of _De Morgan's Laws_.

## Tautologies

Some sentences of SL are such that they end up being true whichever
truth values the sentence letters have. We call these _tautologies_.
For instance, $P \lor \lnot P$ is true on every valuation. Give truth
tables and determine if the following sentences are tautologies. If
they aren't, click the "non-tautology" button and enter the valuation
that shows they are not tautologies.

~~~{.TruthTable .Simple counterexample-to="tautology" system="LogicBookSD" options="autoAtoms" submission="none"}
PP2.11 (~A -> (A \/ B)) -> B
~~~

~~~{.TruthTable .Simple counterexample-to="tautology" system="LogicBookSD" options="autoAtoms" submission="none"}
PP2.12 ((A -> B) -> A) -> A
~~~

There are interesting connections between valid arguments and
tautologies. For instance, *modus ponens* is the argument $P$, $P \to Q$
$\therefore Q$. Now do the truth table for the "corresponding
conditional", $(P \land (P \to Q)) \to Q$:

~~~{.TruthTable .Simple counterexample-to="tautology" system="LogicBookSD" options="autoAtoms" submission="none"}
PP2.13 (P ∧ (P → Q)) → Q
~~~

You'll notice this is a tautology. This is no accident. Can you
explain why?

Here's another example, requiring a larger truth table.

~~~{.TruthTable .Simple counterexample-to="tautology" system="LogicBookSD" options="autoAtoms" submission="none" points=0}
PP2.14 (P->Q)\/(Q->R)
~~~

Weird, huh? 

## Consistency

For some applications, it is important to know if there is a way some
sentences can all be made true at the same time. We say in such a case
that the sentences are _consistent_ (aka _jointly satisfiable_).  If you want to find all
such ways, you have to do a complete truth table. You should click the
"consistent" button and enter a valuation that makes all sentences
true, if they are consistent. 

~~~{.TruthTable .Simple counterexample-to="inconsistency" system="LogicBookSD" options="autoAtoms" submission="none" points=0}
PP2.15 A → C, C → (B ∨ D ), ¬(A ∧ D )
~~~

However, if all you want is a single valuation on which all sentences
are true, it is enough to construct a partial truth table (see Chapter
2).  For instance, to find a valuation on which the sentences of the
previous exercise are all true, complete the following partial truth table:

~~~{.TruthTable .Partial system="LogicBookSD" options="strictGivens" submission="none"}
PP2.16 A → C, C → (B ∨ D ), ¬(A ∧ D )
|      - T -  - T  - - -    T - - -
~~~
