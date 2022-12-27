//=============================================================================
// OpenSpyInfoText_fr.uc
// Copyright (C) 2022 0xC0ncord <concord@fuwafuwatime.moe>
//
// This program is free software; you can redistribute and/or modify
// it under the terms of the Open Unreal Mod License version 1.1.
//=============================================================================

class OpenSpyInfoText_fr extends OpenSpyInfoText;

defaultproperties
{
    InfoText00="$(255,0,0)MERCI DE LIRE CECI !"
    InfoText01="$(255,255,255)Epic Games a annonc� la fermeture des serveurs pour ses jeux les plus anciens, $(255,0,0)dont Unreal Tournament 2004$(255,255,255), au plus tard le 24 janvier 2023."
    InfoText02="Cela veut dire que, dans un avenir proche, le fil d'actualit�, le syst�me de Buddy et le navigateur du serveur (� l'exception des favoris) ne fonctionneront plus."
    InfoText03="|$(255,255,255)Heureusement, un serveur ma�tre alternatif a �t� cr�� par le projet $(0,192,255)OpenSpy $(255,255,255)qui permettra � ces services de continuer � fonctionner apr�s cette date."
    InfoText04="|$(255,255,255)Pour l'utiliser, vous devrez apporter de petites modifications � votre fichier $(0,192,255)UT2004.ini $(255,255,255)dans le dossier Syst�me de votre jeu."
    InfoText05="||Si vous souhaitez effectuer ces modifications manuellement, cliquez sur le bouton $(0,255,0)Plus d'Infos $(255,255,255)ci-dessous pour ouvrir un site $(0,192,255)$1$(255,255,255) avec plus d'informations et instructions d�taill�es."
    InfoText06="|Si vous souhaitez effectuer ces modifications automatiquement, cliquez sur le bouton Auto-Configuration ci-dessous."
    InfoText07="||$(255,0,0)Notez que ce changement changera la liste des serveurs ma�tres de votre jeu pour utiliser uniquement le serveur ma�tre $(0,192,255)d'OpenSpy$(255,0,0). Les serveurs UT2004 qui se connectent uniquement au(x) serveur(s) officiel(s) d'Epic ne seront pas visibles dans le navigateur du serveur apr�s ce changement."
    InfoText08="||$(255,255,255)Les serveurs que vous avez ajout�s � vos favoris continueront de s'afficher normalement dans vos favoris, quel que soit le ou les serveurs ma�tres que vous ou ce serveur utilisez."
    InfoText09="|Si vous avez un doute, vous devriez aller maintenant dans le navigateur du serveur et ajouter tous les serveurs qui vous int�ressent � vos favoris. Ensuite, reconnectez-vous � ce serveur et cliquez sur $(0,255,0)Auto-Configururation $(255,255,255) lorsque vous verrez � nouveau ce menu."
    WindowTitle="Informations importantes sur l'avenir du jeu en ligne UT2004"
    Text_MoreInfo="Plus d'Infos"
    Text_AutoConfigure="Auto-Configuration"
    Text_Acknowledge="Je comprends."
    Text_DontShowAgain="Ne plus montrer ceci."
}
