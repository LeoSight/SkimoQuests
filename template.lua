-- LeoSight.cz - Quest system - Template v1.0.0 - LSCT
-- 
-- Pro LeoSight.cz vytvořil Rataj
-- Určeno pouze pro užití komunity portálu LeoSight.cz, jiná užití jsou zakázána
-- Všechna práva vyhrazena, distribuce v rámci komunity povolena s uvedením zdroje
-- 
-- Měňte pouze části textu ohraničené hvězdičkami (př. *ID*)
-- Podřazené tabulky neuvádějte vůbec, pokud jsou prázdné (př. typ questu 1, nejsou potřeba markery)
-- Pokud si nejste ani podle vzoru jisti jak co vyplnit, prohlédněte jiné, již hotové questy v tomto repositáři
-- Questy ukládejte volně pod sebe do souboru se jménem autora (př. Franta bude ukládat všechny svoje questy do souboru Franta.lua)
-- V questech využívejte kódové komentáře (--) dle libosti, hráči je ve hře neuvidí a může to pomoci vám i ostatním v orientaci
-- Každý quest musí před začátkem tabulky mít uvedenou hlavičku ve formátu "-- DD.MM.YYYY - Krátký popis questu"
-- 
-- Seznam proměnných:
-- ID		- ID questu (musí přidělit člen AT)
-- TYP		- Typ questu (viz. seznam typů questů)
-- X,Y,Z	- Souřadnice
-- ROT		- Rotace
-- R,G,B	- Barvy
-- ITEMID	- ID předmětu nebo -1 pro peněžní odměnu
-- ITEMVAL	- Value předmětu nebo finanční částka
-- JMENO	- Jméno NPC (musí splňovat pravidlo o RP jménech)
-- SKIN		- ID skinu NPC (lze najít na internetu)
-- VETA		- Věta v dialogu
-- NPCTYP	- Typ NPC (viz. seznam typů NPC)
-- LIM		- Časový limit na splnění questu uvedený v minutách (0 = bez časového limitu)
-- REP		- Možnost znovuplnění questu (uvedeno v hodinách, 0 = možné dělat neustále do kola, -1 = jednorázový quest, nelze opakovat)
-- 
-- Seznam typů questů:
-- TYP 1: Dojdi od jednoho NPC k druhému (převoz)
-- TYP 2: Projdi markery a práci odezvdej u zadavatele
-- TYP 3: Dojdi od jednoho NPC k druhému a vrať se k zadavateli (převoz dodatečně platící zadavatel)
-- 
-- Seznam typů NPC:
-- TYP 1: Zadavatel (zadává quest, v případě jediného NPC zároveň poslední NPC)
-- TYP 2: Prostředek (není zadavatelem questu, ale je součástí úkolu, při typu 1 uděluje odměnu)


-- Plné nevyplněné schéma
quests[] = {
	blip = {  },
	typ = 
	barvy = {  },
	npcs = {
		{
			jmeno = 
			skin = 
			x = 
			y = 
			z = 
			rot = 
			dialog = {
				{  },
			},
			typ = 
		},
	},
	markers = {
		{  },
	},
	odmena = {  }
	limit = 
	opakovani = 
}


-- Vzor
quests[*ID*] = {
	blip = { *X*, *Y*, *Z* },
	typ = *TYP*,
	barvy = { *R*, *G*, *B* },
	npcs = {
		{
			jmeno = *JMENO*,
			skin = *SKIN*,
			x = *X*,
			y = *Y*,
			z = *Z*,
			rot = *ROT*,
			dialog = {
				{ *VETA* },
			},
			typ = *NPCTYP*
		},
	},
	markers = {
		{ *X*, *Y*, *Z* },
	},
	odmena = { *ITEMID*, *ITEMVAL* },
	limit = *LIM*,
	opakovani = *REP*
}