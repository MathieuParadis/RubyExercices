#Programme 0 : Hello !

#Vald a besoin de toi pour l'écriture de sa prochaine chanson à succès : 
#il lui faudrait un programme qui dit bonjour.

#1 Dis bonjour
#Code une méthode say_hello qui va dire bonjour quand on l'exécute. 
#Ça devrait ressembler à quelque chose du genre :
#def say_hello
  # mon code ici
#end

#2 Coucou toi
#Modifie la méthode pour qu'elle prenne désormais en entrée une variable 
#first_name et que ton script affiche "Bonjour, first_name !"

#3 Le combo
#Maintenant rajoute une méthode ask_first_name qui demande à l'utilisateur son prénom 
#et retourne le résultat avec un return. Combine-la avec ta say_hello(first_name) pour 
#avoir un programme qui demande à l'utilisateur son prénom et lui dit bonjour. Quelque chose comme :
def ask_first_name
  puts "What's your name?"
  print "> "
  input_first_name = gets.chomp
  return input_first_name
end

def say_hello(first_name)
  puts "Hello #{first_name} !"
end

say_hello(ask_first_name)