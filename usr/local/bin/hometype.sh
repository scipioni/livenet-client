#!/bin/bash

#Mostra un messaggio se la home è temporanea
if [ -f ~/.temporary ]; then

zenity --info --text "L'utente $USER non dispone di una HOME remota o il server non è raggiungibile \n\nTutti i dati di questa sessione andranno persi alla disconnessione dell'utente. \n\nSalvare i propri dati prima di uscire" --title "Avviamento della sessione utente" --height "200" --width "400"



fi


exit 0
