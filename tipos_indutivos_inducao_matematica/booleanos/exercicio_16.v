Definition and_bool (b1 b2 : bool) : bool :=
  match b1 , b2 with
  | true  , b2 => b2
  | false , b2 => false
  end.

Lemma and_false_left : forall b, and_bool false b = false.
Proof.
  intro Hb.
  simpl.
  reflexivity.
Qed.