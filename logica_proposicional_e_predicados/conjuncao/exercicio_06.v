(* Forma 01 *)
Lemma ex6_f01 : (forall A B C : Prop, ((A -> B) /\ (A -> C)) -> A -> (B /\ C)).
Proof.
  intros proof_of_A proof_of_B proof_of_C.
  intro AimpliesB_and_AimpliesC.
  destruct AimpliesB_and_AimpliesC as [A_implies_B A_implies_C].
  intro proof_of_A1.
  split.
    +
      apply A_implies_B.
      assumption.
    +
      apply A_implies_C.
      assumption.
Qed.

(* Forma 02 *)
Variables A B C : Prop.
Lemma ex6_f02 : ((A -> B) /\ (A -> C)) -> A -> (B /\ C).
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