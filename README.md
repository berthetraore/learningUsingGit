# learningUsingGit
test


CHAPITRE 3: CREER VOTRE PREMIER REPOSITORY

et en parlant de la commande git clone, notez que vous pouvez cloner votre repo avec deux options : 

L'option HTTPS que je vous ai  invité à utiliser dans ce cours : c'est l'option la plus simple, qui demande de fournir vos identifiants GitHub (nom d'utilisateur et mot de passe) à chaque fois que vous faites un git clone. 

L'option SSH qui est plus pratique car elle ne vous demande pas vos identifiants à chaque fois. Par contre, pour l'utiliser, il faut générer une clé SSH, ce qui est un peu plus compliqué pour ce cours d'initiation. Mais une fois que vous vous sentez plus à l'aise, je vous invite à consulter la marche à suivre dans la documentation de GitHub et à utiliser cette option SSH.  


CHAPITRE 5 : Envoyez votre code sur GitHub

Vous avez clôné votre repo GitHub sur votre machine. Comment faire pour synchroniser les modifications que vous faites dans votre repo sur votre machine avec votre repo sur GitHub ?

À vos marques... Ouvrez votre terminal et placez-vous dans votre repo local.

Prêts... Faites un/des commit(s) des modifications que vous avez ajoutées sur ce repo.

Pushez! Envoyez ces modifications sur votre repo GitHub en utilisant la commande git push:
git push origin master


Cette commande demande à Git :

"Envoie mes modifs dans la branche master de mon remote origin."

 La branche master est la branche qui contient le code courant de votre repo GitHub. Ne vous préoccupez pas trop du terme "branche", on y reviendra par la suite.

Le remote sur lequel vous envoyez votre code est appelé origin par défaut. Ici, ce remote est GitHub. Si vous aviez plusieurs remotes (par exemple, votre téléphone portable ou un 2e ordinateur), vous pourriez envoyer votre code sur un remote "téléphone" ou "ordi2".

Une fois que vous avez "pushé" votre code en ligne, vous pouvez aller consulter votre repo sur GitHub. Vous y retrouverez les derniers commits effectués en cliquant sur l'option "Commits" dans votre repo : 

Ca vous donne l'historique de vos commits, comme la commande git log, mais dans une interface graphique plus agréable qui vous permet de cliquer sur chaque commit et de voir les modifications associées dans chaque fichier. 



CHAPITRE 6 :Récupérez des modifications