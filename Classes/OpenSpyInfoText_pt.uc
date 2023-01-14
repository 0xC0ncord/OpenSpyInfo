//=============================================================================
// OpenSpyInfoText_pt.uc
// Copyright (C) 2023 0xC0ncord <concord@fuwafuwatime.moe>
//
// This program is free software; you can redistribute and/or modify
// it under the terms of the Open Unreal Mod License version 1.1.
//=============================================================================

class OpenSpyInfoText_pt extends OpenSpyInfoText;

defaultproperties
{
	InfoText00="$(255,0,0)POR FAVOR, LEIA ISSO!"
	InfoText01="$(255,255,255)A Epic Games anunciou que encerrará os servidores online para seus títulos mais antigos, $(255,0,0)incluindo o Unreal Tournament 2004$(255,255,255), até 24 de janeiro de 2023."
	InfoText02="|Isto significa que, em um futuro próximo, o Feed de Notícias, o sistema Buddy e o Navegador do Servidor (não Favoritos) $(255,0,0)irão parar de funcionar."
	InfoText03="|$(255,255,255)Felizmente, um servidor mestre alternativo foi criado pelo projeto $(0,192,255)OpenSpy $(255,255,255)que permitirá que esses serviços funcionem após esta data."
	InfoText04="|Para usá-lo, você precisará fazer pequenas alterações no seu arquivo $(0,192,255)UT2004.ini $(255,255,255)na pasta System do seu jogo."
	InfoText05="||Se quiser fazer essas alterações manualmente, clique no botão $(0,255,0)Mais informações $(255,255,255)abaixo para abrir um site ($(0,192,255)$1$(255,255,255)) com mais informações e instruções detalhadas."
	InfoText06="|Se desejar fazer essas alterações automaticamente, clique no botão $(0,255,0)Configurar automaticamente $(255,255,255)abaixo."
	InfoText07="||$(255,0,0)Observe que esta alteração mudará a lista de servidores mestre do seu jogo para usar apenas o servidor mestre $(0,192,255)OpenSpy$(255,0,0). Servidores UT2004 que estão apenas conectando para o(s) servidor(es) oficial(is) da Epic não ficará visível no navegador do servidor após esta alteração."
	InfoText08="|$(255,255,255)Servidores que você adicionou aos seus Favoritos continuarão a ser exibidos em seus Favoritos normalmente, independentemente de qual(is) servidor(es) mestre(s) você ou aquele servidor esteja usando."
	InfoText09="||Se não tiver certeza, você deve ir para o navegador do servidor agora e adicionar quaisquer servidores nos quais esteja interessado aos seus Favoritos. Em seguida, reconecte-se a este servidor e clique em $(0,255,0)Configurar automaticamente $(255.255.255)quando vir este menu novamente."
	WindowTitle="Informações importantes sobre o futuro do jogo online UT2004"
	Text_Acknowledge="Eu entendo."
	Text_AutoConfigure="Configurar automaticamente"
	Text_MoreInfo="Mais informações"
	Text_DontShowAgain="Não mostrar isso novamente"
}
