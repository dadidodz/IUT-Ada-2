with ada.Text_IO; use ada.Text_IO;
with ada.Integer_Text_IO; use ada.Integer_Text_IO;
with usager; use usager;

package tableau_usagers is

   LONGUEUR_NOM : constant Integer := 20;
   type Enregistrement is record
      numero_adherent : Integer;
      nom : String (1 .. LONGUEUR_NOM):= (others => '*');
      longueur: Integer;
      annee_naissance : Integer;
   end record;

   TAILLE_MAX : constant Integer:=100;
   type Tab_usagers is array (1..TAILLE_MAX) of Enregistrement;

   procedure lire_usagers ( usagers : out Tab_usagers; n : out Integer );

   procedure ecrire_usagers ( usagers : in Enregistrement; n : in Integer );

end tableau_usagers;
