package body usager is

   -- En-tête du sous-programme lire_usager
   -- Lit un usager
   -- usager est un enregistrement contenant le nom et sa longueur, l'année de naissance et le numéro d'adhérent de l'usager
   procedure lire_usager ( usager : out Enregistrement) is
   begin
      put_line("Entrez votre année de naissance :");
      get(usager.annee_naissance); skip_line;
      put_line("Entrez votre numéro d'adhérent :");
      get(usager.numero_adherent); skip_line;
      put_line("Entrez votre nom s'il vous plait monsieur ou madame ou non binaire :");
      get_line(usager.nom, usager.longueur);
   end lire_usager;

   -- En-tête du sous-programme ecrire_usager
   -- Ecrit un usager
   -- usager est un enregistrement contenant le nom et sa longueur, l'année de naissance et le numéro d'adhérent de l'usager
   procedure ecrire_usager ( usager : in Enregistrement ) is
   begin
      new_line;
      put("Le numéro d'adhérent de l'usager est ");
      put(usager.numero_adherent); new_line;
      put("Son nom est ");
      put(usager.nom(1..usager.longueur)); new_line;
      put("Son année de naissance est ");
      put(usager.annee_naissance); new_line;
   end ecrire_usager;

   -- En-tête du sous-programme age_usager
   -- Calcule l'âge de usager grâce à sa date de naissance
   -- usager est un enregistrement contenant le nom et sa longueur, l'année de naissance et le numéro d'adhérent de l'usager
   function age_usager (usager : in Enregistrement ) return Integer is
      age : Integer;
   begin
      age := Year(Clock) - usager.annee_naissance;
      return age;
   end age_usager;

end usager;
