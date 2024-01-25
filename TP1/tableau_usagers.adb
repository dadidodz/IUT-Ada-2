package body tableau_usagers is

   -- En-tête du sous-programme lire_usagers
   -- Lit tous les usagers présents dans le tableau
   -- Nécessite nombre usagers <= TAILLE_MAX
   -- Lève l'exception DEBORDEMENT
   procedure lire_usagers (usagers : out Tab_usagers; n : out Integer) is
      i : Integer := 1;
      a : Integer := 0;
   begin
      while a=0 loop
         if i > TAILLE_MAX then
            raise DEBORDEMENT;
         end if;
         put_line("Saisissez votre premier usager");
         lire_usager (usagers(i));
         put_line("Voulez-vous saisir un nouvel usager (Taper 1 pour arrêter)");
         get(a);
         i:= i + 1;
      end loop;
      n:=i;

   end lire_usagers;

   -- En-tête du sous-programme ecrire_usagers
   -- Ecrit tous les usagers présents dans le tableau
   -- Nécessite nombre usagers <= n
   -- Lève l'exception TRANCHE_INVALIDE
   procedure ecrire_usagers (usagers : in Tab_usagers; n : in Integer) is
      i : Integer := 1;
   begin
      if n > TAILLE_MAX then
         raise TRANCHE_INVALIDE;
      end if;
      put_line("Les usagers sont :");
      while i < n loop
         ecrire_usager(usagers(i));
         i:= i + 1;
      end loop;
   end ecrire_usagers;

end tableau_usagers;
