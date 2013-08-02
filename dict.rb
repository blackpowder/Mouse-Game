class Dict

	def initialize()
    	dict = [
      		"Mouse souris ",
      		"Potatoes patate",
      		"Match_Potatoes puree",
      		"House maison",
      		"Hello bonjour",
      		"Good bon",
      		"Well bien",
      		"Hole trou",
      		"Bag sac",
      		"Blue bleu",
      		"Left gauche",
      		"Behind derriere",
      		"Step pas",
      		"Heel talon",
      		"Knee Genou",
      		"Leader Meneur",
      		"Right Droit",
      		"red rouge",
      		"dirty sale",
      		"clean propre",
      		"sad triste",
      		"soft doux",
      		"happy content",
      		"big gros",
      		"happy content",
      		"bad mauvais",
      		"nice gentil",
      		"hot chaud",
      		"wise sage",
      		"with avec",
      		"without sans",
      		"woman femme",
      		"white blanc",
      		"women femmes",
      		"work travail",
      		"world monde",
      		"wrong faux",
      		"young jeune",
      		"youth jeunesse",
      		"arm bras",
      		"arms armes",
      		"around aproximativement",
      		"to_ask demander",
      		"attack attaque",
      		"away loin",
      		"battle bataille",
      		"bear ours",
      		"beautiful beau",
      		"best meilleur",
      		"birth naissance",
      		"black noir",
      		"never jamais",
      		"now maintenant",
      		"nothing rien",
      		"old vieux",
      		"outside dehors",
      		"peace paix",
      		"our notre",
      		"other autre",
      		"perfect parfait",
      		"to_speak parler",
      		"sun soleil",
      		"moon lune",
      		"to_take prendre",
      		"to_speak parler",
      		"to_eat manger",
      		"rich riche",
      		"always toujours"
      	]

    	@word = dict[rand(dict.length())]
    end

	def english
		@word.split(" ")[0].upcase
	end

	def french
		@word.split(" ")[1].upcase
	end

	def letters
		letter = french.split(//)
		letter.shuffle
				
	end
end