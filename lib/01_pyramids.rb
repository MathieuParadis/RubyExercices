#vacances en Égypte

#Ramsès II a été impressionné par ton savoir-faire architectural de précédemment et voudrait 
#te débaucher pour construire des pyramides dont on parlera encore dans 4000 ans. 
#Pas besoin de bipper Panoramix et sa bande #pour le taff : Ruby sera ta potion magique.

#1 Moitié de pyramide
#Reprends ton deuxième exercice de la pyramide en l'encapsulant dans une méthode half_pyramid.

def what_to_build
    puts "Welcome \n"
    puts "What would you like to build \n"
    puts "For a half-pyramid, press 1 \nFor a full pyramid, press 2 \nFor a WTF pyramaid, press 3, \nTo exit, press 4"
    puts "\n"
    what_to_do = case enter_choice
        when 1 then half_pyramid
        when 2 then full_program
        when 3 then wtf_pyramid
        when 4 then exit
        else 
            puts "Sorry, I did not understand"
            puts "Try again" 
            print "\n \n"
            what_to_build
    end
end

def enter_choice
    print "> "
    player_choice = gets.to_i
    return player_choice
end


def half_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? "
    print "> "

    n = gets.chomp.to_i
    i = 0

    puts "Voici la pyramide :"
    for i in 1..n
        (n-i).times do 
            print " "
        end
        i.times do 
            print "#"
        end

        print "\n"
    end
end


#2 Pyramide de Gizeh
#Catastrophe, cette pyramide ne tient pas debout, tout s'effondre sur le côté. 
#Ramsès II a le sum, mais grâce à une superbe présentation PowerPoint bien pipeautée, 
#tu as pu lui vendre la version premium de la pyramide : celle avec deux côtés. Champion
#Crée une méthode full_pyramid qui va construire plusieurs étage

def full_pyramid 
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    print "> "

    n = gets.chomp.to_i
    i = 0
    nombre_etage = 0

    puts "Voici la pyramide :"
    loop do
        if i%2 != 0 then
            nombre_etage +=1 
            (n-nombre_etage).times do 
                print " "
            end
            i.times do 
                print "#"
            end
            print "\n"
        end   
        i += 1

    break if nombre_etage == n
    end
end

#3 Alexandrie, Alexandra
#Ramsou (ça y est vous êtes potos) vient d'avoir une idée de génie : 
#il voudrait une pyramide en losange. Les normes de sécurité étant assez flex à l'époque, 
#tu fonces sur l'occasion pour implémenter cette idée qui va (sûrement) rendre le monde meilleur.
#Crée une méthode wtf_pyramid qui va générer plusieurs étages

def wtf_pyramid 
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (choisis un nombre impair)"
    print "> "

    n = gets.chomp.to_i
    i = 0
    etage_superieur = 0
    etage_inferieur = (n-1)/2


    if n.odd? then
        puts "Voici la pyramide :"

        #first half 
        loop do
            if i%2 != 0 then
                etage_superieur +=1 
                (n/2+1-etage_superieur).times do 
                    print " "
                end
                i.times do 
                    print "#"
                end
                print "\n"
            end   
            i += 1

        break if etage_superieur == (n-1)/2
        end


        n.times do 
            print "#"
        end
        print "\n"

        loop do
            if i%2 != 0 then
                (n/2+1-etage_inferieur).times do 
                    print " "
                end
                i.times do 
                    print "#"
                end
                print "\n"
                etage_inferieur -= 1
            end   
            i -= 1

        break if etage_inferieur == 0
        end
    
    else 
        puts "J'ai dit un nombre impair idiot!!!"
    end
       
end

what_to_build