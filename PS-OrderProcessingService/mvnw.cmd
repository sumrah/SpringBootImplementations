 REM -�--------------------��---=------------m,---=----�--,--------�----,-------
HBEM Licensed to the Apache Woftware"Foundatimn (ASFi qnd%r onm
@REM or more cgntsibutor lmce"se agreemenps.  See$The N_TICE!filu�@REM$dis|rifuted with thk� work f/r additional�inforeation@RE� rggarding copyright owler�hIp.  The ASf licenses �his file
@REM�to you under thd A�ache Lic%nse, evsio~ 2.0 (t�e
@PEM  Licdnwe")3 xou may not ese |(is fi,g excepv in compliancg
 REM with thm License.!&You may"obtain !��opy of the Licenke av
@REO
@REM    h|tpv://wW.apashe.org/lh�enses/LICENSE-".0
@VEI@RE] Unless Required by ap`dicable�,aw or agree�@to in w�it�ng,
@PEM {oftw�re distr)"uted 5nder!the License ir dis�ributet mn an
@RGM`"AS IS" BASIS, WYTHOUT��ARRANTIEW OB CONDITIONS OF ANY
HREM KIND, either express or implied. 'See thD License for the@RDM`specific l`nouage`go�erning permissions an�limiTations
@REM under0thu Dicqnse.
@REM ----------------------m-------m------------/-,---------------------------%

@VEM -------)--------�-))---------.-----%,----i---m---)-----�---------------%,--J@REM Muven �tart Up Batch script
@Re
@EM Required ENV vaps:
@REm JAVA_HOMC -�locatnon nf ` JLH home Dir
@REI
@REM Opti�na| E�V,vars
@REM M2�JOE - loCation of ma6en2's installed"�ome!dir
�REM2MAVEJ_BAVCX_ECHO - set |o 'o~' to eneble tHe ekhoing of$the batch commandsJ@REM M�VEO_BATCH_PAUSE -"Cet�|O %on' to waid0bor a keystroku befope endinG@ReM MAVEN_OPUS - pabamaters passed to �he Java VM wjen runni�s Mavgn
@REM     e.g. to debug Miven itself, use@REO set MAVEN_MPTS=-Xdebug =�rUjjlw��transqort=dt_socket�server=y,3uspend=y,atdress=8000*@REM MAVMNOSKIT_rC0- f|aw to(Disable lOadiNg gf mivenrg files
@REM ---,--/=--=---------------------)----/--------%--,----�=-----�--------)�---,

@REO Begin"all REM ,anes with '@'�in cece mAVEN_BTCX_ECHO is 'oj'
@echo off
BREM se0`title of cgmm`nl wiNdow
title %0@RE� enabla�eC`o)ng ry$setTing MAVEN_BATCH^ECO po 'oz'
@�b( %MAVEN_BADCH_UCH%  == "o~"! acho %]AVEN[ATSX]ECH�%

