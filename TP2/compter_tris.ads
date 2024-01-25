with Compteurs, Tableau;
use Compteurs, Tableau;

package compter_tris is

   Lg_Max_Tableau : Positive := 300; -- taille maximale des tableaux à trier
   Nb_Tris        : Positive := 100; -- nb de tris de chaque taille de tableau

   -- tri le tableau T par la méthode des bulles
   -- en ajoutant à Cpt_Comp le nombre de comparaisons et
   -- en ajoutant à Cpt_Affec le nombre d'affectations d'éléments du tableau
   procedure Trier_Bulles_Cpt
     (T                   : in out Tablo;
      Cpt_Comp, Cpt_Affec : in out Compteur);

   procedure Trier_Pivot_Cpt
     (T                   : in out Tablo;
      Cpt_Comp, Cpt_Affec : in out Compteur);

   procedure Trier_Shell_Cpt
     (T                   : in out Tablo;
      Cpt_Comp, Cpt_Affec : in out Compteur);

   procedure Trier_Insertion_Cpt
     (T                   : in out Tablo;
      Cpt_Comp, Cpt_Affec : in out Compteur);
end compter_tris;
