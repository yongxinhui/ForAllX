---
js: https://carnap.io/shared/rzach@ucalgary.ca/dark-mode.js
css: https://carnap.io/shared/rzach@ucalgary.ca/dark-mode.css
---
# Problem Sets \#1, \#2, \#6 practice mode!


<br />

<!---
This is problem sets 1, 2, and 6 for MIT Fall 2022 Logic I, 24.241 in checking mode

Description for students: pre-midterm problem sets with answer-checking enabled for all problems! 

Comments to self can be entered with [blah blah]:: or [](blah blah). Former needs an empty space before the line! 

-->

To enter logical symbols on the keyboard, use:

------------------------- -----------------------------
not ~                     `-`, `~`
and &                     `/\`,  `&`
or ∨                      `\/`, `v`
if then $\supset$                 `->`, `>`
if and only if $\equiv$          `<->`, `<>`
------------------------- -----------------------------

<br />

## Symbolization 

<br />

Using the symbolization key given, symbolize the following sentences
in SL. There are 15 questions in total. Those worth 1 point have an autocheck feature so you can verify if you did it correctly before submitting. You type your answer in the text box above `Submit`. (The box below `Submit` stays fixed to show you what you're trying to symbolize). 

* $S$: Siobhan is a logician.
* $R$: Thi is a logician. 
* $P$: Thi is a philosopher.
* $M$: Thi is a musician.
* $L$: Leslie likes Siobhan.

~~~{.Translate .Prop system="LogicBookSD" submission="none"}
PS1.1 P \/ M : Thi is either a philosopher or a musician.
~~~
~~~{.Translate .Prop system="LogicBookSD" submission="none"}
PS1.2 P /\ ~M : Thi is a philosopher, but not a musician.
~~~

[Again, with just exam option, you still get a dialogue box pop up if you try to submit an incorrect result! But adding in nocheck does work! Eliminates green box entirely!]::

~~~{.Translate .Prop system="LogicBookSD" submission="none"}
PS1.3 ~S -> R : Thi is a logician if Siobhan isn't.
~~~
~~~{.Translate .Prop system="LogicBookSD" submission="none"}
PS1.4 S -> L : Siobhan is a logician only if Leslie likes her.
~~~

* $S$: Siobhan is a logician.
* $C$: Siobhan is Canadian.
* $R$: Thi is a logician. 
* $P$: Thi is a philosopher.
* $M$: Thi is a musician.
* $L$: Leslie likes Siobhan.

~~~{.Translate .Prop system="LogicBookSD" submission="none"}
PS1.5 L /\ S : Leslie likes Siobhan even though she is a logician.
~~~
~~~{.Translate .Prop system="LogicBookSD" submission="none"}
PS1.6 (S /\ C) \/ L : Siobhan is a Canadian logician unless Leslie likes her.
~~~
~~~{.Translate .Prop system="LogicBookSD" submission="none"}
PS1.7 ~R /\ ~S : Neither Thi nor Siobhan is a logician.
~~~
~~~{.Translate .Prop system="LogicBookSD" submission="none"}
PS1.8 (P /\ M) -> ~(C /\ S) : Thi is both a philosopher and a musician only if Siobhan isn't a Canadian logician.
~~~

* $S$: Siobhan is a logician.
* $C$: Siobhan is Canadian.
* $R$: Thi is a logician. 
* $P$: Thi is a philosopher.
* $M$: Thi is a musician.
* $L$: Leslie likes Siobhan.

~~~{.Translate .Prop system="LogicBookSD" submission="none"}
PS1.9 (S /\ L) -> (R \/ M) : If Siobhan is a logician whom Leslie likes, Thi is a logician, too, or a musician. 
~~~
~~~{.Translate .Prop system="LogicBookSD" submission="none"}
PS1.10 ~R /\ (~P /\ ~M) : Thi is neither a logician, nor a philosopher, nor a musician.
~~~
~~~{.Translate .Prop system="LogicBookSD" submission="none"}
PS1.11 L \/ (S <-> ~R)  : Unless Leslie likes her, Siobhan is a logician if and only if Thi isn't.
~~~
~~~{.Translate .Prop system="LogicBookSD" submission="none"}
PS1.12 (S /\ R) -> ((P \/ M) /\ ~(P /\ M)) : Thi is a philosopher or musician but not both, provided he and Siobhan are both logicians.
~~~

* $S$: Siobhan is a logician.
* $R$: Thi is a logician. 
* $P$: Thi is a philosopher.
* $M$: Thi is a musician.

For the next problem you have to find a sentence of SL that is true if, and
only if, exactly one of Thi and Shioban is a logician.

~~~{.Translate .Prop system="LogicBookSD" submission="none"}
PS1.13 ~(S <-> R) : Exactly one of Thi and Shioban is a logician.
~~~

[alternate solution for `exactly one' problem: (S & ~R) v (~S & R)]::

