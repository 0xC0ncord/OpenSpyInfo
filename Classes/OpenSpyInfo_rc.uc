//=============================================================================
// OpenSpyInfo_rc.uc
// Copyright (C) 2022 0xC0ncord <concord@fuwafuwatime.moe>
//
// This program is free software; you can redistribute and/or modify
// it under the terms of the Open Unreal Mod License version 1.1.
//=============================================================================

class OpenSpyInfo_rc extends Resource;

// NOTE to mod authors: if you're building your own version of this, you must replace
// '$$"__PACKAGE__"$$' with your custom package name, e.g. OpenSpyInfo_ClanAwesome
//
// Example: Package="OpenSpyInfo_ClanAwesome"

#EXEC NEW TrueTypeFontFactory PACKAGE=$$"__PACKAGE__"$$ Name="Verdana8_i18n"  Height=8  Kerning=1 DropShadowX=0 DropShadowY=0 Style=600 AntiAlias=0 USize=256 VSize=256 FontName="Verdana" UnicodeRange="0410-044F,0400-045F" Chars=" 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz`~!@#$%^&*()_+-=[]\\{}|;:',./?><\"¡«°»¿ÀÁÄÈÉÊËÌÍÑÒÓÖÙÚÜßàáâäçèéêëìíîïñòóôöùúûüæøå"
#EXEC NEW TrueTypeFontFactory PACKAGE=$$"__PACKAGE__"$$ Name="Verdana10_i18n" Height=10 Kerning=1 DropShadowX=0 DropShadowY=0 Style=600 AntiAlias=1 USize=256 VSize=256 FontName="Verdana" UnicodeRange="0410-044F,0400-045F" Chars=" 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz`~!@#$%^&*()_+-=[]\\{}|;:',./?><\"¡«°»¿ÀÁÄÈÉÊËÌÍÑÒÓÖÙÚÜßàáâäçèéêëìíîïñòóôöùúûüæøå" Compression=8
#EXEC NEW TrueTypeFontFactory PACKAGE=$$"__PACKAGE__"$$ Name="Verdana12_i18n" Height=12 Kerning=1 DropShadowX=0 DropShadowY=0 Style=700 AntiAlias=1 USize=256 VSize=256 FontName="Verdana" UnicodeRange="0410-044F,0400-045F" Chars=" 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz`~!@#$%^&*()_+-=[]\\{}|;:',./?><\"¡«°»¿ÀÁÄÈÉÊËÌÍÑÒÓÖÙÚÜßàáâäçèéêëìíîïñòóôöùúûüæøå" Compression=8
#EXEC NEW TrueTypeFontFactory PACKAGE=$$"__PACKAGE__"$$ Name="Verdana14_i18n" Height=14 Kerning=1 DropShadowX=0 DropShadowY=0 Style=700 AntiAlias=1 USize=256 VSize=256 FontName="Verdana" UnicodeRange="0410-044F,0400-045F" Chars=" 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz`~!@#$%^&*()_+-=[]\\{}|;:',./?><\"¡«°»¿ÀÁÄÈÉÊËÌÍÑÒÓÖÙÚÜßàáâäçèéêëìíîïñòóôöùúûüæøå" Compression=8
#EXEC NEW TrueTypeFontFactory PACKAGE=$$"__PACKAGE__"$$ Name="Verdana16_i18n" Height=16 Kerning=1 DropShadowX=0 DropShadowY=0 Style=700 AntiAlias=1 USize=256 VSize=256 FontName="Verdana" UnicodeRange="0410-044F,0400-045F" Chars=" 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz`~!@#$%^&*()_+-=[]\\{}|;:',./?><\"¡«°»¿ÀÁÄÈÉÊËÌÍÑÒÓÖÙÚÜßàáâäçèéêëìíîïñòóôöùúûüæøå" Compression=8
#EXEC NEW TrueTypeFontFactory PACKAGE=$$"__PACKAGE__"$$ Name="Verdana18_i18n" Height=18 Kerning=1 DropShadowX=0 DropShadowY=0 Style=700 AntiAlias=1 USize=256 VSize=256 FontName="Verdana" UnicodeRange="0410-044F,0400-045F" Chars=" 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz`~!@#$%^&*()_+-=[]\\{}|;:',./?><\"¡«°»¿ÀÁÄÈÉÊËÌÍÑÒÓÖÙÚÜßàáâäçèéêëìíîïñòóôöùúûüæøå" Compression=8
#EXEC NEW TrueTypeFontFactory PACKAGE=$$"__PACKAGE__"$$ Name="Verdana20_i18n" Height=20 Kerning=1 DropShadowX=0 DropShadowY=0 Style=700 AntiAlias=1 USize=256 VSize=256 FontName="Verdana" UnicodeRange="0410-044F,0400-045F" Chars=" 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz`~!@#$%^&*()_+-=[]\\{}|;:',./?><\"¡«°»¿ÀÁÄÈÉÊËÌÍÑÒÓÖÙÚÜßàáâäçèéêëìíîïñòóôöùúûüæøå" Compression=8
#EXEC NEW TrueTypeFontFactory PACKAGE=$$"__PACKAGE__"$$ Name="Verdana22_i18n" Height=22 Kerning=1 DropShadowX=0 DropShadowY=0 Style=700 AntiAlias=1 USize=256 VSize=256 FontName="Verdana" UnicodeRange="0410-044F,0400-045F" Chars=" 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz`~!@#$%^&*()_+-=[]\\{}|;:',./?><\"¡«°»¿ÀÁÄÈÉÊËÌÍÑÒÓÖÙÚÜßàáâäçèéêëìíîïñòóôöùúûüæøå" Compression=8
