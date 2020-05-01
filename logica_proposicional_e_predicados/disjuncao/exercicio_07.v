Variables A B : Prop.
Lemma ex7 : ((A \/ B) /\ ~ A) -> B.
Proof.
  intro HaOrHb_and_Hna.
  destruct HaOrHb_and_Hna as [Ha_or_Hb Hna].
  destruct Ha_or_Hb as [Ha | Hb].
  +
    contradiction.
  +
    exact Hb.
Qed.