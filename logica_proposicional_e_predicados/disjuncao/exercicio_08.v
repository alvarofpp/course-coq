Variables A B C : Prop.
Lemma ex8 : (A \/ (B /\ C)) -> (A \/ B) /\ (A \/ C).
Proof.
  intro Ha_or_Hb_and_Hc.
  destruct Ha_or_Hb_and_Hc as [Ha | [Hb Hc]].
  +
    split.
      *
        left.
        assumption.
      *
        left.
        assumption.
  +
    split.
      *
        right.
        assumption.
      *
        right.
        assumption.
Qed.