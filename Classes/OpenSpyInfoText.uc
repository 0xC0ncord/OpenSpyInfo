//=============================================================================
// OpenSpyInfoText.uc
// Copyright (C) 2022 0xC0ncord <concord@fuwafuwatime.moe>
//
// This program is free software; you can redistribute and/or modify
// it under the terms of the Open Unreal Mod License version 1.1.
//=============================================================================

/*
    ************************************************************
      This file must be ANSI-encoded or else bad things happen!
    ************************************************************
*/

class OpenSpyInfoText extends Resource;

var string WindowTitle_en;
var string Text_DontShowAgain_en;
var string Text_Acknowledge_en;
var string Text_AutoConfigure_en;
var string Text_MoreInfo_en;
var string InfoText00_en;
var string InfoText01_en;
var string InfoText02_en;
var string InfoText03_en;
var string InfoText04_en;
var string InfoText05_en;
var string InfoText06_en;
var string InfoText07_en;
var string InfoText08_en;
var string InfoText09_en;

var string WindowTitle_de;
var string Text_DontShowAgain_de;
var string Text_Acknowledge_de;
var string Text_AutoConfigure_de;
var string Text_MoreInfo_de;
var string InfoText00_de;
var string InfoText01_de;
var string InfoText02_de;
var string InfoText03_de;
var string InfoText04_de;
var string InfoText05_de;
var string InfoText06_de;
var string InfoText07_de;
var string InfoText08_de;
var string InfoText09_de;

var string WindowTitle_fr;
var string Text_DontShowAgain_fr;
var string Text_Acknowledge_fr;
var string Text_AutoConfigure_fr;
var string Text_MoreInfo_fr;
var string InfoText00_fr;
var string InfoText01_fr;
var string InfoText02_fr;
var string InfoText03_fr;
var string InfoText04_fr;
var string InfoText05_fr;
var string InfoText06_fr;
var string InfoText07_fr;
var string InfoText08_fr;
var string InfoText09_fr;

