//=============================================================================
// OpenSpyInfoText_de.uc
// Copyright (C) 2022 0xC0ncord <concord@fuwafuwatime.moe>
//
// This program is free software; you can redistribute and/or modify
// it under the terms of the Open Unreal Mod License version 1.1.
//=============================================================================

class OpenSpyInfoText_de extends OpenSpyInfoText;

defaultproperties
{
    InfoText00="$(255,0,0)BITTE LESEN!"
    InfoText01="$(255,255,255)Epic Games hat angekündigt, dass sie die Server für ihre älteren Spiele, $(255,0,0)einschließlich Unreal Tournament 2004$(255,255,255), spätestens am 24. Januar 2023 abschalten werden."
    InfoText02="|Dies bedeutet, dass der Reiter Neuigkeiten, die Freundefunktion und der Reiter Internet mit der Serverliste (allerdings nicht die Favoriten) bald $(255,0,0)nicht mehr funktionieren werden."
    InfoText03="|$(255,255,255)Glücklicherweise wurde ein alternativer Masterserver vom $(0,192,255)OpenSpy $(255,255,255)Projekt erstellt, über welchen diese Dienste auch in Zukunft genutzt werden können."
    InfoText04="Um diesen Server zu nutzen, müssen Sie eine kleine Anpassung an Ihrer $(0,192,255)UT2004.ini $(255,255,255)Datei im System Ordner Ihres Spiels vornehmen."
    InfoText05="||Wenn Sie diese Änderung manuell vornehmen möchten, klicken Sie unten auf den $(0,255,0)Mehr Infos $(255,255,255)Knopf, um eine Webseite mit mehr Informationen und einer detaillierten Anleitung (auf Englisch) zu öffnen."
    InfoText06="|Wenn Sie diese Änderung automatisch vornehmen möchten, klicken Sie unten auf den $(0,255,0)Auto-Konfigurieren$(255,255,255) Knopf."
    InfoText07="||$(255,0,0)Hinweis: Dies wird Ihr Spiel dahingehend anpassen, dass nur noch der OpenSpy Masterserver verwendet wird. UT2004 Server, welche ausschließlich mit Epics offiziellen Servern verbunden sind, werden nach dieser Anpassung nicht mehr sichtbar sein."
    InfoText08="$(255,255,255)Server, welche Sie zu Ihren Favoriten hinzugefügt haben, werden weiterhin im Reiter Favoriten angezeigt werden, unabhängig davon, mit welchem Masterserver Sie oder diese Server verbunden sind."
    InfoText09="||Falls Sie sich unsicher sind, gehen Sie jetzt zurück auf den Internet Reiter und fügen Sie alle Server, die Sie interessieren, mit Rechtsklick zu Ihren Favoriten hinzu. Verbinden Sie sich dann wieder mit diesem Server und klicken Sie auf $(0,255,0)Auto-Konfigurieren$(255,255,255), wenn Sie dieses Menü erneut sehen."
    WindowTitle="Wichtige Information zur Zukunft des Online Spiels in UT2004"
    Text_Acknowledge="Alles klar!"
    Text_AutoConfigure="Auto-Konfigurieren"
    Text_MoreInfo="Mehr Infos"
    Text_DontShowAgain="Diese Nachricht nicht mehr anzeigen."
}
