---
js: https://carnap.io/shared/rzach@ucalgary.ca/dark-mode.js
css: 
  - https://carnap.io/shared/rzach@ucalgary.ca/dark-mode.css
  - https://carnap.io/shared/rzach@ucalgary.ca/wideinput.css
---

<!---
This practice problem set is taken almost entirely from Zach "Practice Problems II" document. I've altered some notation to fit the logic book, along with using the LogicBookSD system. Altered Problem 8. Referring to "TFL" as "SL". Replaced `Calgary' with `Chicago' and Edmonton with `Erie' to Americanize.
-->

[Description upon upload: Try your hand at both (i) identifying the main connective of complex sentences and (ii) symbolizing sentences using various truth-functional connectives!]::

Practice Problems 1: Symbolization
================================

<br />

The following are some practice problems on symbolization. They
cover Chapter 1 of [_forall x: MIT_].

Only ever use normal parentheses, no brackets or braces! 

In the following exercises, you will have to enter sentences of SL
into Carnap. You don't have to enter the actual symbols of SL, but
instead can use symbols found on your keyboard. Here's a list:

------------------------- -----------------------------
not ~                     `-`, `~`
and &                     `/\`,  `&`
or ∨                      `\/`, `v`
if then $\supset$                 `->`, `>`
if and only if $\equiv$          `<->`, `<>`
------------------------- -----------------------------

<br />


These are practice exercises, which cannot be submitted. On an actual
problem set, each exercise will have a `Submit` button. Make sure you
click that button once you have correctly solved an exercise. *Carnap*
will remember which problems you have completed (i.e., submitted) but
will not show you the solutions you have submitted. If you want to
save them, you should copy and paste them into a separate document, or
take a screen shot.

## Identifying the main connective

Let's first look at some exercises to make sure you understand the
syntax of SL. Every sentence of SL is built up from sentence letters
using one of the connectives of SL ($\sim$, &, $\lor$, $\supset$,
$\equiv$). The last connective used in the construction of a
sentence is its _main logical operator_. In the exercises below, type
the main logical operator of the sentence, then hit return. If you
pick the right connective, the system will show you the
sub-sentence(s) from which the sentence is constructed using the main
logical operator you just entered. It may be a sentence letter, or
itself constructed from simpler sentences. Enter the main logical
operator of the highlighted (in red) subsentence, until only sentence
letters are left. When you have completely analyzed the sentence, the
box will turn green and *Carnap* will put a checkmark next to it. Then
you could, on an actual problem set, click the `Submit` button.

~~~{.SynChecker .Match system="LogicBookSD" submission="none"} 
PP1.1 ~(~P /\ Q) -> (P <-> R)
~~~

~~~{.SynChecker .Match system="LogicBookSD" submission="none"} 
PP1.2 ~((~P \/ Q) \/ (P /\ R))
~~~

## Negation

Symbolizing a sentence of English means finding a sentence of SL
which has the same truth conditions as the original English sentence.
It requires a _symbolization key_ which pairs basic sentences with
sentence letters of SL. Here's the symbolization key we'll use:

* C: Sanjiv is from Chicago
* E: Sanjiv is from Erie
* H: Mandy likes hiking
* S: Mandy likes skiing

To symbolize negation, you should paraphrase grammatical negation
(e.g., "Mandy doesn't like hiking") using "not" or "it is not the case
that" followed by the sentence being negated (e.g., "not [Mandy likes
hiking]"). You can then symbolize the sentence by replacing "not" with
the "~" symbol and any basic sentences by
the corresponding sentence letters in the symbolization key. Try it by
putting "~H" in the text box below, and hit return to check your
solution:

~~~{.Translate .Prop system="LogicBookSD" submission="none"}
PP1.3 ~H: Mandy doesn't like hiking
~~~

Note that once you enter a correct solution, the system will show you
a dialog that either says "Perfect match" or "Correct" or "Logically equivalent to
a standard translation" if your solution wasn't exactly identical to
the solution *Carnap* knows about (e.g. is you entered ~~~H above). The English sentence will then be
highlighted in green, and *Carnap* puts a checkmark next to it. 

Remember that *Carnap* forgets the solutions you entered but haven't
submitted yet. So once you've solved a problem, always click the
`Submit` button!)

## Conjunction

"And", "although", "but" are symbolized using &. Remember to start by dealing with
pronouns and coordination by first paraphrasing to make all the basic
sentences explicitly part of our sentence. E.g., "Mandy likes skiing
but she doesn't like hiking" amounts to "Both [Mandy likes skiing] and
not [Mandy likes hiking]".

~~~{.Translate .Prop system="LogicBookSD" submission="none"}
PP1.4 S /\ ~H: Mandy likes skiing but she doesn't like hiking
~~~

## Conditionals: if P, then Q

Be careful with "if", "provided", and "only if". These are all
symbolized with the horseshoe $\supset$, entered most easily by `>` on the keyboard. This connective is NOT symmetric, so the order of sentence letters matters! 

B if A is equivalent to if A, then B. 

"P only if Q" is equivalent to "if P, then Q". (*Trick*: "P only if Q" means "If not Q, then not P". This is the contrapositive of "If P, then Q" and hence logically equivalent). 

"B provided that A" is also equivalent to "if A, then B" Likewise for "B given A"

~~~{.Translate .Prop system="LogicBookSD" submission="none"}
PP1.5 C -> S: Mandy likes skiing provided Sanjiv is from Chicago
~~~

~~~{.Translate .Prop system="LogicBookSD" submission="none"}
PP1.6 H -> ~E: Mandy likes hiking only if Sanjiv is not from Erie
~~~


(other systems often use an "→" to symbolize the material conditional, but this might remind you too much of "entailment". Entailment is a semantic notion distinct from any truth-functional connectives! If-then statements don't necessarily entail anything! We're using the horseshoe $\supset$ to try to emphasize that something STRANGE is afoot with our material conditionals!) 

## Complex symbolization

It's important to be careful and to symbolize the parts of your sentence
step by step once the sentence becomes complicated. In the following example,
we provide a partial paraphrase to help you along. 

You'll also need to symbolize "either or" (disjunctions) in this
problem. Remember that "either or" is meant to be inclusive, unless we
explicitly specify that it is exclusive (by also saying "but not
both"). Disjunctions are symbolized using the symbol ∨, or `\/` or `v` on your keyboard.

~~~{.Translate .Prop system="LogicBookSD" submission="none"}
PP1.7 ~(C \/ E) -> (H /\ S) : Mandy likes hiking and skiing if it's not the case that Sanjiv is either from Chicago or Erie
|if (it is not the case that [Sanjiv is from Chicago or from Erie]) then [Mandy likes hiking and skiing] 
~~~

Remember that in SL only two sentences can be combined using & and ∨.
In the following example, the proposed symbolization does not work.
try to fix it by putting in parentheses.

[Note that for whatever reason, Carnap still accepts the original C > S & ~E as a correct answer. So maybe LogicBookSD already enforces some implicit parentheses around conjunctions?]::

~~~{.Translate .Prop system="LogicBookSD" submission="none"}
PP1.8 C > (S&~E): (Both Mandy likes skiing and Sanjiv is not from Erie) if Sanjiv is from Chicago
| C > S & ~E
~~~

[Bad example because conjunction is associate anyways
~~~{.Translate .Prop system="LogicBookSD" submission="none"}
PP1.8 C /\ (H /\ S) : Sanjiv is from Chicago, and Mandy likes hiking and skiing
|C /\ H /\ S
~~~
]::

## Neither-nor and unless

"Neither A nor B" can be paraphrased as "Both not A and not B" (and
alternatively as "Not either A or B"). Let's practice this paraphrase! So for instance you can paraphrase 

> Mandy likes neither hiking nor skiing

alternatively as one of

> Both (it is not the case that [Mandy likes hiking]) and (it is not the case
> that [Mandy likes skiing])

> It is not the case that (either [Mandy likes hiking] or [Mandy likes skiing])

Try both ways---the system will accept either
as a correct solution (thanks computers!).

~~~{.Translate .Prop system="LogicBookSD" submission="none"}
PP1.9 ~H /\ ~S: Mandy likes neither hiking nor skiing
~~~

"A unless B" is most easily paraphrased as "Either A or B". This will seem unnatural at first but is the easiest to remember! Alternatively, it can be paraphrased as "A if not B" (which, recall, means "If not B, then A"), or as "If not A, then B. Each of these three sentences is logically equivalent! 
Once you have paraphrased it, symbolize it as you ordinarily would.
Try all three ways (although I recommend sticking with the "or" translation since ∨ is symmetric so you don't need to worry about the order!):

~~~{.Translate .Prop system="LogicBookSD" submission="none"}
PP1.10 C \/ E: Sanjiv is from Chicago unless he's from Erie
~~~

(Again, if you've provided a solution that exactly matches the model
solution, the system will say "perfect match!" when you hit enter.
Other possible symbolization will earn you a "correct!". That's ok: you'll still get full credit for it.)

Let's try a complex example that uses all of what we've done. You will
also need to know how to symbolize "if and only if".

~~~{.Translate .Prop system="LogicBookSD" submission="none"}
PP1.11 (H \/ ~(C \/ E)) /\ (S <-> E): Mandy likes hiking unless Sanjiv is from neither Chicago nor Erie, but she likes skiing if and only if Sanjiv is from Erie
~~~

[Note that system totally accepts following for last problem (preferred symbols for typing), (H v ~(C v E)) & (S <> E) ]::
