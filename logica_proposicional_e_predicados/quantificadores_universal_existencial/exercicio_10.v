Hypothesis U : Set.
Hypothesis u : U.
Hypothesis P : U -> Prop.
Hypothesis Q : U -> Prop.

Lemma ex10 : (forall x : U, P x -> ~ Q x) -> ~ exists y : U, P y /\ Q y.
Proof.
  intro HApq.
  intro HEpq.
  destruct HEpq as [y [Hp Hq]].
  destruct (HApq y).
  +
    assumption.
  +
    assumption.
Qed.