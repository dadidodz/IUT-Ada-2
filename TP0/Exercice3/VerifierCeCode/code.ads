package code is

   N : constant Integer := 4;
   type Tab_caracteres is array (1 .. N) of Character;

   procedure lire_code (tab_chiffres : out Tab_caracteres);

   function code_valide (tab_chiffres : in Tab_caracteres) return Boolean;

end code;
