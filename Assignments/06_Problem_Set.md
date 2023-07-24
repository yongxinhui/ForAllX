---
js: https://carnap.io/shared/rzach@ucalgary.ca/dark-mode.js
css: https://carnap.io/shared/rzach@ucalgary.ca/dark-mode.css
---
# Phil 24.241 Logic I
# Problem Set \#6 (Due Saturday 5pm SHARP)

<br />

<!---

This is problem set 6 for MIT Fall 2022 Logic I, 24.241. It is a blend of problems from the end of Zach PS3 (great exposition), modified for LogicBookSD system and Jtapp 303, all six problems of PS 4 and one problem from PS 5 (some harder problems)

Description for students: Problem Set 6! Basics of natural deduction, moving toward more complex proof construction. Due Saturday 10/22 by 5pm Eastern. Remember that there is midterm Wednesday 10/26, in class!!!

Comments to self can be entered with [blah blah]:: or [](blah blah). Former needs an empty space before the line! 

-->

###Directions:

```{.QualitativeProblem .ShortAnswer points=0}
PS6.0 If you worked with up to two other students on these problems, please let me know their names in the text box below. Otherwise, leave this blank and don't submit! 
```

When (and only when) you are happy with your answer, click the `Submit`
button. YOU CAN ONLY SUBMIT ONCE! So be careful! *Carnap* will then acknowledge and record your submission. There are 12 questions, for a total of 100 points. 

Some low-point problems will check your proof line-by-line, attempting to give some hints if you make mistakes (these hints are sometimes fairly useless, sorry---not my program!). Then, if you enter a valid deduction, you'll get a green check mark! 

Higher-point problems will give much more minimal hints, just about silly syntax errors. And no green check mark! So don't submit these till you're confident in your proof! As usual, the lower-point questions function as partial credit for the later ones, which will floor at 50% if you make an attempt. 

**You must ultimately click the `Submit` button for each exercise!**

*The fineprint*: Your student page on *Carnap* lists which problems you have completed. You do not have to complete all problems at the same time; you can come back to this page and complete part of the problem set later. *However*, Carnap *will not save work on this page, and it won't show
which problems you already have submitted correctly!* So you should
keep track of which problems are done, and copy any work you want to
save and paste it into a text document for later use or reference (but **not for sharing with others**---that's cheating!). You
can also print the problem page with completed problems, or take
screenshots.


### Before you leave this page, make sure every problem which you have solved correctly is also submitted!

<br />

[There are 10 questions, for a total of 10 points.]:: 

###Getting Started with Natural Deduction


The following are a few simple natural deduction proofs. These questions are designed to get you used to natural deduction
and its rules, and how to format proofs in Carnap.

- In *nice mode*, Carnap will check your proof with every key press.
- Once the top turns green, your proof is correct and ready to submit.
- **Then click the `Submit` button!**

[If you find that you don't know what the question is asking for, how
to start, or don't understand the format *Carnap* expects, please review
the ungraded practice problems for this week.]::

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

~~~{.ProofChecker .LogicBookSD options="tabindent guides fonts resize render" points=2}
PS6.1 A & (B & C) :|-: (C & B) & A
|A & (B & C) :PR
~~~


From $\sim E \& A$, A $\supset$ $(B \& C)$, B $\supset$ D , derive $C \& (D \& \sim E)$ in our system SND. Remember to start your proof by typing each of the three premises on its own line, each followed by `:PR`:

[](Following is from Zach PS3.7)

~~~{.ProofChecker .LogicBookSD options="tabindent guides fonts resize render" points=2}
PS6.2 ~E /\ A, A -> (B /\ C), B -> D :|-: C /\ (D /\ ~E)
~~~

##No more Mr. Nice-Nap! 

Okay, we move now into moderately disgruntled mode, wherein *Carnap* will only tell you about silly syntax errors. This is *Carnap* before he's had his coffee (it's also most people most of the time). 

[](Following is from JTapp 303, PS4, number 1)

~~~{.ProofChecker .LogicBookSD options="tabindent guides fonts resize render exam" feedback="syntaxonly" points=14} 
PS6.3 K > (~D & E), (A&K)&C :|-: ~D \/ B
~~~

Note Well: To justifiy Biconditional Intro or Elimination, you must type `<->I` or `<->E`  in the justification column. Typing with `<>` will NOT WORK!  This is a sad glitch in Carnap it seems! You can also copy/paste the $\equiv$ symbol. 

[](Following is from JTapp 303, PS4, number 2)

~~~{.ProofChecker .LogicBookSD options="tabindent guides fonts resize render exam" feedback="syntaxonly" points=14} 
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

