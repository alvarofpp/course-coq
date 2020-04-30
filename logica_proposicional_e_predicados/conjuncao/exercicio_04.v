(* Forma 01 *)
Lemma ex4_f01 : (forall A B C : Prop, ((A /\ B) -> C) -> (A -> B -> C)).
Proof.
  intros proof_of_A proof_of_B proof_of_C.
  intro A_and_B_implies_C.
  intro proof_of_A1.
  intro proof_of_B1.
  apply A_and_B_implies_C.
  split.
    +
      assumption.
    +
      assumption.
Qed.

(* Forma 02 *)
Variables A B C : Prop.
Lemma ex4_f02 : ((A /\ B) -> C) -> (A -> B -> C).
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