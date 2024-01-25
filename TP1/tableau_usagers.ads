with ada.Text_IO; use ada.Text_IO;
with ada.Integer_Text_IO; use ada.Integer_Text_IO;
with usager; use usager;

package tableau_usagers is

   TAILLE_MAX : constant Integer:=100;
   type Tab_usagers is array (1..TAILLE_MAX) of Enregistrement;

   DEBORDEMENT : exception;

   TRANCHE_INVALIDE : exception;

   procedure lire_usagers ( usagers : out Tab_usagers; n : out Integer );

   procedure ecrire_usagers ( usagers : in Tab_usagers; n : in Integer );

end tableau_usagers;
