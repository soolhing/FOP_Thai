# FOP_Thai
1.Create project from using xml and xsl:fo for create PDF by ADOBE FOP Version 2.3
2.Embedded Thai font PDF by using configuration and command line. 
3.Using font from SIPA for solve Wannayuk เอก ( ่) โท  (  ้) ตรี (  ๊) จัตวา ( ๋) display incorrect on windows font UPC (--> Ref#[B]) [Note : generate Embeded Thai PDF by using Cordia UPC is not displayed Wannayuk correctly.]

Software : 
[A] Download fop-2.3-bin.zip here : https://xmlgraphics.apache.org/fop/download.html
[B] Download Java runtime here : https://www.java.com/en/download/

Prerequisite: XML, XSL:FO 
Reference : 
[A] Step add font : https://www.oxygenxml.com/doc/versions/18/ug-editor/tasks/add-font-to-builtin-FOP.html
[B] Download SIPA Thai Font for Free : https://www.f0nt.com/release/13-free-fonts-from-sipa/


[Step prepare Environment]
I.  Setup Java Runtime
II. Set PATH Java C:\Program Files (x86)\Java\jdk1.8.0_45
III.Extract fop-2.3-bin to c:\fop
IV. set PATH c:\fop
V. Install Thai font  *.ttf to c:\windows\fonts 

[Next Step create Script for create xml for Thai font]

REM @echo off 
set LIB=c:\fop\lib 
set CP=%LIB%\fop.jar 
set CP=%CP%;%LIB%\avalon-framework-api-4.3.1.jar
set CP=%CP%;%LIB%\xercesImpl-2.9.1.jar
set CP=%CP%;%LIB%\commons-logging-1.0.4.jar 
set CP=%CP%;%LIB%\commons-io-1.3.1.jar 
set CP=%CP%;%LIB%\xmlgraphics-commons-2.3.jar 
set CP=%CP%;%LIB%\xml-apis-1.3.04.jar
set CMD=java -cp "%CP%" org.apache.fop.fonts.apps.TTFReader 
set FONT_DIR=C:\Windows\Fonts 
%CMD% "C:\Windows\Fonts\THSarabun.ttf" "D:\project\font\THSarabun.xml"


[Next Step Config fop at C:\fop\conf\fop.xconf]
add following tag under fop/renderers/fonts/ 

<font metrics-url="file:///C:/fop/font/THSarabun.xml" 
 embed-url="file:///C:/Windows/Fonts/THSarabun.ttf" kerning=  "yes" >
<font-triplet name="THSarabun" style=  "normal" weight= "normal" />
</font>

[Create PDF by Fop command]
fop -c C:\fop\conf\fop.xconf -xml "D:\project\sample.xml" -xsl "D:\project\sample.xsl"
-pdf "D:\project\sample.pdf"

        
