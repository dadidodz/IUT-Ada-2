with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

-- Calcule votre note finale d'algorithmique sur 20
procedure note is

   note : Integer;

begin
   -- lecture de la note
   New_Line;
   Put_Line ("Quelle est votre note en algorithmique ? ");
   Get (note);
   -- modification de la note
   while note < 0 or note > 20 loop
      New_Line;
      Put_Line ("Note non comprise entre 0 et 20, veuillez ressaisir la note");
      Get (note);
   end loop;
   if note < 19 then
      note := note + 2;
   elsif note = 19 then
      note := note + 1;
   end if;
   -- affichage de la note
   Put ("Votre note est ");
   Put (note);
   Put_Line ("/20 car vous avez bien travaille !!");
   New_Line;

end note;