"Thi is not a logician or a philosopher" is ambiguous. One reading is
that either Thi isn't a logician, or Thi is a philosopher. Symbolize the
*other* reading.

~~~{.Translate .Prop system="LogicBookSD" submission="none"}
PS1.14 ~(R \/ P) : Thi is not a logician or a philosopher.
~~~

* $R$: Thi is a logician. 
* $P$: Thi is a philosopher.
* $M$: Thi is a musician.

The sentence "Thi is a musician or not a philosopher and a logician" is ambiguous.
One reading is that Thi is either a musician, or he is not a
philosopher but is a logician. Another is that Thi is a logician, and
also either a musician or not a philosopher. Symbolize the remaining third
reading. 

~~~{.Translate .Prop system="LogicBookSD" submission="none"}
PS1.15 M \/ ~(P /\ R) : Thi is a musician or not a philosopher and a logician.
~~~


###Part 1: Filling out them tables! 

[](From JTapp PS 3, problem 2d, Winter 2019)

~~~{.TruthTable .Simple system="LogicBookSD" options="nodash autoAtoms nocounterexample" submission="none"}
PS2.1a  A > ~A 
~~~

```{.QualitativeProblem .MultipleChoice submission="none"}
PS2.1b Which property describes the preceding sentence? 
| Tautalogy (truth-functionally true)
| *Contingent (truth-functionally indeterminate)
| Contradiction (truth-functionally false)
```

Remember to work from the *inside-out*, since the truth-value of the MAIN connective depends on the truth-values of the minor connectives.

[](From JTapp PS 3, problem 1a, Winter 2019)

~~~{.TruthTable .Simple system="LogicBookSD" options="nodash autoAtoms nocounterexample" submission="none"}
PS2.2  (A \/ C) <> ~A 
~~~

[](From JTapp PS 3, problem 1b, Winter 2019)

~~~{.TruthTable .Simple system="LogicBookSD" options="nodash autoAtoms nocounterexample" submission="none"}
PS2.3 (A>(B>C))&((A \/ B) <> C)
~~~

Again, make sure you identify the main connective below, so that you evaluate its column correctly! 

[](From JTapp PS 3, problem 1c, Winter 2019)

~~~{.TruthTable .Simple system="ichikawaJenkinsSL" options="nodash autoAtoms nocounterexample" submission="none"}
PS2.4 ~(D <> [~A & B]) <>  [~D v ~B] 
~~~

###Part 2: Consistency! Equivalence! 

Show that the following sentences are consistent by choosing a single truth value assignment for the atomic sentence letters such that each sentence is true. (There may be multiple correct answers: you just need to find one!) 

[](From JTapp PS 3, problem 4a, Winter 2019)

~~~{.TruthTable .Partial system="LogicBookSD" counterexample-to="inconsistency" options="autoAtoms nodash" submission="none"}
PS2.5 (A & B) > C, C & (D > A), A <> (B > D)
~~~

[](From JTapp PS 3, problem 4b, Winter 2019)

~~~{.TruthTable .Partial system="LogicBookSD" counterexample-to="inconsistency" options="autoAtoms nodash" submission="none"}
PS2.6 ~(H <> I), ~(I & J), ~(H & J), H \/ (I & J)
~~~

Determine if the following two sentences are equivalent
in Sentential Logic (SL) using a complete truth table. If they are INequivalent, then click `inequivalent` and enter a truth value assignment to the atomic sentence letters that shows this. 

~~~{.TruthTable .Simple counterexample-to="equivalence" system="LogicBookSD" options="autoAtoms nodash" submission="none"}
PS2.7 ~(A -> B),      A /\ ~B
~~~

~~~{.TruthTable .Simple counterexample-to="equivalence" system="LogicBookSD" options="autoAtoms nodash" submission="none"}
PS2.7b ~(A -> B),      ~A /\ ~B
~~~

###Part 3: What's that?! Another truth table???? 

Complete a truth table, then answer a question about it! 

~~~{.TruthTable .Simple system="ichikawaJenkinsSL" options="nodash autoAtoms nocounterexample" submission="none"}
PS2.8a [(C <> D) & (D <> E) & C] & ~E
~~~

