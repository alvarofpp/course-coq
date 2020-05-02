Hypothesis U : Set.
Hypothesis u : U.
Hypothesis P : U -> Prop.
Hypothesis Q : U -> Prop.

Lemma ex11 : (forall x : U, P x -> Q x) -> (forall x : U, ~ Q x) -> (forall x : U, ~ P x).
Proof.
  intro HApq.
  intro HAnq.
  intro y.
  unfold not.
  intro Hp.
  destruct (HAnq y).
  apply HApq.
  assumption.
Qed.