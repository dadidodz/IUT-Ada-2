package body tableau_usagers is

   procedure lire_usagers (usagers : out Tab_usagers; n : out Integer) is
      i : Integer := 1;
      a : Integer := 0;
   begin
      while i <= TAILLE_MAX and a=0 loop
         put_line("Saisissez votre premier usager");
         lire_usager (usagers(i));
         put_line("Voulez-vous saisir un nouvel usager (Taper 1 pour arrêter)");
         get(a);
         i:= i + 1;
      end loop;
      n:=i;
   end lire_usagers;

   procedure ecrire_usagers (usagers : in Enregistrement; n : in Integer) is
      i : Integer := 1;
   begin
      put_line("Les usagers sont :");
      while i <=n loop
         ecrire_usager(usager(i));
         i:= i + 1;
      end loop;
   end ecrire_usagers;

end tableau_usagers;