defaultproperties
{
    InfoText00_en="$(255,0,0)PLEASE READ THIS!"
    InfoText01_en="$(255,255,255)Epic Games has announced that they will be shutting down online servers for their older titles, $(255,0,0)including Unreal Tournament 2004$(255,255,255), no later than January 24, 2023."
    InfoText02_en="|This means that in the near future, the News Feed, Buddy system, and the Server Browser (not Favorites) $(255,0,0)will stop working."
    InfoText03_en="|$(255,255,255)Thankfully, an alternative master server was created by the $(0,192,255)OpenSpy $(255,255,255)project which will allow these services to work after this date."
    InfoText04_en="|To use it, you will need to make small changes to your $(0,192,255)UT2004.ini $(255,255,255)file in your game's System folder."
    InfoText05_en="||If you would like to make these change manually, click the $(0,255,0)More Info $(255,255,255)button below to open a website ($(0,192,255)$1$(255,255,255)) with more information and detailed instructions."
    InfoText06_en="|If you would like to make these changes automatically, click the $(0,255,0)Auto-Configure $(255,255,255)button below."
    InfoText07_en="||$(255,0,0)Note that this change will switch your game's master servers list to use only the $(0,192,255)OpenSpy $(255,0,0)master server. UT2004 servers that are only connecting to Epic's official server(s) will not be visible in the Server Browser after this change."
    InfoText08_en="|$(255,255,255)Servers that you have added to your Favorites will continue to be displayed in your Favorites as normal, regardless of which master server(s) you or that server are using."
    InfoText09_en="||If you're unsure, you should go to the Server Browser now and add any servers you're interested in to your Favorites. Then, reconnect to this server and click $(0,255,0)Auto-Configure $(255,255,255)when you see this menu again."
    WindowTitle_en="Important Information on the Future of UT2004 Online Play"
    Text_Acknowledge_en="I understand."
    Text_AutoConfigure_en="Auto-Configure"
    Text_MoreInfo_en="More Info"
    Text_DontShowAgain_en="Don't show this again"

    InfoText00_de="$(255,0,0)BITTE LESEN!"
    InfoText01_de="$(255,255,255)Epic Games hat angekündigt, dass sie die Server für ihre älteren Spiele, $(255,0,0)einschließlich Unreal Tournament 2004$(255,255,255), spätestens am 24. Januar 2023 abschalten werden."
    InfoText02_de="|Dies bedeutet, dass der Reiter Neuigkeiten, die Freundefunktion und der Reiter Internet mit der Serverliste (allerdings nicht die Favoriten) bald $(255,0,0)nicht mehr funktionieren werden."
    InfoText03_de="|$(255,255,255)Glücklicherweise wurde ein alternativer Masterserver vom $(0,192,255)OpenSpy $(255,255,255)Projekt erstellt, über welchen diese Dienste auch in Zukunft genutzt werden können."
    InfoText04_de="Um diesen Server zu nutzen, müssen Sie eine kleine Anpassung an Ihrer $(0,192,255)UT2004.ini $(255,255,255)Datei im System Ordner Ihres Spiels vornehmen."
    InfoText05_de="||Wenn Sie diese Änderung manuell vornehmen möchten, klicken Sie unten auf den $(0,255,0)Mehr Infos $(255,255,255)Knopf, um eine Webseite mit mehr Informationen und einer detaillierten Anleitung (auf Englisch) zu öffnen."
    InfoText06_de="|Wenn Sie diese Änderung automatisch vornehmen möchten, klicken Sie unten auf den $(0,255,0)Auto-Konfigurieren$(255,255,255) Knopf."
    InfoText07_de="||$(255,0,0)Hinweis: Dies wird Ihr Spiel dahingehend anpassen, dass nur noch der OpenSpy Masterserver verwendet wird. UT2004 Server, welche ausschließlich mit Epics offiziellen Servern verbunden sind, werden nach dieser Anpassung nicht mehr sichtbar sein."
    InfoText08_de="$(255,255,255)Server, welche Sie zu Ihren Favoriten hinzugefügt haben, werden weiterhin im Reiter Favoriten angezeigt werden, unabhängig davon, mit welchem Masterserver Sie oder diese Server verbunden sind."
    InfoText09_de="||Falls Sie sich unsicher sind, gehen Sie jetzt zurück auf den Internet Reiter und fügen Sie alle Server, die Sie interessieren, mit Rechtsklick zu Ihren Favoriten hinzu. Verbinden Sie sich dann wieder mit diesem Server und klicken Sie auf $(0,255,0)Auto-Konfigurieren$(255,255,255), wenn Sie dieses Menü erneut sehen."
    WindowTitle_de="Wichtige Information zur Zukunft des Online Spiels in UT2004"
    Text_Acknowledge_de="Alles klar!"
    Text_AutoConfigure_de="Auto-Konfigurieren"
    Text_MoreInfo_de="Mehr Infos"
    Text_DontShowAgain_de="Diese Nachricht nicht mehr anzeigen."

    InfoText00_fr="$(255,0,0)MERCI DE LIRE CECI !"
    InfoText01_fr="$(255,255,255)Epic Games a annoncé la fermeture des serveurs pour ses jeux les plus anciens, $(255,0,0)dont Unreal Tournament 2004$(255,255,255), au plus tard le 24 janvier 2023."
    InfoText02_fr="Cela veut dire que, dans un avenir proche, le fil d'actualité, le système de Buddy et le navigateur du serveur (à l'exception des favoris) ne fonctionneront plus."
    InfoText03_fr="|$(255,255,255)Heureusement, un serveur maître alternatif a été créé par le projet $(0,192,255)OpenSpy $(255,255,255) qui permettra à ces services de continuer à fonctionner après cette date."
    InfoText04_fr="|$(255,255,255)Pour l'utiliser, vous devrez apporter de petites modifications à votre fichier $(0,192,255)UT2004.ini $(255,255,255)dans le dossier Système de votre jeu."
    InfoText05_fr="||Si vous souhaitez effectuer ces modifications manuellement, cliquez sur le bouton $(0,255,0)Plus d'Infos $(255,255,255)ci-dessous pour ouvrir un site $(0,192,255)$1$(255,255,255) avec plus d'informations et instructions détaillées."
    InfoText06_fr="|Si vous souhaitez effectuer ces modifications automatiquement, cliquez sur le bouton Auto-Configuration ci-dessous."
    InfoText07_fr="||$(255,0,0)Notez que ce changement changera la liste des serveurs maîtres de votre jeu pour utiliser uniquement le serveur maître $(0,192,255)d'OpenSpy$(255,0,0). Les serveurs UT2004 qui se connectent uniquement au(x) serveur(s) officiel(s) d'Epic ne seront pas visibles dans le navigateur du serveur après ce changement."
    InfoText08_fr="||$(255,255,255)Les serveurs que vous avez ajoutés à vos favoris continueront de s'afficher normalement dans vos favoris, quel que soit le ou les serveurs maîtres que vous ou ce serveur utilisez."
    InfoText09_fr="|Si vous avez un doute, vous devriez aller maintenant dans le navigateur du serveur et ajouter tous les serveurs qui vous intéressent à vos favoris. Ensuite, reconnectez-vous à ce serveur et cliquez sur $(0,255,0)Auto-Configururation $(255,255,255) lorsque vous verrez à nouveau ce menu."
    Text_MoreInfo_fr="Plus d'Infos"
    Text_AutoConfigure_fr="Auto-Configuration"
    WindowTitle_fr="Informations importantes sur l'avenir du jeu en ligne UT2004"
    Text_Acknowledge_fr="Je comprends."
    Text_DontShowAgain_fr="Ne plus montrer ceci."
}
