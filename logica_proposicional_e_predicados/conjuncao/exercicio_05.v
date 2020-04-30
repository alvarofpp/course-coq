(* Forma 01 *)
Lemma ex5_f01 : (forall A B C : Prop, (A -> B -> C) -> ((A /\ B) -> C)).
Proof.
  intros proof_of_A proof_of_B proof_of_C.
  intro A_implies_B_implies_C.
  intro A_and_B.
  destruct A_and_B as [proof_of_A1 proof_of_B2].
  apply A_implies_B_implies_C.
    +
      assumption.
    +
      assumption.
Qed.

(* Forma 02 *)
Variables A B C : Prop.
Lemma ex5_f02 : (A -> B -> C) -> ((A /\ B) -> C).
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