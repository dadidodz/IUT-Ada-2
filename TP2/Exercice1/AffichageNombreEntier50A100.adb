with ada.integer_text_io; use ada.integer_text_io;
with ada.text_io; use ada.text_io;

procedure AffichageNombreEntier50A100 is

	compteur : Integer;

begin
	compteur:= 51;
	while  compteur<100 loop
		
		put(compteur);
		compteur:= compteur+1;

	end loop;
end AffichageNombreEntier50A100;