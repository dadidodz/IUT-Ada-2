package body operations_systeme is

   --------------------
   -- valeur_chiffre --
   --------------------

   function valeur_chiffre (c : in Character) return Integer is
   begin
      return (Character'Pos (c) - Character'Pos ('0'));
   end valeur_chiffre;

end operations_systeme;
