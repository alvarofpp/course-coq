(* OR *)
Definition or_bool (b1 b2 : bool) : bool :=
  match b1 , b2 with
  | true, b2 => true
  | b1, true => true
  | b1, b2 => false
  end.

(* XOR *)
Definition xor_bool (b1 b2 : bool) : bool :=
  match b1 , b2 with
  | true, false => true
  | false, true => true
  | b1, b2 => false
  end.