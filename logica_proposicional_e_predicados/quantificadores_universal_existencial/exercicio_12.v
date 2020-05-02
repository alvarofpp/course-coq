(* "Todo homem é mortal. Sócrates é um homem. Logo, Sócrates é mortal". *)

Hypothesis U : Set.
Hypothesis Men : U -> Prop.
Hypothesis Mortals : U -> Prop.

Lemma ex12 : (forall man : U, Men man -> Mortals man) -> (forall man : U, Men man) -> (forall man : U, Mortals man).
Proof.
  intro HApq.
  intro HAp.
  intro socrates.
  apply HApq.
  apply HAp.
Qed.