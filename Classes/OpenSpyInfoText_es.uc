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
	InfoText00="$(255,0,0)¡POR FAVOR LEA ESTO!"
	InfoText01="$(255,255,255)Epic Games ha anunciado que cerrará los servidores para sus títulos más antiguos, $(255,0,0)incluido Unreal Tournament 2004$(255,255,255), antes del 24 de enero de 2023."
	InfoText02="|Esto significa que, en un futuro cercano, la sección de noticias, el sistema de amigos y el navegador del servidor (no los favoritos) $(255,0,0)dejarán de funcionar."
	InfoText03="|$(255,255,255)Afortunadamente, el proyecto $(0,192,255)OpenSpy $(255,255,255)creó un servidor maestro alternativo que permitirá que estos servicios funcionen después de esta fecha."
	InfoText04="|Para usarlo, deberá realizar pequeños cambios en su archivo $(0,192,255)UT2004.ini $(255,255,255)en la carpeta Sistema de su juego."
	InfoText05="||Si desea realizar estos cambios manualmente, haga clic en el botón $(0,255,0)Más información $(255,255,255)a continuación para abrir un sitio web ($(0,192,255)$1$(255,255,255)) con más información y instrucciones detalladas."
	InfoText06="|Si desea realizar estos cambios automáticamente, haga clic en el botón $(0,255,0)Auto-Configure $(255,255,255)abajo."
	InfoText07="||$(255,0,0)Tenga en cuenta que este cambio cambiará la lista de servidores maestros de su juego para usar solo el servidor maestro $(0,192,255)OpenSpy$(255,0,0). Servidores UT2004 que solo se conectan a los servidores oficiales de Epic no serán visibles en el Explorador de servidores después de este cambio."
	InfoText08="|$(255,255,255)Los servidores que haya agregado a sus Favoritos seguirán mostrándose en sus Favoritos con normalidad, independientemente de qué servidor(es) maestro(s) esté(n) usando usted o ese servidor."
	InfoText09="||Si no está seguro, debe ir al Explorador de servidores ahora y agregar los servidores que le interesen a sus Favoritos. Luego, vuelva a conectarse a este servidor y haga clic en $(0,255,0)Configurar automáticamente $(255,255,255)cuando vuelva a ver este menú."
	WindowTitle="Información importante sobre el futuro del juego en línea de UT2004"
	Text_Acknowledge="Entiendo."
	Text_AutoConfigure="Configuración automática"
	Text_MoreInfo="Más información"
	Text_DontShowAgain="No volver a mostrar esto"
}
