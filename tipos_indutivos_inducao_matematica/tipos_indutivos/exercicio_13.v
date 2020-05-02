Inductive disj1 (A B : Prop) : Prop :=
| or1 : A -> disj1 A B
| or2 : B -> disj1 A B.