```{.QualitativeProblem .MultipleChoice submission="none"}
PS2.8b Which property describes the preceding sentence? (remember to make sure you've identified the MAIN connective)
| Tautalogy (truth-functionally true)
| Contingent (truth-functionally indeterminate)
| *Contradiction (truth-functionally false)
```



##Part 4 Oh Validity---you're so legit

Determine if the following arguments are valid in SL using a complete truth table or by constructing a counterexample to validity (i.e. by entering a truth value assignment to the atomic sentences on which the premises are all true but the conclusion is false).

$F \& (\sim G \supset H), \sim H \equiv F \; \therefore \; \sim F \lor
\sim (H \& F)$

~~~{.TruthTable .Validity counterexample-to="validity" system="LogicBookSD" options="turnstilemark double-turnstile autoAtoms nodash" submission="none"}
PS2.9  F /\ (~G -> H), ~H <-> F :|-: ~F \/ ~(H /\ F)
~~~

[](From JTapp PS 3, problem 5b, Winter 2019)

~~~{.TruthTable .Validity counterexample-to="validity" system="LogicBookSD" options="turnstilemark double-turnstile autoAtoms nodash" submission="none"}
PS2.10  ~(Y<>A), ~Y, ~A :|-: W
~~~

~~~{.TruthTable .Validity counterexample-to="validity" system="LogicBookSD" options="turnstilemark double-turnstile autoAtoms nodash" submission="none"}
PS2.10b  ~(Y<>A), ~Y, A :|-: W
~~~



<!---

## Extra Questions, for future reference


Complete a truth table, then answer a question about it! 

[](From JTapp PS 3, problem 2a, Winter 2019)

~~~{.TruthTable .Simple system="ichikawaJenkinsSL" options="nodash autoAtoms nocounterexample" submission="none"}
PS2.e1 [E <> H] \/ [~E > ~H] 
~~~

```{.QualitativeProblem .MultipleChoice submission="none"}
PS2.e1b Which property describes the preceding sentence? 
| Tautalogy (truth-functionally true)
| *Contingent (truth-functionally indeterminate)
| Contradiction (truth-functionally false)
```



Determine if the following sentence is a tautology using
a complete truth table.

$(A \supset B) \lor (B \supset A)$

~~~{.TruthTable .Simple counterexample-to="tautology" system="LogicBookSD" submission="none"}
PS2.e2 (A -> B) \/ (B -> A)
~~~


Determine if the following sentence is a tautology using
a complete truth table.

$((A \supset B) \& \sim A) \supset \sim B$

~~~{.TruthTable .Simple counterexample-to="tautology" system="LogicBookSD" submission="none"}
PS2.e3 ((A -> B) /\ ~A) -> ~B
~~~

Determine if the following sentences are jointly satisfiable
(consistent) using a complete truth table. If they are, click
"consistent!", and when *Carnap* asks for the truth values in a
counterexample row, enter the truth values for the row that make all
sentences true (e.g. if the third row shows the sentences are consistent, then enter `FT` into the pop-up box).

$M \supset L, L \equiv (\sim M \& L)$

~~~{.TruthTable .Simple counterexample-to="inconsistency" system="LogicBookSD" submission="none"}
PS2.e4 M -> L, L <-> (~M /\ L)
~~~

The following seems very similar to part of an earlier problem where we evaluate a nested conditional 

[](From JTapp PS 3, problem 2c, Winter 2019)

~~~{.TruthTable .Simple system="ichikawaJenkinsSL" options="nodash autoAtoms nocounterexample" submission="none"}
PS2.e5a F > [G > F] 
~~~

```{.QualitativeProblem .MultipleChoice submission="none"}
PS2.e5b Which property describes the preceding sentence? 
| *Tautalogy (truth-functionally true)
| Contingent (truth-functionally indeterminate)
| Contradiction (truth-functionally false)
```


-->



###Getting Started with Natural Deduction


The following are a few simple natural deduction proofs. These questions are designed to get you used to natural deduction
and its rules, and how to format proofs in Carnap.



####Carnap Basics: 

In *Carnap*, you indicate that a line is a premise by writing `:PR` to
the right of the premise. (The ghost of Carnap has filled in the premise for you in the first problem below.) *Carnap* will render the proof nicely, off to
the right. For instance, it will draw a line under the last premise.
Now you will have to write the steps leading to the conclusion
underneath. 

