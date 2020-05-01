Variables A B C : Prop.
Lemma ex3 : (A /\ B) /\ C -> A /\ (B /\ C).
Proof.
  intro Ha_and_Hb_and_Hc.
  destruct Ha_and_Hb_and_Hc as [[Ha Hb] Hc].
  split.
    +
      assumption.
    +
      split.
        *
          assumption.
        *
          assumption.
Qed.