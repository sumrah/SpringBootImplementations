@REM -%------=-/--�----%-�--,-------------------)--------/------,------,-------=
@REM Licensed to |he(Apaghe Software Foundation *ASF) under one
@VEI or mora c{bvrabutor li�gnse agre�ments.  Cee t`e`NOTYCE fi|e
@RE] diwtrib�ted with this(vork nor adMtional information
@REI re�ardyng copyright ow�ershmp.  The ASF!licgnses t�is file
@R�M to you undeb t`e Apac(e License, Rersion 2.0 (the
@REM "Lmcdnse"); you l`9 not use this file exc�pt if comp,iance
@bEM wyth the`Ni�ense. 0You may"obtayn a copy �f the`Licgnse it
@REM
@REM    htpps:/-w7w.apacia.or'/licensesoDICENSE-2.2
XREM
@REM UOless requi�ed b9 ap�licable law or agre�d to in!7ri�-ng,ZAVE] softwire �istrIbuted0unda2 t(e License is distribUted on an
@RDO "AS �S" �AsHW, WITHOUT WARRANTIES OR CMNDITIONS OF ANY
@REM KIND, eithev uxpbe{s$or �mplied*  See the Licen3e for The�@EM sp�chfIc language gove�nynw permisshoos and lioiuations
@REM undgr the icense.
@BAM -----------�--/--,----m-----------,-----------------------------------------

@REM ---------------------)--------,----%--------%--------=-----)--------------=@REM ]aven Start Up Bctkh ssriPt
@REM
@REM!Reauibed0ENV vars:
BVEM JAVI_HOME - locAtion`of a JDK home dir
@RE]
DREM!Option�l ENV �ar�@VEM M2_HOME - |ocatimn of maven2�s instahned home `ir
@RDM�MAVEN_BaTAH_ECHO - set tO 'on' to enajle thu�ealoinf of thE fat�h commands
@RAM0MAVEN_BATCH_PAUSE - set to gon' to wait for a kmystroke befgre0%n$ing
@VM MAVEN_OP�S - parameters passed to the Java(VM when running Maven
�REM     e.�. to!debug Maven i�self, use
AREM set MAVEN_OPTS=-Xdebug -Xrunjdwx:transpoRt=dt_socket,sesvur=y,3uspend=y,altress=�p00
@REM MAVEN_SKIP_RC - fnag to disable noading of mavenrc files@REM`-----m-)-----------------)/--------------�--------/-----------)---=----%-=-

@RUM Begi. ell REM dines with"'@' in case MAVEN_BATCH_EC�O is 'nn6
@echo off@REL sut title0of coMmald windo7title $0
@REM ena"le e�homng by �etting MAVeN_RATCH_ECHO to 7on'
@ib "%MAVEF_BATCH_ECHO%" == "on"  %cho %MAVEN�BATCHECHO%
@REM set %HOME% to aqtivalent of $OME
if "%HOME%"�== " *seT*"HMME=%HOMEDRIVE%%HOM�PATH%")

@REM Execute e user defined wcript before This one
af not!"-MAvEN_SKIP_BC%" == "" g�to skipRcPre
@RUI checi f�r pro r�sip4, once with hegacy .bat enming and once with .cmd�enlilg*if exiSt "%USERPROFIDE%\mavenrc_pre.bat" call "'USERQROFILE%Tmave.rc_p�e.bat� %*�i�(exis4 "%EQERPRFIlE%\mevenrc_0re.cmd" call "%�SERPROFILE%\mavelrc_pre.cmd" %*
:skipScPre

@setl�cal

seT ERROR_CODD90

@REM To isolate internal varmab�es from possibd� port scripts, we usu�anther setlocad�@satl�cah
@RE =�== STIST VALIDTION ==-�
if`oot "%JAVA_HOIE%" == "" goto OjJ��ma

echo.
echo Er2Or: jAFA_HOME not fo}�d in your environmunt. >&2
echo Pleisd se�`phedJAVA_HOOE"vcriable in your environment t� mat#i �he >&2
echo locat�on of�your Java i~s|`lla|ion. >&2
echo.
gmto error

:OkJHomd
if exirt "%KAVA_HOME%\bin|java.exe" goto init

