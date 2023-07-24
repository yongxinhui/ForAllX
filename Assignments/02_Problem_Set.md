---
js: https://carnap.io/shared/rzach@ucalgary.ca/dark-mode.js
css: https://carnap.io/shared/rzach@ucalgary.ca/dark-mode.css
---
#### Phil 24.241 Logic I, Fall 2022 
# Problem Set \#2:
### Truth Tables!; validity, consistency, equivalence

<br />

<!---
This is problem set 2 for MIT Fall 2022 Logic I, 24.241.
Most problems come from Tappenden UMichigan 303 problem Set 2. A couple problems come from come from Zach Problem Set 3, modified for LogicBookSD system. Sometimes using IchikawaJenkinsSL to display brackets as well as parentheses.

Description for students: Problem Set 2! Mostly truth tables and basic semantic concepts (validity, equivalence, consistency). Due Friday 9/23 at 5pm Eastern. 

Comments to self can be entered with [blah blah]:: or [](blah blah). Former needs an empty space before the line! 

-->

###Directions:

```{.QualitativeProblem .ShortAnswer points=0}
PS2.0 If you worked with up to two other students on these problems, please let me know their names in the text box below:
```

When (and only when) you are happy with your answer, click the `Submit`
button. YOU CAN ONLY SUBMIT ONCE! So be careful! *Carnap* will then acknowledge and record your submission. There are 10 questions (some with parts), for a total of 100 points. 

 For problems that have a `Check` box, you can check your answer before submitting. Some low-point problems will actually REQUIRE your answer to be correct before allowing you to submit (this is to help make sure you know what you're doing for the later problems. It also grants you partial credit for the later problems, which will floor at 50percent if you attempt them). 

**You must ultimately click the `Submit` button for each exercise!**

*The fineprint*: Your student page on *Carnap* lists which problems you have completed.
You do not have to complete all problems at the same time; you can
come back to this page and complete part of the problem set later.
*However*, Carnap *will not save work on this page, and it won't show
which problems you already have submitted correctly!* So you should
keep track of which problems are done, and copy any work you want to
save and paste it into a text document for later use or reference (but **not for sharing with others**---that's cheating!). You
can also print the problem page with completed problems, or take
screenshots.



###Part 1: Filling out them tables! 

[](From JTapp PS 3, problem 2d, Winter 2019)

~~~{.TruthTable .Simple system="LogicBookSD" options="nodash autoAtoms nocounterexample" points=1}
PS2.1a  A > ~A 
~~~

```{.QualitativeProblem .MultipleChoice options="nocheck exam" points=1}
PS2.1b Which property describes the preceding sentence? 
| Tautalogy (truth-functionally true)
| *Contingent (truth-functionally indeterminate)
| Contradiction (truth-functionally false)
```

Remember to work from the *inside-out*, since the truth-value of the MAIN connective depends on the truth-values of the minor connectives.

[](From JTapp PS 3, problem 1a, Winter 2019)

~~~{.TruthTable .Simple system="LogicBookSD" options="nodash autoAtoms nocounterexample exam" points=1}
PS2.2  (A \/ C) <> ~A 
~~~

No option to check the following bad boy! So don't submit until you mean it! 

[](From JTapp PS 3, problem 1b, Winter 2019)

~~~{.TruthTable .Simple system="LogicBookSD" options="nodash nocheck exam autoAtoms nocounterexample exam nocheck" points=18}
PS2.3 (A>(B>C))&((A \/ B) <> C)
~~~

Again, make sure you identify the main connective below, so that you evaluate its column correctly! 

[](From JTapp PS 3, problem 1c, Winter 2019)

~~~{.TruthTable .Simple system="ichikawaJenkinsSL" options="nodash nocheck exam autoAtoms nocounterexample" points=18}
PS2.4 ~(D <> [~A & B]) <>  [~D v ~B] 
~~~

###Part 2: Consistency! Equivalence! 

Show that the following sentences are consistent by choosing a single truth value assignment for the atomic sentence letters such that each sentence is true. (There may be multiple correct answers: you just need to find one!) 

[](From JTapp PS 3, problem 4a, Winter 2019)

~~~{.TruthTable .Partial system="LogicBookSD" counterexample-to="inconsistency" options="autoAtoms nodash" points=1}
PS2.5 (A & B) > C, C & (D > A), A <> (B > D)
~~~

[](From JTapp PS 3, problem 4b, Winter 2019)

~~~{.TruthTable .Partial system="LogicBookSD" counterexample-to="inconsistency" options="autoAtoms nodash exam nocheck" points=8}
PS2.6 ~(H <> I), ~(I & J), ~(H & J), H \/ (I & J)
~~~

Determine if the following two sentences are equivalent
in Sentential Logic (SL) using a complete truth table. If they are INequivalent, then click `inequivalent` and enter a truth value assignment to the atomic sentence letters that shows this. 

~~~{.TruthTable .Simple counterexample-to="equivalence" system="LogicBookSD" options="autoAtoms nodash exam nocheck" points=8}
PS2.7 ~(A -> B),      A /\ ~B
~~~

###Part 3: What's that?! Another truth table???? 

Complete a truth table, then answer a question about it! 

~~~{.TruthTable .Simple system="ichikawaJenkinsSL" options="nodash nocheck exam autoAtoms nocounterexample" points=18}
PS2.8a [(C <> D) & (D <> E) & C] & ~E
~~~

```{.QualitativeProblem .MultipleChoice options="nocheck exam" points=2}
PS2.8b Which property describes the preceding sentence? (remember to make sure you've identified the MAIN connective)
| Tautalogy (truth-functionally true)
| Contingent (truth-functionally indeterminate)
| *Contradiction (truth-functionally false)
```



##Part 4 Oh Validity---you're so legit

Determine if the following arguments are valid in SL using a complete truth table or by constructing a counterexample to validity (i.e. by entering a truth value assignment to the atomic sentences on which the premises are all true but the conclusion is false).

$F \& (\sim G \supset H), \sim H \equiv F \; \therefore \; \sim F \lor
\sim (H \& F)$

~~~{.TruthTable .Validity counterexample-to="validity" system="LogicBookSD" options="turnstilemark double-turnstile autoAtoms nodash exam" points=6}
PS2.9  F /\ (~G -> H), ~H <-> F :|-: ~F \/ ~(H /\ F)
~~~

[](From JTapp PS 3, problem 5b, Winter 2019)

~~~{.TruthTable .Validity counterexample-to="validity" system="LogicBookSD" options="turnstilemark double-turnstile autoAtoms exam nocheck nodash" points=18}
PS2.10  ~(Y<>A), ~Y, ~A :|-: W
~~~



<!---

## Extra Questions, for future reference


Complete a truth table, then answer a question about it! 

[](From JTapp PS 3, problem 2a, Winter 2019)

~~~{.TruthTable .Simple system="ichikawaJenkinsSL" options="nodash autoAtoms nocounterexample" points=0}
PS2.e1 [E <> H] \/ [~E > ~H] 
~~~

```{.QualitativeProblem .MultipleChoice options="exam" points=0}
PS2.e1b Which property describes the preceding sentence? 
| Tautalogy (truth-functionally true)
| *Contingent (truth-functionally indeterminate)
| Contradiction (truth-functionally false)
```



Determine if the following sentence is a tautology using
a complete truth table.

$(A \supset B) \lor (B \supset A)$

~~~{.TruthTable .Simple counterexample-to="tautology" system="LogicBookSD" points=0}
PS2.e2 (A -> B) \/ (B -> A)
~~~


Determine if the following sentence is a tautology using
a complete truth table.

$((A \supset B) \& \sim A) \supset \sim B$

~~~{.TruthTable .Simple counterexample-to="tautology" system="LogicBookSD" points=0}
PS2.e3 ((A -> B) /\ ~A) -> ~B
~~~

Determine if the following sentences are jointly satisfiable
(consistent) using a complete truth table. If they are, click
"consistent!", and when *Carnap* asks for the truth values in a
counterexample row, enter the truth values for the row that make all
sentences true (e.g. if the third row shows the sentences are consistent, then enter `FT` into the pop-up box).

$M \supset L, L \equiv (\sim M \& L)$

~~~{.TruthTable .Simple counterexample-to="inconsistency" system="LogicBookSD" points=0}
PS2.e4 M -> L, L <-> (~M /\ L)
~~~

The following seems very similar to part of an earlier problem where we evaluate a nested conditional 

[](From JTapp PS 3, problem 2c, Winter 2019)

~~~{.TruthTable .Simple system="ichikawaJenkinsSL" options="nodash nocheck exam autoAtoms nocounterexample" points=0}
PS2.e5a F > [G > F] 
~~~

```{.QualitativeProblem .MultipleChoice options="nocheck exam" points=0}
PS2.e5b Which property describes the preceding sentence? 
| *Tautalogy (truth-functionally true)
| Contingent (truth-functionally indeterminate)
| Contradiction (truth-functionally false)
```


-->
















