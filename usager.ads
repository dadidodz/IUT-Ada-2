with ada.Text_IO; use ada.Text_IO;
with ada.Integer_Text_IO; use ada.Integer_Text_IO;
with ada.Calendar; use ada.Calendar;

package usager is
   LONGUEUR_NOM : constant Integer := 20;
   type Enregistrement is record
      numero_adherent : Integer;
      nom : String (1 .. LONGUEUR_NOM):= (others => '*');
      longueur: Integer;
      annee_naissance : Integer;
   end record;

procedure lire_usager ( usager : out Enregistrement );

procedure ecrire_usager ( usager : in Enregistrement );

function age_usager (usager : in Enregistrement ) return Integer;

end usager;
