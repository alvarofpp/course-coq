Variables A B C : Prop.
Lemma ex2 : (A -> B) -> (B -> C) -> A -> C.
Proof.
  intro Hab.
  intro Hbc.
  intro Ha.
  apply Hbc.
  apply Hab.
  assumption.
Qed.