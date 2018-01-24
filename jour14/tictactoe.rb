
# La classe Board sert à initialiser le plateau, changer la valeur de ses cases, tester si un joueur a gagné et enfin afficher le plateau.

class Board

   # On commence par initialiser toutes les cases.
   
   def initialize
      @case1 = BoardCase.new
      @case2 = BoardCase.new
      @case3 = BoardCase.new
      @case4 = BoardCase.new
      @case5 = BoardCase.new
      @case6 = BoardCase.new
      @case7 = BoardCase.new
      @case8 = BoardCase.new     
      @case9 = BoardCase.new     
   end
   
   # Cette fonction permet de changer la valeur à l'intérieur des cases.
   
   def change_value(nb, symbol)
      
      # On regarde la valeur de nb pour savoir quelle case changer et on check si la case est bien vide. 
      # Si ce n'est pas le cas on retourne 0 au lieu de 1.
      
      case nb
         when '1'
            if @case1.value != ' '
               return 0
            else
               @case1.value = symbol
            end
         when '2'
            if @case2.value != ' '
               return 0
            else
               @case2.value = symbol
            end
         when '3'
            if @case3.value != ' '
               return 0
            else
               @case3.value = symbol
            end
         when '4'
            if @case4.value != ' '
               return 0
            else
               @case4.value = symbol
            end
         when '5'
            if @case5.value != ' '
               return 0
            else
               @case5.value = symbol
            end
         when '6'
            if @case6.value != ' '
               return 0
            else
               @case6.value = symbol
            end
         when '7'
            if @case7.value != ' '
               return 0
            else
               @case7.value = symbol
            end
         when '8'
            if @case8.value != ' '
               return 0
            else
               @case8.value = symbol
            end
         when '9'
            if @case9.value != ' '
               return 0
            else
               @case9.value = symbol
            end
      end

      return 1

   end

   # La fonction test sert à tester si un joueur a gagné la partie. 
   # On retourne 1 si le premier joueur à gagné, 2 si c'est le deuxième et 0 sinon.

   def test

      # On commence par checker les trois lignes,
      
      if @case1.value == @case2.value && @case2.value == @case3.value
         if @case1.value == 'X'
            return 1
         elsif @case1.value == 'O'
            return 2
         end
      elsif @case4.value == @case5.value && @case5.value == @case6.value
         if @case4.value == 'X'
            return 1
         elsif @case4.value == 'O'
            return 2
         end
      elsif @case7.value == @case8.value && @case8.value == @case9.value
         if @case7.value == 'X'
            return 1
         elsif @case7.value == 'O'
            return 2
         end

      # Puis les trois colonnes,
      
      elsif @case1.value == @case4.value && @case4.value == @case7.value
         if @case1.value == 'X'
            return 1
         elsif @case1.value == 'O'
            return 2
         end
      elsif @case2.value == @case5.value && @case5.value == @case8.value
         if @case2.value == 'X'
            return 1
         elsif @case2.value == 'X'
            return 2
         end
      elsif @case3.value == @case6.value && @case6.value == @case9.value
         if @case3.value == 'X'
            return 1
         elsif @case3.value == 'O'
            return 2
         end

      # Et enfin on check les diagonales.
      
      elsif @case1.value == @case5.value && @case5.value == @case9.value
         if @case1.value == 'X'
            return 1
         elsif @case1.value == 'O'
            return 2
         end
      elsif @case3.value == @case5.value && @case5.value == @case7.value
         if @case3.value == 'X'
            return 1
         elsif @case3.value == 'O'
            return 2
         end
      
      # Si aucune ligne, colonne ou diagonale n'est remplie par le même symbole, alors il n'y a pas de gagnant et on retourne 0.
      
      else
         return 0
      end
   
   end
  
   # La fonction display sert à afficher le plateau.

   def display
   
      puts ""
      trait = "-----------"
      puts ' ' + @case7.value + " | " + @case8.value + " | " + @case9.value
      puts trait
      puts ' ' + @case4.value + " | " + @case5.value + " | " + @case6.value
      puts trait
      puts ' ' + @case1.value + " | " + @case2.value + " | " + @case3.value
      puts ""

   end

end

# La classe BoardCase initialize une case du plateau, avec comme valeur de départ le character espace (" ").

class BoardCase

   attr_accessor :value

   def initialize(value = ' ')
      @value = value
   end

end