You'll have nice-mode for the first one, and then *syntax-only* checking for the second. 

- Give a formal proof of the following argument:

[](Following is from Zach PS3.8)

- $A \supset C, B \supset D \therefore (A \& B) \supset (C \& D)$

~~~{.ProofChecker .LogicBookSD options="tabindent guides fonts resize render" points=2} 
PS6.5 A -> C, B -> D :|-: (A /\ B) -> (C /\ D)
~~~

- Hint: use conditional intro to *build up* what you need! 

[](Following is from JTapp 303, PS4, number 3)

~~~{.ProofChecker .LogicBookSD options="tabindent guides fonts resize render exam" feedback="syntaxonly" points=10} 
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

~~~{.ProofChecker .LogicBookSD options="tabindent guides fonts resize render" points=2}
PS6.7 A \/ B, A -> C, B -> D :|-: C \/ D
~~~


Remember: To justifiy Biconditional Intro or Elimination, you must type `<->I` or `<->E`  in the justification column. Typing with `<>` will NOT WORK! You can also copy/paste the $\equiv$ symbol. 

[](Following is from JTapp 303, PS4, number 5)

~~~{.ProofChecker .LogicBookSD options="tabindent guides fonts resize render exam" feedback="syntaxonly" points=20} 
PS6.8 ~F>~G, ~F \/ H, H<>~G :|-: ~G
~~~

##Negation Intro and Elimination:

- Rules `~I` and `~E` also involve starting subproofs. These are two of the most powerful rules, and when you're totally stuck, it's worth giving one of them a try. 

- To use rules `~I` and `~E`, you need an instance of a sentence and its negation both WITHIN the subproof, i.e. under your starting assumption that begins the subproof. 
- So if you're using an earlier sentence as one of the contradiction-sentences, you'll HAVE to reiterate it under your subproof assumption, using rule `R`. 

The following problem illustrates how you can derive ANYTHING from a contradiction (much like in dreams). If only someone could hook me up with a contradiction...

[](Following is from JTapp 303, PS4, number 4)

~~~{.ProofChecker .LogicBookSD options="tabindent guides fonts resize render" points=2} 
PS6.9 I &~I :|-: H&(~A \/ B)
~~~

For the next one, I recommend using two nested subproofs! Or as they say at SoulCycle: grab a towel, take a sip of water, and GET YOUR LIFE TOGETHER! 

[](Following is from JTapp 303, PS5, number 1)

~~~{.ProofChecker .LogicBookSD options="tabindent guides fonts resize render exam" feedback="syntaxonly" points=20} 
PS6.10 ((A \/ R) > ~B) > B :|-: (~~B) \/ W
~~~


<!---

[](Following is from JTapp 303, PS5, number 3)

Three nested subproofs, LET'S GOOOOOOOOOOOOOOO!:

~~~{.ProofChecker .LogicBookSD options="tabindent guides fonts resize render exam" feedback="syntaxonly" points=20} 
PS6.14 A \/ ~B :|-: ~(~A & B) 
~~~

-->


###Theorem proving (it's either going to be fun or not)

In these last two exercises we prove *theorems* (i.e. tautologies). You need to find a
proof which has no premises and the sentence $((A \lor (B \supset C) \&
B) \supset (C \lor (A \& A))$ as the last line. 

- You'll have to indent your first line and justify it as an assumption `:AS`, since we don't have any premises to start with. 
- Ultimately, you'll need to separate two adjacent subproofs again by `--`, but this time it must be indented to the level of the surrounding subproof.

~~~{.ProofChecker .LogicBookSD options="tabindent guides fonts resize render" points=2}
PS6.11  :|-: ((A \/ (B -> C)) /\ B) -> (C \/ (A /\ A))
~~~


Derive the law of excluded middle in our natural deduction system: 

- Remember to indent the first line or Carnap will be grumpy: 
- Remember that to use rules `~I` and `~E`, you need an instance of a sentence and its negation both within the subproof, i.e. under your starting assumption that begins the subproof. So if you're using an earlier sentence, you'll HAVE to reiterate it under your subproof assumption, using rule `R`. 


[](Following is from JTapp 303, PS4, number 6; note that important still to put in exam mode, since otherwise students can't submit incorrect work for partial credit)

~~~{.ProofChecker .LogicBookSD options="tabindent guides fonts resize render exam" points=10}
PS6.12  :|-: P \/ ~P
~~~

### Before you leave this page, make sure you have clicked `submit` for any problems you want to submit in their final form. Otherwise, copy/paste your work into a file for future use!
