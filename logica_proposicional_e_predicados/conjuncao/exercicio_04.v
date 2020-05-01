Variables A B C : Prop.
Lemma ex4 : ((A /\ B) -> C) -> (A -> B -> C).
Proof.
  intro Ha_and_Hb_implies_Hc.
  intro Ha.
  intro Hb.
  apply Ha_and_Hb_implies_Hc.
  split.
    +
      assumption.
    +
      assumption.
Qed.