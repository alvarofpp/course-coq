(* Forma 01 *)
Lemma ex2_f01 : (forall A B C : Prop, (A -> B) -> (B -> C) -> A -> C).
Proof.
  intros proof_of_A proof_of_B proof_of_C.
  intro A_implies_B.
  intro B_implies_C.
  intro.
  apply B_implies_C.
  apply A_implies_B.
  assumption.
Qed.

(* Forma 02 *)
Variables A B C : Prop.
Lemma ex2_f02 : (A -> B) -> (B -> C) -> A -> C.
Proof.
  intro Hab.
  intro Hbc.
  intro Ha.
  apply Hbc.
  apply Hab.
  assumption.
Qed.