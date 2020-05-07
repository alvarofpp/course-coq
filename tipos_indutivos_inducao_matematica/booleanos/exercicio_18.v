Definition and_bool (b1 b2 : bool) : bool :=
  match b1 , b2 with
  | true  , b2 => b2
  | false , b2 => false
  end.

Lemma and_assocc : forall b1 b2 b3, and_bool b1 (and_bool b2 b3) = and_bool (and_bool b1 b2) b3.
Proof.
  intro Hb.
  intro Hb'.
  intro Hb''.
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