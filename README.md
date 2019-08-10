# learningUsingGit
test

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
