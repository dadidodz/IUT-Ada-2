with usager; use usager;
with ada.Text_IO; use ada.Text_IO;
with ada.Integer_Text_IO; use ada.Integer_Text_IO;

procedure test_usager is

   usager : Enregistrement;
   age: Integer;

begin
   lire_usager (usager);
   ecrire_usager (usager);
   age:= age_usager (usager);
   put ("L'age de l'usager est de ");
   put(age,0);
   put(" ans");
end test_usager;
