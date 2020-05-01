Variables A B : Prop.
Lemma ex1 : A -> B -> A.
Proof.
  intro Hab.
  intro Ha.
  apply Hab.
Qed.