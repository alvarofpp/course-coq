Hypothesis U : Set.
Hypothesis u : U.
Hypothesis P : U -> Prop.

Lemma ex9 : forall x : U, P x -> exists y : U, P y.
Proof.
  intro x.
  intro Hp.
  exists x.
  assumption.
Qed.