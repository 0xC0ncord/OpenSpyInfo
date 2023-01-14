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
	InfoText01="$(255,255,255)A Epic Games anunciou que encerrar� os servidores online para seus t�tulos mais antigos, $(255,0,0)incluindo o Unreal Tournament 2004$(255,255,255), at� 24 de janeiro de 2023."
	InfoText02="|Isto significa que, em um futuro pr�ximo, o Feed de Not�cias, o sistema Buddy e o Navegador do Servidor (n�o Favoritos) $(255,0,0)ir�o parar de funcionar."
	InfoText03="|$(255,255,255)Felizmente, um servidor mestre alternativo foi criado pelo projeto $(0,192,255)OpenSpy $(255,255,255)que permitir� que esses servi�os funcionem ap�s esta data."
	InfoText04="|Para us�-lo, voc� precisar� fazer pequenas altera��es no seu arquivo $(0,192,255)UT2004.ini $(255,255,255)na pasta System do seu jogo."
	InfoText05="||Se quiser fazer essas altera��es manualmente, clique no bot�o $(0,255,0)Mais informa��es $(255,255,255)abaixo para abrir um site ($(0,192,255)$1$(255,255,255)) com mais informa��es e instru��es detalhadas."
	InfoText06="|Se desejar fazer essas altera��es automaticamente, clique no bot�o $(0,255,0)Configurar automaticamente $(255,255,255)abaixo."
	InfoText07="||$(255,0,0)Observe que esta altera��o mudar� a lista de servidores mestre do seu jogo para usar apenas o servidor mestre $(0,192,255)OpenSpy$(255,0,0). Servidores UT2004 que est�o apenas conectando para o(s) servidor(es) oficial(is) da Epic n�o ficar� vis�vel no navegador do servidor ap�s esta altera��o."
	InfoText08="|$(255,255,255)Servidores que voc� adicionou aos seus Favoritos continuar�o a ser exibidos em seus Favoritos normalmente, independentemente de qual(is) servidor(es) mestre(s) voc� ou aquele servidor esteja usando."
	InfoText09="||Se n�o tiver certeza, voc� deve ir para o navegador do servidor agora e adicionar quaisquer servidores nos quais esteja interessado aos seus Favoritos. Em seguida, reconecte-se a este servidor e clique em $(0,255,0)Configurar automaticamente $(255.255.255)quando vir este menu novamente."
	WindowTitle="Informa��es importantes sobre o futuro do jogo online UT2004"
	Text_Acknowledge="Eu entendo."
	Text_AutoConfigure="Configurar automaticamente"
	Text_MoreInfo="Mais informa��es"
	Text_DontShowAgain="N�o mostrar isso novamente"
}
