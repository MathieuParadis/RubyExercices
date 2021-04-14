#6ème sans ascenseur

#1 Jeu vidéo
#Tu vas maintenant coder un super jeu qui déchire. 
#Mario n'a qu'à bien se tenir avec sa pyramide ! 
#Nous allons imaginer un programme dans lequel une gentille personne 
#va devoir monter 10 marches en fonction d'un jet de dé. Une version 
#informatique du jeu de l'oie en quelque sorte !

#Voici comment cela va se dérouler : à l'exécution, le programme lance une partie. 
#Le joueur est tout en bas d'un escalier à 10 marches, et à chaque tour il va lancer un dé :
# - S’il fait 5 ou 6, il avance d'une marche et le programme le lui dit (ainsi que la marche où il est à présent)
# - S’il fait 1, il descend d'une marche et le programme le lui dit (ainsi que la marche où il est à présent)
# - S’il fait 2, 3, ou 4 rien ne se passe, et le programme le lui dit (ainsi que la marche où il est resté)
#Quand le joueur atteint la 10ème marche, le programme l'en informe avec un message super enthousiaste, 
#et le jeu se termine.

#2 Statistiques
#L'une des grandes forces de l'informatique est de pouvoir faire un nombre conséquent d'itérations 
#et de pouvoir sortir des moyennes et médianes très facilement.
#Fais donc une méthode average_finish_time qui va simuler au moins 100 parties, 
#et te retourner le nombre de tours moyen pour arriver à la 10ème marche.


def throw_dice 
    return rand(1..6) 
end 
    


def calculate_new_position(i, array, number_of_times_played)
    #Position avant lancé de dé
    position = array.index("X")

    #Position après lancé de dé
    if ((i==5 || i==6) && position!=0)
        array.delete(array[position])
        position -= 1
        array.insert(position, "X")
    elsif ( i== 1 && position != (array.length) -1 )
        array.delete(array[position])
        position += 1
        array.insert(position, "X")
    else
        array = array
    end

    
    if position == 0
        return number_of_times_played
    end
end


def game
    dungeon = Array.new(10, "_").push("X")
    player_score = 0 
    
    while dungeon[0] != "X" do 
        player_score +=1
        calculate_new_position(throw_dice, dungeon, player_score)
    end
    return player_score
end

def enter_score_into_array(array_score, score)
    array_score.push(score)
    puts array_score
    return array_score
end

def calcule_average(array_score, number_of_games_played)
    s = array_score.reduce { |sum, number| sum + number }
    average = s/(number_of_games_played.to_f)
    return average
end

def simulation(n)

scores = []
    for i in 1..n
        array_scores = enter_score_into_array(scores, game)
    end
    average_on_n_games = calcule_average(array_scores, n)
    puts "#{n} have been simulated"
    puts "The average number of rounds required to finish the game is #{average_on_n_games}"
end

def input_number
    n = gets.to_i
    return n
end



def perform
    puts "How many games do you wish to simulate? Choose a number between 1 and 100"
    print "> "
    n=input_number
    if (n<1 || n>100)
        puts "Wrong number, try again!!"
        perform
    else
        simulation(n)
    end
end

perform