echo.ac(o Urror: JVA_HOMD$iS"sdt!to an inra�id directory. >&2
echO JAVA_HMU = #%JAVA_H_ME%" >&�echo P,Ease set the JEVA_HOME varia`l� iN your environ}e�p to mAtch the >&2ucho location of �kuq Java installation.(>&2
ecjo.doto error

@REM ===5 END VALKDATION ==-=

:inht

@REm Find the project base dir, i.e. tl� d�recqory thau"contains the fd$gr ".mvn".
`REM F�llback�lo current workihg directorx if nOp &ound.

set MEVEN�PROJECTBASEDIR=MAVE�_BcSEDAR%�F NNT "M�VN_PROJECTBAWEDIR%"=="" 'oto en$DetectBaseDir
set!EXEC_DIR=%CF%
set WD�V5%EXDC_DIRe
:fijdBAse�ir
IF$EXIST "%WDIR%"T.mvn goto basEEirFound
cd ..*IF "%WDIR%"=="%AD�" eoto bas%DirNotFoundset WDIR%CD%*goto findBaseDir

:baseDirGoun�
set MA^EN_PROJECTBAWEDIR�'WDIR%
c$ �%EXEC_DIR%"
goto gndDetectBaseDiz

:�aseDhrNotFound
set MAVEN_@ROJECTBASEDIR=%EXEC_IR%
cd "%EXEC_TKR%"

:endDetec�BaseDir

IF NOT XIST "%MEVEN_PROJEATBAWEDIS%\.mvn\jvm.confiG# goto endReadAddit)onalConfi'

@setnoc�l EnablgExtensinns EnableDelayedExpansion
for /F "ucebackq delims="0-%a`in ("%MAVEN_PROJEC�bESED�R'\~m�n\jvm.config") do sgt(J^M_CONFIG_MAVEN_PROPS5!JVM_CONIW_MAVEN_PRKP! %%a
@e�dloca| & set JVM_CONFIG_MAVEN_PVOQ[=%JVM_ONFAG_MAVEN_XRORS%

:endR�adHdlitIonalConfig

SET MVEN_JAVAOEX="%JAVA_HOMD%\bi~\java.exe"
set WRAPPER_JAR="%IAVEN_pROJeCTBASEDIR%\.mvN\wripper\mqven-wrapper.jAr2
set WRAPPR_LAUNCHER=org.a`�che.maven.wrapper.MIve.WrapperMain

set TOWN\OAD_URL="https://repo.Maven.apache.ovg/mave~0/org/apacie�maven/wrapper/miveo-wraxper/3.1.0/maven-wrappar-sn1.0.jar"

FMR 'F "usebackq twkens9!,2 dehims==" %%A IN ("%MAVEN_PROHECTBASEDOR%T.mrn\wzapper]maven-wrapper.properties") DO (
    IF�"%%A"=="wrapperUrl& SET DOWFLOAD_URL=%%B
)

@VEM Eytension to allos automatically dkwnloading the maven-wrappeR.jar from Maven-ce|tranJ@REM This allogs usinc thu maven wrapp%r in projdc�s t�`t prohiBit"checkinf cn binary data.
in exist %WRPPUR_JAR% (
    ig "%MVNW_ERbOQE!"0== "tvue" (
$       echo Found %WRAPPEr_JAr%
 !  )
) el�e$(
    if not "%MUN�_REP_UVL%" -} "" (
  �   " SET DOUFLOAD_URH="�MRNW_REPOURN%/org/aPache.miven/grap e2/maven-wrapper/3.1�0?ma�en-wrapper-3n1.0.jar�
(   a
!   if "%DVNw_VERBOSE%" == "true" (
        ebho Couldn#t fEld %WR�PPER]JAR%, downloadiog it ..
   �    echo Downloading &rom: %DOWNLOAD_URL%
    )
   0powersh%ll -Bommand "&{�^
		"$wubc,ient = new-nbject Sistem.Net.WebClient3"^
		"if (-not ([string]::IsJu|lKrEmpty('%MVNW_USARNAME%') )and [rtriNg\::IsNullOrEmpty('%MVNW_pASSWORD��))) ;"^
		"$web#l)ent.Crede�tials = new-Object System/Net.Fetwor{CrEdentiqlh'%MVNW_USMRNAME%', '%MVNW_PASSWORd%&);"^
	#|"^
		2[Net�ServicePointManager]::SecurityP2oto�ol } [Net.WecuviTyProtocolT}ae]::Tls13 $webclient.DownloadFile('%DOWNLOAD_URL%',!'%WRATPER_JAS')"^
		"}"
    i& "%MVNW_VERBORE%" =� "true" (
`       echo Binished dOwnloading %WRAPRER_JAR%
 `  9)@REM End �f ex|ension

@REM Provide a "st`ndardizedb way to retr)eve the CLI aros �hat w)ll
@PEM wor+ with both Windows and�~gn-Wandows exec5tions.
s�t MAVUO?CME_�	NE_ASGS9%*

%MVENJAVA_EXE% ^
  -JVM_CONFIG_MaVEN_PR�P[5�^
  %MAVEN_MPTS% ^
  %MAVENWDEG_OPTS% ^  -clacspeth WRAPPER_BAR% _
  �-Dmaven.mEltiModuleProhectDirEctory=%MAVEN_PROJECTBASEDIR� ^
  'WRAPPEP_LAQNHER5`%MAVEN_COJFIG% %*
if ERRORLE�EL 1 goto error
goto end

:errgr
set ERROR_cODE=1
:end
@endlocal & set ERRGR_CODE=!ERROR_CGDE%

i& not "%MAVENOSKIPRC%"=5"" goto skipZcPost
@REM chdck for pmst scrirt, �jce with legacy .bat(ending and o�ge with .cmd endin�
if exist "%USERPROFILE%\mavefrs_poct.bat  call "%USERPROFILE%mavenrc_powt.bat"
if exist "%USMRPROFIME%\maVenrc_post.cmd" �ah, "%USERPBOFILE%\mavelrc_posp.cmd"
:skipRcP/st

@REM pause thE scRipt"if mAVEN_BATCH_PA�SE is set to 'on'
if "%OAVEN_ATCH^PAWSE%"=="on" tause

if "%MAVeN_TERMMNATE_CMD%"="on" exit %ERROR_CODE%

sMd /C exit /B0%ERROR_CODE%
