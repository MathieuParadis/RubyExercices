#Mon petit mot de passe

#Ramsès II t'a recommandé auprès d'Edward Snowden pour coder un programme de cybersécurité. 
#Le but est de faire un écran de sécurité qui demande à l'utilisateur de définir un mot de passe, 
#et un autre qui lui demande de le saisir.
# - Tant que l'utilisateur ne donne pas le bon mot de passe, le programme le lui redemande.
# - Si l'utilisateur rentre le bon mot de passe, il accède à un espace secret.

# Décomposition du programme
#Le programme va se décomposer en trois parties :
# - une partie signup, demandant à l'utilisateur de définir un mot de passe
# - une partie login, demandant à l'utilisateur de rentrer son mot de passe jusqu'à ce qu'il 
#corresponde à celui défini précédemment
# - une partie welcome_screen, affichant un écran de bienvenue avec des informations top secrètes de la NSA

#1 Méthode signup
#La partie signup sera assez simple, le programme va demander à l'utilisateur de 
#définir un mot de passe et le garder en mémoire (en le stockant dans une variable).
def signup
    puts "SIGN UP"
    puts "Veuillez definir un mot de passe"
    print "> "
    signup_password = gets.chomp
    return signup_password
end


#2 Méthode login
#La partie login va demander à l'utilisateur son mot de passe. Tant que l'utilisateur n'a pas rentré 
#le même mot de passe que renseigné au moment du signup, le programme va lui dire qu'il s'est trompé 
#et qu'il doit recommencer. Si l'utilisateur trouve le bon mot de passe, le programme va le rediriger 
#vers l'écran d'accueil.

def login (password)
    print "\n"
    puts "LOGIN"
    login_password = ""

    while login_password != password do
        puts "Veuillez rentrer votre mot de passe"
        print "> "
        login_password = gets.chomp
        
        if login_password != password
            puts "Mot de passe incorrect"
        else 
            puts "Authentification reussie"
            return true
        end
    end
end


#3. Méthode welcome_screen
#L'écran d'accueil va dire à l'utilisateur qu'il est bienvenu dans sa zone secrète, et lui dire quelques secrets 
#(par exemple le contenu – supposé – des textos et messages WhatsApp du téléphone d'un des membres de ton groupe).
def welcome_screen(p)
    if p == true
        print "\n"
        puts "Bienvenue papa"
        puts "J'ai ete une vilaine fille, punis moi!!"
    else
        print "ERROR"
    end
end

#4 Méthode perform
#Maintenant englobe l'exécution de chaque méthode dans une méthode perform qui va appeler chaque morceau
#de code dans le bon ordre.

def perform
    welcome_screen(login(signup))
end

perform