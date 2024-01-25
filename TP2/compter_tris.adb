with Ada.Float_Text_Io, Ada.Integer_Text_Io, Ada.Text_Io,
  Ada.Numerics.Float_Random, Tableau, tris, Compteurs ;
use Ada.Float_Text_Io, Ada.Integer_Text_Io, Ada.Text_Io,
  Ada.Numerics.Float_Random, Tableau, tris, Compteurs;

package body compter_tris is

   ----------------------
   -- Trier_Bulles_Cpt --
   ----------------------

   procedure Trier_Bulles_Cpt
     (T                   : in out Tablo;
      Cpt_Comp, Cpt_Affec : in out Compteur)
   is
      Dernier : Positive := T'First + 1; -- positon du dernier échange
      Trie    : Boolean  := False; -- indique si le tableau est trié
   begin
      while not Trie loop
         Trie := True;
         for J in reverse Dernier .. T'Last loop
            Incr (Cpt_Comp);
            if T (J) < T (J - 1) then
               Echanger (T (J), T (J - 1));
               Incr (Cpt_Affec, 3);
               Trie    := False;
               Dernier := J;
            end if;
         end loop;
      end loop;
   end Trier_Bulles_Cpt;

   ---------------------
   -- Trier_Pivot_Cpt --
   ---------------------

   procedure Trier_Pivot_Cpt
      (T                   : in out Tablo;
      Cpt_Comp, Cpt_Affec : in out Compteur)
   is
      I : Natural := T'First; -- tous les éléments jusqu'à i sont <= pivot
      J : Natural := T'Last; -- tous les éléments après j sont > pivot
      P : Float; -- élément pivot
   begin
      if T'Length > 1 then
         P := T (T'First);
         Incr (Cpt_Affec);
         Incr (Cpt_Comp);
         while I < J loop
            Incr (Cpt_Comp);
            if T (J) >= P then
               J := J - 1;
               Incr (Cpt_Affec);
               Incr (Cpt_Comp);
            elsif T (I + 1) < P then
               T (I) := T (I + 1);
               I     := I + 1;
               Incr (Cpt_Affec, 2);
               Incr (Cpt_Comp);
            else
               T (I) := T (J);
               T (J) := T (I + 1);
               I     := I + 1;
               J     := J - 1;
               Incr (Cpt_Affec, 4);
               Incr (Cpt_Comp);
            end if;
         end loop;
         T (I) := P;
         Incr (Cpt_Affec);
         Trier_Pivot_Cpt (T (T'First .. I - 1), Cpt_Comp, Cpt_Affec);
         Trier_Pivot_Cpt (T (I + 1 .. T'Last), Cpt_Comp, Cpt_Affec);
      end if;
   end Trier_Pivot_Cpt;

   ---------------------
   -- Trier_Shell_Cpt --
   ---------------------

   procedure Trier_Shell_Cpt
      (T                   : in out Tablo;
      Cpt_Comp, Cpt_Affec : in out Compteur)
   is
      Inc : Natural := T'Length / 2;
      J   : Integer;
   begin
      while Inc > 0 loop
         Incr (Cpt_Comp);
         for I in Inc + 1 .. T'Last loop
            J := I - Inc;
            Incr (Cpt_Comp);
            Incr (Cpt_Affec);
            while J > 0 loop
               Incr (Cpt_Comp);
               if T (J) > T (J + Inc) then
                  Incr (Cpt_Comp);
                  Echanger (T (J), T (J + Inc));
                  Incr (Cpt_Affec, 3);
                  J := J - Inc;
                  Incr (Cpt_Affec);
               else
                  J := 0;
                  Incr (Cpt_Affec);
                  Incr (Cpt_Comp);
               end if;
            end loop;
         end loop;
         Inc := Inc / 2;
         Incr (Cpt_Affec);
      end loop;
   end Trier_Shell_Cpt;

   -------------------------
   -- Trier_Insertion_Cpt --
   -------------------------

   procedure Trier_Insertion_Cpt
      (T                   : in out Tablo;
       Cpt_Comp, Cpt_Affec : in out Compteur)
   is
      v:Float;
      i:Integer;
   begin
      for k in 1..T'Last-1 loop
         Incr(Cpt_Comp);
         v:=T(k+1);
         i:=k;
         Incr(Cpt_Affec, 2);
         while i >= 1 and then T(i)>v loop
            Incr(Cpt_Comp, 2);
            T(i+1):=T(i);
            i:=i-1;
            Incr(Cpt_Affec, 2);
         end loop;
         T(i+1):=v;
         Incr(Cpt_Affec);
      end loop;
   end Trier_Insertion_Cpt;

end compter_tris;
