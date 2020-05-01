Variables A B C : Prop.
Lemma ex6 : ((A -> B) /\ (A -> C)) -> A -> (B /\ C).
Proof.
  intro HaImpliesHb_and_HaImpliesHc.
  destruct HaImpliesHb_and_HaImpliesHc as [Ha_implies_Hb Ha_implies_Hc].
  intro Ha.
  split.
    +
      apply Ha_implies_Hb.
      assumption.
    +
      apply Ha_implies_Hc.
      assumption.
Qed.