# La classe Player initialize un joueur avec son nom.
# Les instances de la classe Player possèdent aussi un attribut "etat" qui servira à savoir si le joueur à gagné la partie.
# (dans ce cas là la valeur sera true)

class Player

   attr_reader :name
   attr_accessor :etat

   def initialize(name, victory = false)
      @name = name
      @etat = etat
   end

end


# La classe Game sert à initialiser les joueurs pour ensuite les faire s'affronter.

class Game

   # Initialisation des joueurs.

   def initialize(name_player1, name_player2)
      @player1 = Player.new(name_player1)
      @player2 = Player.new(name_player2)
      @board = Board.new
   end

   # Fonction qui leurs permet de s'affronter.

   def play
      
      # On commence par expliqué la manière de procéder aux deux joueurs.

      consignes =  "Les cases sont numérotées de 1 à 9, la 1 étant celle en bas à gauche, la 4 étant la première case de la deuxième ligne et la 9 étant celle en haut à droite."
      test_consignes = false # test pour écrire les consignes qu'une seule fois
      tour = 0 # compteur de tours
      actions_possibles = ['1', '2', '3', '4', '5', '6', '7', '8', '9'] # liste des actions possibles pour gérer les erreurs
      input_error = "L'entrée n'est pas correcte, veuillez réessayer." # message d'erreur pour une mauvaise entrée
      fill_case_error = "La case n'est pas vide! Veuillez en choisir une autre." # message d'erreur si un joueur essaie de remplir une case non vide
      
      # Boucle permettant de jouer la partie.

      while !@player1.etat && !@player2.etat && tour < 9
         
         # Ecriture des consignes pour le début de la partie.

         if !test_consignes
            puts consignes
            puts ""
            puts "Voici une illustration :"
            puts ""
            trait = "-----------"
            puts " 7 | 8 | 9 "
            puts trait
            puts " 4 | 5 | 6 "
            puts trait
            puts " 1 | 2 | 3 "
            puts ""
            test_consignes = true
         end

         if tour % 2 == 0 # si le compteur de tours est divisible par 2, alors c'est au joueur 1 de jouer
            puts "C'est au tour de #{@player1.name}, quelle case choisissez-vous? (La réponse doit être comprise entre 1 et 9)"
            choice = gets.chomp # on récupère la valeur écrite par le joueur
            if actions_possibles.include? choice # on regarde si cette valeur est correcte
               retour = @board.change_value(choice, 'X') # la valeur est correcte, maintenant on teste si la case est bien vide
               if retour == 0 # la case n'est pas vide, on affiche un message d'erreur
                  puts ""
                  puts fill_case_error
                  tour -= 1
               end
            else # la valeur n'est pas correcte, on affiche un message d'erreur et on rappelle les consignes
               puts ""
               puts input_error
               puts "Rappel: " + consignes
               tour -= 1
            end
         else # idem si c'est au tour du joueur 2
            puts "C'est au tour de #{@player2.name}, quelle case choississez-vous? (La réponse doit être comprise entre 1 et 9)"
            choice = gets.chomp
            if actions_possibles.include? choice
               retour = @board.change_value(choice, 'O')
               if retour == 0
                  puts ""
                  puts fill_case_error
                  tour -= 1
               end
            else
               puts ""
               puts input_error
               puts "Rappel: " + consignes
               tour -= 1
            end
         end
         
         # On regarde si l'un des joueurs à gagné la partie.
         # Si c'est le cas, on change son état pour que la boucle s'arrête.

         test_win = @board.test
         if test_win == 1
            @player1.etat = true
         elsif test_win == 2
            @player2.etat = true
         end
         
         # On incrémente le compteur et affiche le plateau.

         tour += 1
         @board.display

      end
      
      # On regarde pour quelle raison la partie s'est terminée et on écrit un message en conséquence.

      if @player1.etat == true
         puts "#{@player1.name} à gagné la partie!"
      elsif @player2.etat == true
         puts "#{@player2.name} à gagné la partie!"
      else
         puts "Match nul."
      end
   
   end

end


# La fonction joue demande le nom des joueurs et lance la partie.

def joue

   print "Entrez le pseudo du joueur 1 : "
   name_joueur1 = gets.chomp
   print "Entrez le nom du joueur 2 : "
   name_joueur2 = gets.chomp
   puts ""

   game = Game.new(name_joueur1, name_joueur2)
   game.play

end

joue()
