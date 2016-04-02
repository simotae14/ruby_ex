require_relative '050_giocatore'
require_relative '051_team'

giocatore1 = Giocatore.new("Bob", 13, 5)
giocatore2 = Giocatore.new("Jim", 15, 4.5)
giocatore3 = Giocatore.new("Mike", 21, 5)
giocatore4 = Giocatore.new("Joe", 14, 5)
giocatore5 = Giocatore.new("Scott", 16, 3)

# creo squadra
team_rosso = Team.new("Rosso")

# invoco metodo per creare team
team_rosso.aggiungi_giocatori(giocatore1, giocatore2,
	giocatore3, giocatore4, giocatore5)

# seleziona solo i giocatori fra 14 e 20 e evita
# ogni giocatore con meno di 4.5 come livello_skill
giocatori_selezionabili = team_rosso.select { |giocatore| (14..20) === giocatore.eta }
																		.reject { |giocatore| giocatore.livello_skill < 4.5 }

puts giocatori_selezionabili
# <Jim: 4.5(SL), 15(ETA)>
# <Joe: 5(SL), 14(ETA)>																		