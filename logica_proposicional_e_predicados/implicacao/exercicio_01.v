(* Forma 01 *)
Lemma ex1_f01 : (forall A B : Prop, A -> B -> A).
Proof.
  intros proof_of_A proof_of_B.
  intro A_implies_B.
  intro B_implies_A.
  assumption.
Qed.

(* Forma 02 *)
Variables A B : Prop.
Lemma ex1_f02 : A -> B -> A.
Proof.
  intro Hab.
  intro Ha.
  apply Hab.
Qed.