//=============================================================================
// OpenSpyInfoText_es.uc
// Copyright (C) 2023 0xC0ncord <concord@fuwafuwatime.moe>
//
// This program is free software; you can redistribute and/or modify
// it under the terms of the Open Unreal Mod License version 1.1.
//=============================================================================

class OpenSpyInfoText_es extends OpenSpyInfoText;

defaultproperties
{
	InfoText00="$(255,0,0)�POR FAVOR LEA ESTO!"
	InfoText01="$(255,255,255)Epic Games ha anunciado que cerrar� los servidores para sus t�tulos m�s antiguos, $(255,0,0)incluido Unreal Tournament 2004$(255,255,255), antes del 24 de enero de 2023."
	InfoText02="|Esto significa que, en un futuro cercano, la secci�n de noticias, el sistema de amigos y el navegador del servidor (no los favoritos) $(255,0,0)dejar�n de funcionar."
	InfoText03="|$(255,255,255)Afortunadamente, el proyecto $(0,192,255)OpenSpy $(255,255,255)cre� un servidor maestro alternativo que permitir� que estos servicios funcionen despu�s de esta fecha."
	InfoText04="|Para usarlo, deber� realizar peque�os cambios en su archivo $(0,192,255)UT2004.ini $(255,255,255)en la carpeta Sistema de su juego."
	InfoText05="||Si desea realizar estos cambios manualmente, haga clic en el bot�n $(0,255,0)M�s informaci�n $(255,255,255)a continuaci�n para abrir un sitio web ($(0,192,255)$1$(255,255,255)) con m�s informaci�n y instrucciones detalladas."
	InfoText06="|Si desea realizar estos cambios autom�ticamente, haga clic en el bot�n $(0,255,0)Auto-Configure $(255,255,255)abajo."
	InfoText07="||$(255,0,0)Tenga en cuenta que este cambio cambiar� la lista de servidores maestros de su juego para usar solo el servidor maestro $(0,192,255)OpenSpy$(255,0,0). Servidores UT2004 que solo se conectan a los servidores oficiales de Epic no ser�n visibles en el Explorador de servidores despu�s de este cambio."
	InfoText08="|$(255,255,255)Los servidores que haya agregado a sus Favoritos seguir�n mostr�ndose en sus Favoritos con normalidad, independientemente de qu� servidor(es) maestro(s) est�(n) usando usted o ese servidor."
	InfoText09="||Si no est� seguro, debe ir al Explorador de servidores ahora y agregar los servidores que le interesen a sus Favoritos. Luego, vuelva a conectarse a este servidor y haga clic en $(0,255,0)Configurar autom�ticamente $(255,255,255)cuando vuelva a ver este men�."
	WindowTitle="Informaci�n importante sobre el futuro del juego en l�nea de UT2004"
	Text_Acknowledge="Entiendo."
	Text_AutoConfigure="Configuraci�n autom�tica"
	Text_MoreInfo="M�s informaci�n"
	Text_DontShowAgain="No volver a mostrar esto"
}
