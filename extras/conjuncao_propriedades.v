(*** Logical conjunction ***)
Variables A B C : Prop.

(* Comutatividade *)
Lemma and_commutativity : A /\ B -> B /\ A.
Proof.
  intro Hab.
  destruct Hab as [Ha Hb].
  split.
  +
    assumption.
  +
    assumption.
Qed.

(* Associatividade *)
Lemma and_associativity : A /\ (B /\ C) -> (A /\ B) /\ C.
Proof.
  intro Habc.
  destruct Habc as [Ha [Hb Hc]].
  split.
  +
    split.
    *
      assumption.
    *
      assumption.
  +
    assumption.
Qed.

(* Leis de De Morgan *)
Lemma and_de_morgan : ~A /\ ~B -> ~(A \/ B).
Proof.
  intros NHab DHab.
  destruct NHab as [NHa NHb].
  destruct DHab as [Ha|Hb].
  apply NHa.
  exact Ha.
  apply NHb.
  exact Hb.
Qed.

(* A contradição é sempre falsa *)
Lemma and_contradiction_always_false : A /\ ~A -> False.
Proof.
  intro CHa.
  destruct CHa as [Ha NHa].
  apply NHa.
  exact Ha.
Qed.

(* A verdade é o elemento neutro da conjunção *)
Lemma and_truth_neutral_element : A /\ True -> A.
Proof.
  intro CHa.
  destruct CHa as [Ha true].
  exact Ha.
Qed.

(* A falsidade é o elemento absorvente da conjunção *)
Lemma and_false_absorbent_element : A /\ False -> False.
Proof.
  intro CHa.
  destruct CHa as [Ha false].
  exact false.
Qed.

(* Distributividade em relação à disjunção lógica *)
Lemma and_distributivity_disjunction : A /\ (B \/ C) -> (A /\ B) \/ (A /\ C).
Proof.
  intro Habc.
  destruct Habc as [Ha [Hb|Hc]].
  +
    split.
  intro.
  intro.
  intro.
Qed.