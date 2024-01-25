with Ada.Text_IO; use Ada.Text_IO;
with operations_systeme; use operations_systeme;
package body code is

   ---------------
   -- lire_code --
   ---------------

   procedure lire_code (tab_chiffres : out Tab_caracteres) is
	   begin
	      Put ("Entrer le premier chiffre du code d'identification : ");
 	      Get (tab_chiffres (1));
	      Put ("Entrer le second chiffre du code d'identification : ");
	      Get (tab_chiffres (2));
	      Put ("Entrer le troisième chiffre du code d'identification : ");
	      Get (tab_chiffres (3));
	      Put ("Entrer le quatrième chiffre du code d'identification : ");
      Get (tab_chiffres (4));
   end lire_code;


   -----------------
   -- code_valide --
   -----------------
	   -- retourne VRAI si le code mémorisé dans le tableau tab_chiffres est
	   -- correct et FAUX sinon
	   -- entraine résultat = (valeur_chiffre(tab_chiffres(4))=
	   -- (valeur_chiffre(tab_chiffres(1))
	   -- 	+ valeur_chiffres(tab_chiffre(2))
	   --	+ valeur_chiffres(tab_chiffre(3))) mod 7)
   function code_valide (tab_chiffres : in Tab_caracteres) return Boolean is
      chiffre_du_reste:Integer;
   begin
	      -- déterminer le chiffre du reste
	      chiffre_du_reste :=
	        (valeur_chiffre (tab_chiffres (1)) +
	         valeur_chiffre (tab_chiffres (2)) +
	         valeur_chiffre (tab_chiffres (3))) mod
	        7;
	      -- tester si le code est correct
	      return (chiffre_du_reste = valeur_chiffre (tab_chiffres (4)));
   end code_valide;

end code;