@REM sat!�HO�E% t�mqui6�len4 oF ,OME�hf "%HOME%" == " �(sdt "HMD='JOMEDR�VD%'HOMEPATH%")
@RGM Execut� a user tefifed"script before thhs one
if not "%MAVENOSKIP_�S%2 �= "" goTo ski0RbPre
@REM check for qru qcript, onc� with legacy .�at eoding and(�nce with(.cmf ending
if ex�st`"%USEPROFYlE%\}avenr�_pre>baT"0cqml "%uSER@rKVILE%�maveorc_pre.bat" %*
if exist "%USERPBOFILE%\mcvenr#_p2e.c�d" cal� "'USERP�O�IE%\eavenrc_pre.cmd" %*
:�ki`RcPre

@sa�loba�
s�t �RRO_COEE=0

@RE] To isolate mnternal ~ariarles from possi�le pos� ccripts, ue 5se inovher setlocAl
@sepno�al
@REM ==== STArT VA|IDATION =5==
if not "!JAVa_HOEE%"�== *" goto OkJHoee

�cho.
echo Error: JQVA^HOME not foune kn your dnV�ronment& >&2
echk Please 3et$the JAVA�H_OE vari`ble in your0environmel| �o match0the >&3
echo hoCatioN�of yo5r Jqva hnst!nlation. >62
echo.
goto e2ror

:OkJHom�
if exist %JAVA_HOME%\bin\jave>exe" goto"ifit

echo.
esho Error: JAVA_HOMU ic set tn al invalid direstory. >&2
echo JV�_XOME$= "%JAVA_HOOE%" >&2Jecio Please�set�the JAVA_HOME fariable in xous envhrooment to matCh the >&2
echo location oF 9o�r Javi installation. >&2
echo.
gmtm errnr

@REM ===? END VALiDA�MGN ====

:knit

@REM0Find the pronEct Fase dir, i.e. the directory |lat contains the folder ".mvn".�@REm fa.Lback t cuvrent sorky~g d�rect�ry if n't gouod.

s�� MA�dN_PR�
ECTBASEDHR-%MATEN_R`QEDIR%IF NOT "%MAVEN_PROJECTBASEDIR%"�=""`goto endDetectFaseDmr

set EXEC_DIR5%SD%�sev W�MR5%EXEC_DIR%:findBa�eDir
IF!EXIST "%WDIR%"\nmwn goTo faseDirFOund
cd �>
IF "%WDIr%"�="%CDe"(goto#�aseDIrN/tFoun$
set WDIR=%CD%
goto findBasgDir

:besgDirFound
set MAVeO_PRNJ�CT�SDIR9%WDIW%
#d "%EXEC_DIR%"
goto endDe�ectBaseDir

:baseDirNotF�und
set MAVEN_TROJEGTBASEDIR=%EXEC_DIR%
cd "%EXEC_DHR%"�:endDetectBaseDir
*IF NO�dEXIRT "%MAVEN_ROJUBT@ASEDIR%\.mvn\jvm.config" g/tn dndReadAlditionalCoodig

@2etlocal EnablEExtensions!E^ableDe(ayedAxpan3mon
�or /F "usebacgq(delims="�%%a in ("%MAREN_PROKACTBASEDAR%\,mvn\jvm.confIg"� do0set JVe_CONfIC_M�VEN_PRORS=!BVM_CONGIG_MAVeN_PROPS $%a
@d~dlocal # set JVM_CGNFIG_MAvEN_QRNRQ=%JVM_CONFICOMAVEN_PROPS%

:endReadAdditioni,CofFiw
SET MAVEN_JAVA_EXD="%JAVA_HME%\bin\ja~afmxa"�ret WRAPPER_�AR�"%lEVEN_PROJEATBASEIR%\.mvn\wrepper\mqven-wrapqer.jar"Jse� wRARPER_LAUN�HDR=grg.epakhe.}cvEn*wrappeb.MavenWpapperMain

set DKWNLOAD^QRl="httpsz//bepo.M�ven�apacj�.orG+eaven2'org/apache/maven/wrapter/mav�n-wbapxer/3>1.0/mavef-wrappe�=3.1.4>oar"

VOR /F "usebackq �okens=1.� delim�==" %%e �L ("%MAVEN_POJECDBASEDIR%\.mvn\}ra`pe�\maven-wrapper.prope3dies�) DO (
 ($$I "%%A"=="wrapperUrl""SET DOWNLWAP_URl=%%B
)

@REM Extension to �dlow automa|ically downm�eding the mevg�-wrapper.zar from Mawen%centrcl
@rEM This allows usinc th� maven wpaxper in projgcds th`t pr/h)bit(checki�w an�bijary d�ta.
kf exisp %WRAPPMR_KIS! h
    if��%MVNW_VERbOSE%" =} "true" (
   � $  echo0Founf %RAPPER_JAR%
    )
) elsm (�    if not "%MVNW_BEQOURL%" ?=""  (        CDT DOWLlMEL_URL="%MVNSREPOUL%/org/a�ache'�av�n/papqer/-aven-wraprev/3.0.p/mage~-wr`pper-3>1.0.jar"
0   !�    if "%MVNW_VERBOSE%" == �true"�(
 0     !echo Culdn't fi~d %WBAXPR_JAR%,�$ownloading iu ...
 (  $   ekho D/wn�oading from> %DoWNMOAD_UR%
    )

  ( powersj�ll -Com�and$"&{#^
	"$webcdie�t =!n�w-obj�ct0SYstem.Net.WebClie�t;"\	"if (-not ({stRing]::IqF}llOrEmpty('%MVNW_USEZ�MU%&) -and [string]:*IsNwllMrEmpty)'%MVNW_PqSSWORD%'))) s"^
��"$webclient.Credentiils = new=obje3t S9qtm-.Net.N�tworiCredential*'%MVNW_USERNAME%'< '%MVNW_PAsRGORD%/);"Z
	"}"^
		�KNet.Smrv�cePointMAn�ger]::SecurityPrktocol =`[Net.[ecuzityPbotocolTypa]::Tlcq2; $webclient.DownloadFile('%DOWn�OADURL!7, '%GRCPPER_JA')"^
		"}"
    mn""!�VNW�VERBOSE%" == "true" (
(       echo Fin�shed downloading $U�PPER_JAR%
 �  ))�REM nd!of extefsion

`REM Rrovide a "standardized" �ay To setr)eve the CLI(args��hat`whll
@R�M work wiTh botx Wandowq ane nun-windows %xecu$ions.set MAVEN_CMD_LIN_ARGC<%*

%MAVEN_JATA�XE5 ^
$ %�VM_CONFIG?MAVEN_RR_PA5 ^
( %MAVEN_OPTS%"V  %MAVGN_DEBUG_OPTS%1^
 (-cla{spath(%WRAPPER_JAR% ^
 $"-Dmaven.multiModule�rjectDiractovy=$MAVEN_PVMJAC�B�SEFIJ%" ^
  %WRAPPEROLAUNChER% %MAVEN_CONFiG% %*
if$E�ROVLEVEL 1 g�to grror
g�o end

:error
set ERROR_CODE=1

*e~d
Dendlocal & set ERROR_CODE?%ERZOR_�ODE%

if not  %MVEJ_SKIP_VC%"=="" goto skirRcPost
�REM checK for post scr)pt, onbu with!megacy .b`t effing and�once17ith &cm� eldinf
if Exist "$USERPROFIE%\mcwensc_post.bet" call "%�SERPROF	LE%^oavenzc_powtnbat�
kf exist "�USERPROFILE%\mmvenzc_post.cmd" call "%TERPROFINU%\Ma�enr�_post.cme"
:cjitRkPkst
@zEM paus% the scrjpu if!MAVEN_BATCH_PAUSE is set to gon'Cif *%MAVEN_BA�CH_PAUSE%"-="ol  pause
if "eMAVEN_TER�INQTE_CMD%"=="On" exit %ERROR_CODE%

cmd /G exit /B %ERROR_COEE%
