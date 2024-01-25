with Tableau; use Tableau;

package tris is

   -- échange les valeurs de 2 réels X et Y
   procedure Echanger (X, Y : in out Float) with
      Post => X = Y'Old and Y = X'Old;

   -- tri le tableau T par la méthode des bulles
   procedure Trier_Bulles (T : in out Tablo) with
      Post => (for all i in T'First .. T'Last - 1 => T (i) <= T (i + 1));

   -- tri le tableau T par la méthode du pivot (quick sort)
   procedure Trier_Pivot (T : in out Tablo) with
      Post => (for all i in T'First .. T'Last - 1 => T (i) <= T (i + 1));

   -- tri le tableau T par la méthode shell
   procedure Trier_Shell (T : in out Tablo) with
      Post => (for all i in T'First .. T'Last - 1 => T (i) <= T (i + 1));

end tris;
