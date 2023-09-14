---
js: https://carnap.io/shared/rzach@ucalgary.ca/dark-mode.js
css: https://carnap.io/shared/rzach@ucalgary.ca/dark-mode.css
---

<!---
  title: "Practice Problems: Proofs for SND"
  original author: Richard Zach; modified by Josh Hunt
  description: The following are some practice problems on natural deduction proofs for SL. They cover Chapter 6 of _forall x: MIT, Fall 2022_. They use system LogicBookSD, so disallow the use of derived rules.


Comments to self can be entered with [blah blah]:: or [](blah blah). Former needs an empty space before the line! 

-->

Practice Problems: Proofs for SND
================================

The following are some practice problems on natural deduction proofs
for SL. They
cover Chapter 6 of _forall x:
MIT, Fall 2022_. 

Recall that when writing sentences of SL, remember you can use the following ways to enter connectives that are easier to do with a keyboard:

------------------------- -----------------------------
not ~                     `-`, `~`
and &                     `/\`,  `&`
or ∨                      `\/`, `v`
if then $\supset$                 `->`, `>`
if and only if $\equiv$          `<->`, `<>`
------------------------- -----------------------------

## The rules for &

To justify a sentence of the form $\mathscr{P} \& \mathscr{Q}$, you
need both $\mathscr{P}$ and $\mathscr{Q}$, separately, say with line
numbers $m$ and $n$. Then write as justification ": $m$, $n$ &I"
(replacing $m$, $n$ with the actual line numbers, of course). Don't forget the `:`!!! And order matters here: line number(s) FIRST, followed by the rule. 

You can use $\mathscr{P} \& \mathscr{Q}$ to justify either
$\mathscr{P}$ or $\mathscr{Q}$ (whichever one you need, but only one
per line). If $\mathscr{P} \& \mathscr{Q}$ appears on line number
$n$, write ":$n$ &E" next to $\mathscr{P}$  (or $\mathscr{Q}$, as the
case may be) as the justification.

Suppose you wanted to give a proof of the argument $A \& B
\therefore B \& A$. You would start your proof in the proof editor
by listing the premises at the top. In this case there is just one
premise, $A \& B$, which then is on line number 1. 

In Carnap, you indicate that a line is a premise by writing `:PR` to
the right. Carnap will render the proof nicely, off to the right. For
instance, it will draw a line under the last premise. Now you will
have to write the steps leading to the conclusion underneath. Each
line will have a sentence in it, and a justification separated by a
colon `:` to the right. For instance, to justify line 2 by &E from
line 1 you'd enter `:1 &E` next to the sentence `A` being justified.
(Note: there must be *no* symbols between the line numbers and therule, except possibly blank spaces)

Fill in the missing justifications in the proof outline below. A line
will get a `+` next to it once you have entered a correct
justification. If the justification is incorrect, you'll get a `?` or
a `✗`. Carnap will try to tell you what's wrong: hover the cursor over
the `?` or `✗` to see a hint.

~~~{.ProofChecker .LogicBookSD options="resize render tabindent fonts" init="now" submission="none"} 
PP6.1 A & B :|-: B & A
|A & B :PR
|A
|B
|B & A
~~~

Note that this roundabout way is necessary, since $B \& A$ and $A
\& B$ are different sentences. You first have to break $A \& B$
apart and then put it back together. But note that once you have both
$A$ and $B$ on separate lines, you can put them back together in any
order, so you can get $B \& A$ using $\&$I (which you want
here), and also $A \& B$ (which you don't want). You can also cite
a line twice, if you want to justify $A \& A$, for instance.

For the next exercise, write the premise on line 1 (i.e., `A & (B & C)
:PR`) and then try to find a proof of $A \& C$ as the last line.

~~~{.ProofChecker .LogicBookSD options="resize render tabindent fonts" submission="none"} 
PP6.2 A & (B & C) :|-: A & C
~~~

A tip: $\& E$ only breaks apart the exact conjunction into its two
components—in this case, you can only get $A$ and $B \& C$ from
line 1 using $\&$E. To get $C$, you have to apply $\&$E again.

- REMEMBER: the rules in a proof system are purely SYNTACTIC! The rules themselves know nothing of logical equivalence. We may pity the rules for this, but we admire them for the power they bring nonetheless. 

## The elimination rule for $\supset$

The elimination rule for $\supset$ is modus ponens: you can justify
$\mathscr{Q}$ if you already have both $\mathscr{P} \supset \mathscr{Q}$
and $\mathscr{P}$, on separate previous lines. 

In the next exercise you should prove $C \& D$ from the premises $A
\& B$, $A \supset C$, and $B \supset D$. You'll need the $\supset$E rule twice
to justify $C$ and then $D$, but before you can use it, you have to
prove the antecedents of the conditionals you cite. We've filled in
some sentences and justifications; you do the rest!

~~~{.ProofChecker .LogicBookSD options="resize render tabindent fonts" init="now" submission="none"} 
PP6.3 A & B, A > C, B > D :|-: C & D
|A & B :PR
|A > C:PR
|B > D:PR
|A
|C : >E
|?
|?
|C & D :?
~~~

## Proof construction strategies

We've already told you how the proof goes, but at this stage you may
rightly wonder: well, how do you come up with the lines in the first
place, other than guessing wildly? Chapter 6 describes some
strategies that you should always try to use. For instance, the very
first strategy is to "work backwards" from a conjunction. It applies in
this case. You want to prove $C \& D$. So your last line will have
to be $C \& D$. When you start a proof from scratch, you should
therefore not only put in the premises at the top, but also the last
line at the bottom, like so:

~~~{.ProofChecker .LogicBookSD options="resize render tabindent fonts" submission="none" init="now"} 
PP6.4 A & B, A > C, B > D :|-: C & D
|A & B :PR
|A > C:PR
|B > D:PR
|?
|C & D
~~~

- Note Well: If you choose to work backwards, I'd hold off on entering the line numbers in your justifications until the VERY end of your proof. Since otherwise, you'll have to renumber your justifications quite a bit as you add or delete lines. And that can lead to problems if you just forget to fix up your numbers. 

Now to "work backwards" from $C \& D$ means that you will put into
your partial proof whatever is needed in order for you to correctly
apply the $\&$I rule on the last line.  (**The last line is typically an **I**ntroduction rule for the main operator of the sentence you want to prove**, in this case
that's $\&$.) So you should write, between the premises and the
last line, the corresponding sentences you'd need as justifications
for $\&$I. In this case, that's $C$ and $D$. (Go on, do it: replace
the `?` by two lines containing $C$ and $D$.)

$C$ and $D$ are now your new "goals". You will also have to justify
those, before you can use them to justify the last line. Let's focus
on $C$. It has no main operator, so you cannot work backwards from it.
But you can work forwards from the premises. You'll note that $C$ is
also the consequent of the conditional $A \supset C$ on line 2. Working
forwards from a conditional means: put in your proof whatever you'd
need to justify your goal (here: $C$) from the sentence you have
(here: $A \supset C$) by the **E**limination rule for the main operator of the sentence
you're working forward from (here: $\supset$). Since to use $\supset$E to
justify $C$ from $A \supset C$ also requires you to have proved $A$,
that's what you enter. (Go on, write $A$ on a new line above $C$.)

You'll now note that you can justify $A$ by $\&$E from premise 1.
Then you can justify $C$ by $\supset$E. Now you go through the same
process with $D$: working forward from the premise on line 3 you enter
$B$ above $D$. You can justify $B$ by $\&$E from line 1, $D$ by
$\supset$E from $B$ and premise 3. Finally, now you can justify the last
line $C \& D$ by $\&$I.

Here's another longer exercise, without hints (remember: if you believe in yourself, then logic will believe in you):

~~~{.ProofChecker .LogicBookSD options="resize render tabindent fonts" submission="none" points=0} 
PP6.5 G & H, K, (K & G) > L, H > (M & O) :|-: L & O
~~~

## The introduction rule for $\supset$

The $\supset$I rule requires a new idea, namely that of a subproof. To
justify a conditional $\mathscr{P} \supset \mathscr{Q}$ you need a
separate proof in which $\mathscr{P}$ is an assumption made in
addition to the premises of the entire proof (like a play within the play, as we might say). 

In Carnap, a subproof is made by _indenting_ the lines that make up
the subproof, and by justifying its first line (the assumption of the
subproof) by `:AS` on the right of the sentence. 

- Note that you can always write a little note to yourself after the `:AS`, as we've done below, to remind yourself what you're making the assumption for. Ultimately, you'll have to "discharge" the assumption by applying the appropriate rule. 

~~~{.ProofChecker .LogicBookSD options="resize render tabindent fonts" submission="none"} 
PP6.6 R :|-: L > (R & L)
|R :PR
|   L :AS for >I
|   R & L :1,2 &I 
|L > (R & L) :2-3>I
~~~

- Note Well!!!: When you cite a subproof in a justification line, you must cite THE WHOLE SUBPROOF by using a HYPHEN!!! e.g. `2-3` if the subproof is lines 2 thru 3. This is VERY different than writing 2, 3 as you do with rules that cite exactly two lines. 

Sentences not in a subproof must not be indented at all, and sentences
in the same subproof must be indented the EXACT same number of spaces. Otherwise, Carnap will be confused (and can you blame it? Carnap doesn't have a brain!). 

- To manage various levels of subproof, I HIGHLY recommend the following convention to live by: press `tab` once for each level of subproof. So if you're two levels deep, start each new line within that subproof by pressing `tab` twice. Then, when you break out of the second layer back to the first, you'll do one `tab`. Then when you break out of that layer (and like the caterpillar, we must all break free eventually), you'll be back to zero `tabs`.

- Keeping track of all this is part of the point! The tabs generate layers of scope lines, and they represent which assumptions are "in play" during a proof, i.e. which assumptions a given line is "in the scope of" and can thereby appeal to. Much like at a bar, if you don't close out your tab, you still get charged gratuity. You can't fight the man. 

- Sometimes it helps to look at the nice
rendering of the proof on the right: if the vertical lines extend too
far or not far enough, you're most likely to have your indentation
wrong. Annoyingly, the rendering of the proof sometimes looks right,
but the indentation is still wrong.  So you have to be careful.

Try your hand at fixing the following proof by fixing the indentations. It's
not completely right until the top bar turns green, even if every line
has a `+` next to it.

~~~{.ProofChecker .LogicBookSD options="resize render tabindent fonts" submission="none"} 
PP6.7  :|-: (A & A) > A
|  (A & A) :AS
|   A :1 &E
| (A & A) > A :1-2 >I 
~~~

This last proof is also an example of a proof of a *theorem*: $(A \& A) \supset A$ is a tautology, and its proof does not need any premises.
The $\supset$I rule, because it requires a subproof, allows us, so to
speak, to make up our own premises (namely the antecedent of the
conditional we're proving, which has to be an assumption of the
subproof).

Let's prove that $A \supset B, B \supset C \vdash A \supset C$. Your last line has
to be $A \supset C$, and it must *not* be indented at all. To prove it,
you work backward: To use $\supset$I to justify $A \supset C$, you need (above
the last line) a subproof with assumption $A$ and last line $C$. So
you start your proof like this:

~~~{.ProofChecker .LogicBookSD options="resize render tabindent fonts" submission="none"} 
PP6.8 A > B, B > C :|-: A > C
|A > B :PR
|B > C :PR
|   A :AS
|   ?
|   C
|A > C :>I
~~~

Again, be careful when you write subproofs: the lines in a subproof
all have to be indented the exact same amount (so follow the `tab` norm described above!).  Carnap's pretty
rendering can help, but sometimes misleads. See what happens if you
add a space or remove one before the line with `C` in it in the last
proof to see what happens. Also, remember that the very last line of
your proof should *never* be indented, i.e., never be inside a
subproof. 

Now let's combine all the rules we have so far to show that $A \supset (B
\supset C) \vdash (A \& B) \supset (A \& C)$. Start by writing the
premise and conclusion as the first and last line, then construct a
subproof in between that you can use to justify the conclusion using
$\supset$I. For this to work, its assumption must be the antecedent of $(A
\& B) \supset (A \& C)$ and its last line the consequent. Remember,
the assumption should have `:AS` as its justification on the right.

~~~{.ProofChecker .LogicBookSD options="resize render tabindent fonts" submission="none"} 
PP6.9 A > (B > C) :|-: (A & B) > (A & C)
~~~

## The rules for $\lor$

The $\lor$I rule is very simple: you can justify $\mathscr{P} \lor
\mathscr{Q}$ if you have $\mathscr{P}$, where $\mathscr{Q}$ can be ANYTHING! And here, I mean ANY well-formed formula of SL. Likewise if you have $\mathscr{Q}$, then you can justify $\mathscr{P} \lor
\mathscr{Q}$ or $\mathscr{P} \lor
\mathscr{Q}$ for any $\mathscr{P}$. So or-Introduction is like the reverse of the $\&$E rule.

~~~{.ProofChecker .LogicBookSD options="resize render tabindent fonts" submission="none"} 
PP6.10 :|-: A > (B \/ A)
~~~

The $\lor$E rule is more complicated. It requires _two_ subproofs. To
justify some sentence $\mathscr{R}$ using a disjunction $\mathscr{P}
\lor \mathscr{Q}$ you need in addition two subproofs, one that derives
$\mathscr{R}$ from the assumption $\mathscr{P}$, and one that derives
$\mathscr{R}$ from the assumption $\mathscr{Q}$. (To tell Carnap where
one subproof ends and the next one starts, type `--` on a line by
itself. The `--` should be indented the same amout as the
sentences in the _surrounding_ (sub)proof.)

~~~{.ProofChecker .LogicBookSD options="resize render tabindent fonts" submission="none" points=0} 
PP6.11 A \/ B :|-: B \/ A
|A \/ B :PR
|   A :AS
|   ?
|--
|   B :AS
|   ?
|B \/ A 
~~~

- Note that the sentence $\mathscr{R}$ can be anything. It may even be
one of the disjuncts, e.g, $\mathscr{Q}$. But, and this is important,
the last sentence in both subproofs must be the same, and also
identical to the sentence you are justifying using $\lor$E.

- Note also the complex structure of the line numbers in the justification for $\lor$E: you cite first the line number with the disjunction on it, then the first subproof (using a HYPHEN), and finally the second subproof (again using a hyphen). e.g. `1, 2-3, 5-6 vE`. 

## Reiteration

The reiteration rule R is a very simple rule that sometimes comes in
handy. It allows you to simply repeat a previous line. For instance,
we need it if we want to prove that $A \supset A$ is a tautology. This
involves proving $A \supset A$, but our proof has no premises at all.

Working strategically is especially important when you prove
tautologies like this one. You start by writing down $A \supset A$ as the
last line of your proof. Then construct your
proof _above_ the sentence you're proving. Work backward from your
goal sentence (here: $A \supset A$) by writing down what the Introduction rule for
the main connective (here: $\supset$I) requires as a justification. In our
case, we will need a subproof with assumption $A$ and last line $A$.
Now use the R rule!

~~~{.ProofChecker .LogicBookSD options="resize render tabindent fonts" submission="none"} 
PP6.12 :|-: A > A
~~~

[Carnap will put a $\to p$ to the left of $\vdash$ if you're expected
to give a proof with no premises at all.]::

Here's another example: If $B$ is true, then $A \supset B$ is true. After
all, the conditional $A \supset B$ is true iff either $A$ is false or $B$
is true. So the argument $B \therefore A \supset B$ is valid.

~~~{.ProofChecker .LogicBookSD options="resize render tabindent fonts" submission="none"} 
PP6.13 B :|-: A > B
~~~

You'll often need to do subproofs inside a bigger subproof. Here's an
example that illustrates this:

~~~{.ProofChecker .LogicBookSD options="resize render tabindent fonts" submission="none" points=0} 
PP6.14 :|-: A > (B > A)
~~~

Let's look at an example where we use $A \lor B$ and $\lor$E to
justify $B$ (i.e., $B$ plays both the role of $\mathscr{Q}$ and
$\mathscr{R}$). You will still need two subproofs in this case,
although one is very simple (and just involves the assumption $B$ and
a single use of the R rule.)

~~~{.ProofChecker .LogicBookSD options="resize render tabindent fonts" submission="none"} 
PP6.15 A \/ B, A > B :|-: B
~~~

Let's now prove $A$ from $A \lor A$. Here $A$ plays both the role of
$\mathscr{P}$, $\mathscr{Q}$ and $\mathscr{R}$ at the same time. You
can do two subproofs in this case, both the same, and involving just
the assumption $A$ and a single use of the R rule. Or you can just
make one subproof, but cite it twice in the $\lor$E rule.

~~~{.ProofChecker .LogicBookSD options="resize render tabindent fonts" submission="none"} 
PP6.16 A \/ A :|-: A
~~~

Now, because we're amped from having done 16 problems, let's apply the strategies to give a proof of something harder (something that originally was so difficult it was impossible to prove!):

[ note to josh, previously had an invalid claim here, asking them to prove A & (B & C) which does not follow, camila Z. caught this mistake]::

~~~{.ProofChecker .LogicBookSD options="resize render tabindent fonts" submission="none"} 
PP6.17 (A & B) \/ (A & C) :|-: A & (B \/ C)
~~~



## Rules for $\sim$

The rules for negation introduction and elimination are structurally almost identical. In each case, we begin a sub-proof, assuming the *opposite* of what we want to prove. We then derive a contradiction within the sub-proof, i.e. a pair of sentences
$\mathscr{P}$ and $\sim$$\mathscr{P}$. Once we have achieved this, we can pop out of our subproof, discharging the offending assumption. 

If we started by assuming $\mathscr{Q}$, then we'll introduce a negation to get $\sim$$\mathscr{Q}$. If instead, we started by assuming $\sim$$\mathscr{Q}$, we'll eliminate the negation to obtain $\mathscr{Q}$ (implicitly, what we're doing is this: we're adding a negation to $\sim$$\mathscr{Q}$ to get $\sim$$\sim$$\mathscr{Q}$, and then using the classical rule of double negation elimination).

Note that we often derive our contradiction by reiterating an earlier sentence. So it's not the case that you have to derive each of $\mathscr{P}$ and $\sim$$\mathscr{P}$ "for the first time" within your subproof. Provided your subproof is in the scope of an earlier instance of $\mathscr{P}$ or $\sim$$\mathscr{P}$, you can reiterate it on a line within the subproof. 

With these rules, we can finally justify disjunctive syllogism, i.e. the rule that from P v Q and ~Q, we can infer P:

~~~{.ProofChecker .LogicBookSD options="resize render tabindent fonts" submission="none" points=0} 
PP6.18 A \/ B, ~B :|-: A
~~~

Here's another example where a negation rule is needed: as we know well by now (hopefully!), a conditional $A
\supset B$ is true iff either $A$ is false or $B$ is true. Since $A$ is
false iff $\sim$$A$ is true, that means the argument $\sim$$A$
$\therefore A \supset B$ is valid. Let's prove it!

~~~{.ProofChecker .LogicBookSD options="resize render tabindent fonts" submission="none"} 
PP6.19 ~A :|-: A > B
~~~

To see how the $\sim$I rule works, let's prove $A \supset$ $\sim$$\sim$$A$:

~~~{.ProofChecker .LogicBookSD options="resize render tabindent fonts" submission="none"} 
PP6.20 :|-: A > ~~A
~~~

Here's another good example: the law of contraposition for conditionals. 

- This one will require triple-nested subproofs (so keep track of the layers using your `tab` key!)! Note that since this statement is a tautology, we begin with no premises! So we have to start right off the bat with an assumption. 
- Remember that when working toward a conditional, you often have to build up the conditional by assuming an antecedent for conditional introduction. 

~~~{.ProofChecker .LogicBookSD options="resize render tabindent fonts" submission="none"} 
PP6.21 :|-: (A > B) > (~B > ~A)
~~~

Negation elimination ($\sim$E) works just
like $\sim$I, except the roles of $\mathcal{Q}$ and
$\sim$$\mathcal{Q}$ are reversed. In other words, by starting a subproof with
assumption $\sim$$\mathcal{Q}$ and deriving a contradiction, we can justify $\mathcal{Q}$.  You should try Negation Elimination if all the other rules and
strategies don't lead to a solution.

Let's prove the converse of contraposition for conditionals. It's like
PP6.21, but you'll need $\sim$E instead of $\sim$I.

~~~{.ProofChecker .LogicBookSD options="resize render tabindent fonts" submission="none" points=0} 
PP6.22 :|-: (~A > ~B) > (B > A)
~~~

Now something a bit more challenging: one direction of one of De
Morgan's laws. (note that the next two problems are almost certainly more challenging than anything you'll be asked to do on an exam!)

[Note that this is E35 in GB derivation doc!]::

~~~{.ProofChecker .LogicBookSD options="resize render tabindent fonts" submission="none" points=0} 
PP6.23 ~(A \/ B) :|-: (~A & ~B)
~~~

Now let's try the other direction, but this time as a tautology:

[Note that this is E33 in GB derivation doc!]::

~~~{.ProofChecker .LogicBookSD options="resize render tabindent fonts" submission="none" points=0} 
PP6.24  :|-: (~A & ~B) > ~(A \/ B)
~~~


<!---

Following follows Calgary style rules: 

## Rules for $\sim$

To deal with $\sim$, we introduce a new symbol into our language:
$\bot$. It works just like a sentence letter, except that we think of
it as a sentence letter that is always false. It's read as
"contradiction". Naturally, we let it be justified in a proof if we
have somehow arrived at an outright contradiction: a pair of sentences
$\mathscr{P}$ and $\sim \mathscr{P}$. That's the $\sim$E rule: we
can use $\sim \mathscr{P}$ to justify $\bot$ if we also have
$\mathscr{P}$.

The $\sim$I rule allows us to justify $\sim \mathscr{P}$ if we can
show that assuming $\mathscr{P}$ leads to a contradiction, in other
words, if we can construct a subproof with assumption $\mathscr{P}$
and last line $\bot$.

Finally, we have a weird rule, called "explosion" X. We can use $\bot$
to justify _anything_.

The rules $\sim$E and X finally allow us to justify disjunctive syllogism.

~~~{.ProofChecker .LogicBookSD options="resize render tabindent fonts" submission="none" points=0} 
PP6.18 A \/ B, ~B :|-: A
~~~

Here's another example where the X rule is needed: a conditional $A
\supset B$ is true iff either $A$ is false or $B$ is true. Since $A$ is
false iff $\sim A$ is true, that means the argument $\sim A
\therefore A \supset B$ is valid. Let's prove it!

~~~{.ProofChecker .LogicBookSD options="resize render tabindent fonts" submission="none"} 
PP6.19 ~A :|-: A > B
~~~

To see how the $\sim$I rule works, let's prove $A \supset \sim\sim A$:

~~~{.ProofChecker .LogicBookSD options="resize render tabindent fonts" submission="none"} 
PP6.20 :|-: A > ~~A
~~~

Here's another relatively easy one: the law of contraposition. This
one will require triple-nested subproofs!

~~~{.ProofChecker .LogicBookSD options="resize render tabindent fonts" submission="none"} 
PP6.21 :|-: (A > B) > (~B > ~A)
~~~

Now something a bit more challenging: one direction of one of De
Morgan's laws.

~~~{.ProofChecker .LogicBookSD options="resize render tabindent fonts" submission="none" points=0} 
PP6.22 ~(A \/ B) :|-: (~A & ~B)
~~~

(You can find the solution in Chapter 17.)

Now let's try the other direction, but this time as a tautology:

~~~{.ProofChecker .LogicBookSD options="resize render tabindent fonts" submission="none" points=0} 
PP6.23  :|-: (~A & ~B) > ~(A \/ B)
~~~

## Indirect proof

The final rule of natural deduction is indirect proof, IP. It works
like $\sim$I, except the roles of $\mathcal{P}$ and
$\sim\mathcal{P}$ are reversed. In other words, a subproof with
assumption $\sim\mathcal{P}$ that leads to $\bot$ allows you to
justify $\mathcal{P}$.  You should use IP if all the other rules and
strategies don't lead to a solution.

First, an easy exercise: the converse of contraposition. It's like
PP6.21, but you'll need IP instead of $\sim$I.

~~~{.ProofChecker .LogicBookSD options="resize render tabindent fonts" submission="none" points=0} 
PP6.23 :|-: (~A > ~B) > (B > A)
~~~

A harder example is $A \lor \sim A$:

~~~{.ProofChecker .LogicBookSD options="resize render tabindent fonts" submission="none" points=0} 
PP6.24 :|-: A \/ ~A
~~~

-->

<!---

## A proof box for you to play in!

Want to use Carnap to construct and check an arbitrary proof? You can
do that in this "playground" proof editor. Use it for any of the
exercises from Part IV in the book, for instance. (It will accept
derived rules, too. Your instructor might not allow you to use them on
your assignments, so check your instructions before you get used to DS
et al.)

~~~{.Playground .ZachTFL options="resize render tabindent autoindent fonts"} 
~~~

Your proof is correct if all lines have a `+` next to them. Since
Carnap does not know what you're *trying* to prove, it will tell you
in the top line what you *have* proved. 

--> 