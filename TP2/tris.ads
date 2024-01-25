with Tableau; use Tableau;

package tris is

   -- �change les valeurs de 2 r�els X et Y
   procedure Echanger (X, Y : in out Float) with
      Post => X = Y'Old and Y = X'Old;

   -- tri le tableau T par la m�thode des bulles
   procedure Trier_Bulles (T : in out Tablo) with
      Post => (for all i in T'First .. T'Last - 1 => T (i) <= T (i + 1));

   -- tri le tableau T par la m�thode du pivot (quick sort)
   procedure Trier_Pivot (T : in out Tablo) with
      Post => (for all i in T'First .. T'Last - 1 => T (i) <= T (i + 1));

   -- tri le tableau T par la m�thode shell
   procedure Trier_Shell (T : in out Tablo) with
      Post => (for all i in T'First .. T'Last - 1 => T (i) <= T (i + 1));

end tris;
