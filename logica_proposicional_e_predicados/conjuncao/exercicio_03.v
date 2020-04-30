(* Forma 01 *)
Lemma ex3_f01 : (forall A B C : Prop, (A /\ B) /\ C -> A /\ (B /\ C)).
Proof.
  intros proof_of_A proof_of_B proof_of_C.
  intro A_and_B_and_C.
  destruct A_and_B_and_C as [[proof_of_A1 proof_of_B1] proof_of_C1].
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

(* Forma 02 *)
Variables A B C : Prop.
Lemma ex3_f02 : (A /\ B) /\ C -> A /\ (B /\ C).
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