package body tris is

   --------------
   -- Echanger --
   --------------

   procedure Echanger (X, Y : in out Float) is
      Aux : constant Float := X;
   begin
      X := Y;
      Y := Aux;
   end Echanger;

   ------------------
   -- Trier_Bulles --
   ------------------

   procedure Trier_Bulles (T : in out Tablo) is
      Dernier : Positive := T'First + 1; -- positon du dernier échange
      Trie    : Boolean  := False; -- indique si le tableau est trié
   begin
      while not Trie loop
         Trie := True;
         for J in reverse Dernier .. T'Last loop
            if T (J) < T (J - 1) then
               Echanger (T (J), T (J - 1));
               Trie    := False;
               Dernier := J;
            end if;
         end loop;
      end loop;
   end Trier_Bulles;

   -----------------
   -- Trier_Pivot --
   -----------------

   procedure Trier_Pivot (T : in out Tablo) is
      I : Natural := T'First; -- tous les éléments jusqu'à i sont <= pivot
      J : Natural := T'Last; -- tous les éléments après j sont > pivot
      P : Float; -- élément pivot
   begin
      if T'Length > 1 then
         P := T (T'First);
         while I < J loop
            if T (J) >= P then
               J := J - 1;
            elsif T (I + 1) < P then
               T (I) := T (I + 1);
               I     := I + 1;
            else
               T (I) := T (J);
               T (J) := T (I + 1);
               I     := I + 1;
               J     := J - 1;
            end if;
         end loop;
         T (I) := P;
         Trier_Pivot (T (T'First .. I - 1));
         Trier_Pivot (T (I + 1 .. T'Last));
      end if;
   end Trier_Pivot;

   -----------------
   -- Trier_Shell --
   -----------------

   procedure Trier_Shell (T : in out Tablo) is
      Inc : Natural := T'Length / 2;
      J   : Integer;
   begin
      while Inc > 0 loop
         for I in Inc + 1 .. T'Last loop
            J := I - Inc;
            while J > 0 loop
               if T (J) > T (J + Inc) then
                  Echanger (T (J), T (J + Inc));
                  J := J - Inc;
               else
                  J := 0;
               end if;
            end loop;
         end loop;
         Inc := Inc / 2;
      end loop;
   end Trier_Shell;

end tris;
