Variables A B C : Prop.
Lemma ex5 : (A -> B -> C) -> ((A /\ B) -> C).
Proof.
  intro Ha_implies_Hb_implies_Hc.
  intro Ha_and_Hb.
  destruct Ha_and_Hb as [Ha Hb].
  apply Ha_implies_Hb_implies_Hc.
    +
      assumption.
    +
      assumption.
Qed.