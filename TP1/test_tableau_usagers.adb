with tableau_usagers; use tableau_usagers;
with ada.Text_IO; use ada.Text_IO;
with ada.Integer_Text_IO; use ada.Integer_Text_IO;

procedure test_tableau_usagers is
   usagers : Tab_usagers; --tableau d'usagers
   n: integer; --nombre d’éléments du tableau
begin
   lire_usagers (usagers, n);
   ecrire_usagers (usagers, n);
exception
   when DEBORDEMENT =>
      put_line("****Nombre de valeurs saisies trop grandes.");
      put("****Vous pouvez saisir au maximum ");
      put(TAILLE_MAX);
      if TAILLE_MAX>2 then
         put_line (" valeurs.");
      else put_line (" valeur.");
      end if;
   when TRANCHE_INVALIDE =>
      put_line("****Nombre de valeurs saisies trop grandes.");
      put("****Vous pouvez saisir au maximum ");
      put(TAILLE_MAX);
      if TAILLE_MAX>2 then
         put_line (" valeurs.");
      else put_line (" valeur.");
      end if;

end test_tableau_usagers;
