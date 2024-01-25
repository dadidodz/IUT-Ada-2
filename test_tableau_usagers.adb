with tableau_usagers; use tableau_usagers;

procedure test_tableau_usagers is
   usagers : Tab_usagers; --tableau d'usagers
   n: integer; --nombre d’éléments du tableau
begin
   lire_usagers (usagers, n);
   ecrire_usagers (usagers, n);
end test_tableau_usagers;
