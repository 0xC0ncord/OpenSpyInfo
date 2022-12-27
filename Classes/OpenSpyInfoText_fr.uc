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
    InfoText01="$(255,255,255)Epic Games a annoncé la fermeture des serveurs pour ses jeux les plus anciens, $(255,0,0)dont Unreal Tournament 2004$(255,255,255), au plus tard le 24 janvier 2023."
    InfoText02="Cela veut dire que, dans un avenir proche, le fil d'actualité, le système de Buddy et le navigateur du serveur (à l'exception des favoris) ne fonctionneront plus."
    InfoText03="|$(255,255,255)Heureusement, un serveur maître alternatif a été créé par le projet $(0,192,255)OpenSpy $(255,255,255)qui permettra à ces services de continuer à fonctionner après cette date."
    InfoText04="|$(255,255,255)Pour l'utiliser, vous devrez apporter de petites modifications à votre fichier $(0,192,255)UT2004.ini $(255,255,255)dans le dossier Système de votre jeu."
    InfoText05="||Si vous souhaitez effectuer ces modifications manuellement, cliquez sur le bouton $(0,255,0)Plus d'Infos $(255,255,255)ci-dessous pour ouvrir un site $(0,192,255)$1$(255,255,255) avec plus d'informations et instructions détaillées."
    InfoText06="|Si vous souhaitez effectuer ces modifications automatiquement, cliquez sur le bouton Auto-Configuration ci-dessous."
    InfoText07="||$(255,0,0)Notez que ce changement changera la liste des serveurs maîtres de votre jeu pour utiliser uniquement le serveur maître $(0,192,255)d'OpenSpy$(255,0,0). Les serveurs UT2004 qui se connectent uniquement au(x) serveur(s) officiel(s) d'Epic ne seront pas visibles dans le navigateur du serveur après ce changement."
    InfoText08="||$(255,255,255)Les serveurs que vous avez ajoutés à vos favoris continueront de s'afficher normalement dans vos favoris, quel que soit le ou les serveurs maîtres que vous ou ce serveur utilisez."
    InfoText09="|Si vous avez un doute, vous devriez aller maintenant dans le navigateur du serveur et ajouter tous les serveurs qui vous intéressent à vos favoris. Ensuite, reconnectez-vous à ce serveur et cliquez sur $(0,255,0)Auto-Configururation $(255,255,255) lorsque vous verrez à nouveau ce menu."
    WindowTitle="Informations importantes sur l'avenir du jeu en ligne UT2004"
    Text_MoreInfo="Plus d'Infos"
    Text_AutoConfigure="Auto-Configuration"
    Text_Acknowledge="Je comprends."
    Text_DontShowAgain="Ne plus montrer ceci."
}