- Nearly every line will have a sentence in it, and a justification
separated by a colon `:` to the right (the only exception is with adjacent subproofs used in rule `vE`---we'll get there!). 
- In the proof below, to justify line 2
by ∧E from line 1 you'd enter `:1 &E ` next to the sentence `A` being
justified. (Note: order matters here in the justification column. You MUST write line numbers first, then the derivation rule.) 
- In nice mode, a `+` will appear next to a line once you have entered a correct
justification for a legal line. If the justification is incorrect (or if your sentence is unjustifiable), you'll get a `?` or
a `✗`. *Carnap* will try to tell you what's wrong: hover the cursor over
the `?` or `✗` to see a hint. Sometimes these hints are a bit, well, cryptic (honestly they're often borderline useless). 

- Also really important: in your justification, you CANNOT put any symbols between the last line number and the rule you are citing. NO comma, or else poor Mr. Carnap gets confused. Spaces are fine (although no space necessary, e.g. `:2,3>E ` works!)

#### Problem 1

Give a formal proof of the following argument.

[](Following is from Zach PS3.6)

$A \& (B \& C) \therefore (C \& B) \& A$, i.e. from the assumption that $A \& (B \& C)$ is true, derive the conclusion $(C \& B) \& A$. (and think about why this is intuitively a valid inference!). 

~~~{.ProofChecker .LogicBookSD options="tabindent guides fonts resize render" submission="none"}
PS6.1 A & (B & C) :|-: (C & B) & A
|A & (B & C) :PR
~~~


From $\sim E \& A$, A $\supset$ $(B \& C)$, B $\supset$ D , derive $C \& (D \& \sim E)$ in our system SND. Remember to start your proof by typing each of the three premises on its own line, each followed by `:PR`:

[](Following is from Zach PS3.7)

~~~{.ProofChecker .LogicBookSD options="tabindent guides fonts resize render" submission="none"}
PS6.2 ~E /\ A, A -> (B /\ C), B -> D :|-: C /\ (D /\ ~E)
~~~


[](Following is from JTapp 303, PS4, number 1)

~~~{.ProofChecker .LogicBookSD options="tabindent guides fonts resize render" submission="none"} 
PS6.3 K > (~D & E), (A&K)&C :|-: ~D \/ B
~~~

Note Well: To justifiy Biconditional Intro or Elimination, you must type `<->I` or `<->E`  in the justification column. Typing with `<>` will NOT WORK!  This is a sad glitch in Carnap it seems! You can also copy/paste the $\equiv$ symbol. 

[](Following is from JTapp 303, PS4, number 2)

~~~{.ProofChecker .LogicBookSD options="tabindent guides fonts resize render" submission="none"} 
PS6.4 ~G <> F, D>~G, ~H&D :|-: F&~H
~~~

##Rules with Subproofs

For many subsequent problems, you will need to use the $\supset$I and/or $\lor$E
rules. These require subproofs. In *Carnap*, you indicate that a line is
part of a subproof by indenting it, i.e., adding one or more spaces to
the left of the sentence. 

- The assumption of a subproof is justified by writing 
  `:AS` to the right of the sentence (you can even tack on a little note to yourself if you want, e.g. `:AS for >I`, and this won't mess anything up! I write notes to myself all the time!)
- The **sentences within a subproof must line up exactly**. The easiest way to ensure proper alignment is to use the `tab` key. Use one `tab` for every layer of subproof. And look at the vertical scope lines in the rendering on the RIGHT of your proof; these scope lines show what *Carnap* thinks you've entered, even if YOU think you've entered SOMETHING ELSE. The goal is to impress *Carnap*, not yourself! (the customer is always right!) 

###Practicing Conditional Introduction 

- Give a formal proof of the following argument:

[](Following is from Zach PS3.8)

- $A \supset C, B \supset D \therefore (A \& B) \supset (C \& D)$

~~~{.ProofChecker .LogicBookSD options="tabindent guides fonts resize render" submission="none"} 
PS6.5 A -> C, B -> D :|-: (A /\ B) -> (C /\ D)
~~~

- Hint: use conditional intro to *build up* what you need! 

[](Following is from JTapp 303, PS4, number 3)

~~~{.ProofChecker .LogicBookSD options="tabindent guides fonts resize render" submission="none"} 
PS6.6 (B>B)>B :|-: B
~~~

### Practicing Disjunction Elimination 

In the next two problems you will need to use the $\lor$E rule, which requires
two subproofs. To separate two adjacent subproofs, enter a line with
only `--` at the right level of indentation. For instance, an
application of the $\lor$E rule would be entered like this:

~~~{.ProofChecker .LogicBookSD options="tabindent guides fonts resize render" init="now" submission="none"} 
Example P v P :|-: P & P
|P v P :PR
|  P :AS
|  P & P :2, 2 &I 
|--
|  P :AS
|  P & P :5, 5 &I 
|P & P :1, 2-3, 5-6 vE 
~~~

- In the example above, our subproofs are "one level deep", so we don't need to tab before entering `--`. 
- If your subproofs were two levels deep, then you would tab-in once for the `--`. 
- Notice the particularly complex justification structure for `vE`: you cite the line with the disjunction you're eliminating, then both subproofs. 

Give a formal proof of the following argument:

- $A \lor B, A \supset C, B \supset D \therefore C \lor D$

Remember to separate the two subproofs by `--`. This line should **not**
be indented (unless in a future problem you're using vE in the midst of a subproof!).

[](Following is from Zach, PS3.9)

~~~{.ProofChecker .LogicBookSD options="tabindent guides fonts resize render" submission="none"}
PS6.7 A \/ B, A -> C, B -> D :|-: C \/ D
~~~


Remember: To justifiy Biconditional Intro or Elimination, you must type `<->I` or `<->E`  in the justification column. Typing with `<>` will NOT WORK! You can also copy/paste the $\equiv$ symbol. 

[](Following is from JTapp 303, PS4, number 5)

~~~{.ProofChecker .LogicBookSD options="tabindent guides fonts resize render" submission="none"} 
PS6.8 ~F>~G, ~F \/ H, H<>~G :|-: ~G
~~~

##Negation Intro and Elimination:

- Rules `~I` and `~E` also involve starting subproofs. These are two of the most powerful rules, and when you're totally stuck, it's worth giving one of them a try. 

- To use rules `~I` and `~E`, you need an instance of a sentence and its negation both WITHIN the subproof, i.e. under your starting assumption that begins the subproof. 
- So if you're using an earlier sentence as one of the contradiction-sentences, you'll HAVE to reiterate it under your subproof assumption, using rule `R`. 

The following problem illustrates how you can derive ANYTHING from a contradiction (much like in dreams). If only someone could hook me up with a contradiction...

[](Following is from JTapp 303, PS4, number 4)

~~~{.ProofChecker .LogicBookSD options="tabindent guides fonts resize render" submission="none"} 
PS6.9 I &~I :|-: H&(~A \/ B)
~~~

For the next one, I recommend using two nested subproofs! Or as they say at SoulCycle: grab a towel, take a sip of water, and GET YOUR LIFE TOGETHER! 

[](Following is from JTapp 303, PS5, number 1)

~~~{.ProofChecker .LogicBookSD options="tabindent guides fonts resize render" submission="none"} 
PS6.10 ((A \/ R) > ~B) > B :|-: (~~B) \/ W
~~~



###Theorem proving (it's either going to be fun or not)

In these last two exercises we prove *theorems* (i.e. tautologies). You need to find a
proof which has no premises and the sentence $((A \lor (B \supset C) \&
B) \supset (C \lor (A \& A))$ as the last line. 

- You'll have to indent your first line and justify it as an assumption `:AS`, since we don't have any premises to start with. 
- Ultimately, you'll need to separate two adjacent subproofs again by `--`, but this time it must be indented to the level of the surrounding subproof.

~~~{.ProofChecker .LogicBookSD options="tabindent guides fonts resize render" submission="none"}
PS6.11  :|-: ((A \/ (B -> C)) /\ B) -> (C \/ (A /\ A))
~~~


Derive the law of excluded middle in our natural deduction system: 

- Remember to indent the first line or Carnap will be grumpy: 
- Remember that to use rules `~I` and `~E`, you need an instance of a sentence and its negation both within the subproof, i.e. under your starting assumption that begins the subproof. So if you're using an earlier sentence, you'll HAVE to reiterate it under your subproof assumption, using rule `R`. 


[](Following is from JTapp 303, PS4, number 6)

~~~{.ProofChecker .LogicBookSD options="tabindent guides fonts resize render" submission="none"}
PS6.12  :|-: P \/ ~P
~~~


An extra problem not on the problem set:

Three nested subproofs, LET'S GOOOOOOOOOOOOOOO!:

~~~{.ProofChecker .LogicBookSD options="tabindent guides fonts resize render" submission="none"} 
PS6.14 A \/ ~B :|-: ~(~A & B) 
~~~










