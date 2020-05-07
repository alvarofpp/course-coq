Definition and_bool (b1 b2 : bool) : bool :=
  match b1 , b2 with
  | true  , b2 => b2
  | false , b2 => false
  end.

Lemma and_com : forall b b', and_bool b b' = and_bool b' b.
Proof.
  intro Hb.
  intro Hb'.
  destruct Hb.
  +
    simpl.
    destruct Hb'.
    *
      simpl.
      reflexivity.
    *
      simpl.
      reflexivity.
  +
    simpl.
    destruct Hb'.
    *
      simpl.
      reflexivity.
    *
      simpl.
      reflexivity.
Qed.