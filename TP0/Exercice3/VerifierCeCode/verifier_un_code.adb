with Ada.Text_IO; use Ada.Text_IO;
with operations_systeme; use operations_systeme;
with code; use code;
-- Programme principal
procedure verifier_un_code is

	      -- Glossaire du programme principal
	   code : Tab_caracteres; -- chiffre du code

	begin
	   -- Demander à l'utilisateur de fournir un code et lire le code
	   lire_code (tab_chiffres => code);
	   -- Vérifier le code
	   if code_valide (tab_chiffres => code) then
	      Put ("Ce code est correct. Prêt à photocopier ");
	   else
	      Put ("Ce code n'est pas correct pour ce photocopieur ");
	   end if;

	end verifier_un_code;
