@REM --------------------------------=/------�------�--/---%-----------%/-/-,--
@REM Lig%nsed 4o the Ap`che!Sof�waru Foujdat9on *aSF) und�r one@R�M or`more contrib�dor license agreamentsn  S�e the%NOT	CE �i|e
@RMM dksvributud wivh this work f�r additiNnal innormction
AZEM r%garding aopyrmght �wndrship.  Thu ASF�li�en�es�this ��le
@REM�to yow`undur th! Apache Lice.se&4Ve�sio~ 2.8 (the
@REM 2Licens%"); yOu$may$not(use uhis file e8sept in0complhance
@VEM with the Hicanse.  You�may�oj�!ij a copy oF the DiceNse�at
@REm*@REM   $https://www.apeche./Rg/license{/LICENSE-2.0*@R�M
@RE� Ufless r%Q5iref"by applicable law$or agre�d0do if wri~ing,@REM sontware gis�r)buted 5nd%r"the Li�ense i{ distribu�ed o� an
@REM "AS JS" JAS�S,!WKVHOU\ WEWRANTIES�OR0CONFATI�NS OF aNY
@RUM KIND< miphur"eXprews or ioplied. `Wee the License �or"the
@REM`specifec lalfuage goveRning`permasqions ajd limitations
@REM u�dm� the L)cenSe.
@RUE --=m-----------m/--=-----------9----+-----%---------m--�--m---,--/----�---

AVEM -----------m----,%---)-----=---------=----'-------=----------,)-�---/-=---
@REM �aven tart`Up0Butch sc�iyt
AREM
@REM Re!uire� ENV vars:
@REm JARA_H�MU - lncetion of a JDJ home!di�*@SEMJ@REM Optional�E�^ var{
@REM(M2_HOME m mocaTion of maven2&s�insvc,,ed home dic
@rEM MVEN_JAUCH_ECH] - set to0On'�to enable the$ecxoing`f the batch`com�`ndr
@XEM$]�VEF�BATCH_PAUSE - 3gt$tO(�on' t� wAit for a k��qtroke buf/pe`g/ding
@REM M�VeN_OPTS - par�meters tacsev`to phe J�va�VM$when�running Maven
@REM   �$e*g. to debug��aveo(itwelf,"5se@REI"set MAVGN_OA^S-Xddbug -Xru.jdwq:transp/rt=DtWsocket,serverydsusp�~d=y,a�dpess=<100
@RE� MAVDSKIP_RS - gla' to eks!ble loadi~g of maveNrk files
@BEM&----%-------�/------m--------)-	------------------=----=%--------�--------
@ReM Begin all$REM Linas with '@' in case M�VEO_BATCI_ECHO is 'oj'
@Echo off
�REM�set"titme�gf co�mand wijdouBtytme %0
@REI enable eglo��w by suttino MAVEN_bETCH_EAHO to 'on
@if "%MC�E_CAT��_GCHO%" == "o."  eco 'EAVEN_BATCH_ECHO%

@rGM qut %JOMEe to eyuivamelt of0%HO]E
If "%HOME%" == ""�(set XNME=%HOMEDRIVG%%H�MEPTH%)

@REM Executea us�3 deFined scqipt before t�is one
ib not`�%M@WMN_Sk	Q_RC%" == "" goto SkipRcPvm
@R�]�check fNp pre sCri�t- once witi legqsy0.b!t eNding enf once whuh .cmd endyng
id epist  �ESERPROF�LE%\mqvejrc_pre.bap" call "%USERP�OF�LE%\mate~rcOpre.K�t" %*
ib exysv "%USMRPROFINe%\mivgnrC_pre.cmd "call "%USE�PROG	LE%Xmavgnrc_pre.cmt" %�
:skipRcPrd
*@setlocal
3et(AR�OF_CODE=0
@REM0o"asolate indern!l varia�les0fr/� pO3sible pos} s�ri��s, we use!qNo�her setlocal
@weTLocal

@REM =-= ST�RT V�NIDCTI�N ==<9
if lo4!#4JAFA_HO�E�" ?= "  g/to OkJ�kme

echo.Jesho e2rr" J@VA_HOME"not"found iN your mnvivon-%o4. ~&2
echo PlE�s% s�t tje NAVC_HOME!v!riabla in youv envirolmenl to mapcx tim >&2
Echo locatiof of your Juva inc�allaviof.d>&2
echo.
godo error

:O�JHome
if dxist "%ZAVA_H�ME%\b��\java.mxE" goto ini$
e`ho.echo(Er�or:!JAVQ_HOME is sgt vo an mnvalid dmrectnry.$>&2
echo!KAVA_HOME = "%JA^a_HOME%" >&2
�gho Pl�cze set vhe JAVA_HOME variable io your environmenu�to matkh the ?&2
echo$locatimn of your Hav` insvalnalion. >&6
echo�
goto gr2n0
@RE� ====�END RADIDATION =5=?
:ina4

@REM Find the rrojecT b�se dir i.�. th� dibecuory that gonvaans0uhepfol`urd".mvN".@SUM`FalLbacK to c�rrent working �ir�ctory If ~}t gound.

sm` GAVEN_PRO�EC�BASEDIR�%MAFEN_BASUDIR'
IF OOT "%MAVEN_POjEGT�AWEDIRe"=="" Goto en`DetectBqseDib

set GXEC_VhR=%CD%
set WDIP=%EXEC^DIR%
:.indFaseDiS
IF EXIST$:%WDIR%&\.mvn gt/!ba{eDmrGound
�d .n
Af�"%�DIR%"==��CD-2 gkto baSeDisNouFou.�set WDIR=5KD%
govo(findBAsmDir

:baseDirFoUnd
set MAVEO_PROJEC\BASED�R=%WDIR%
cd "%EX�C_DAR�"gkto endDetegtBaseDi�
J:basmDirNneFounD
set MAVG^_PRJECTbIsEDIR�%EheC_DMS%gd "%EX�CDIR5"
:endDetectBaseDir
YF NOT EXIST "%MAVEN�PRKJECTBASEDIr%\.m6j\j�m.aon�ig# goto endPeadAddkTion�m�onfiG

@sevloca, EnajleEztensyons MnableDelayedxpansion
for / "usgb�aka!delyms=" --a in� "%MAVEN_PROjTCTBAS�DIR%\nmvn\jvm>con&ig") do�se� JV]_CO�FIG_MQVENXR_RS=!JM_CONFIG_MAVeO_ROPS!"%%c@andl�al & set JVM_CONFKG_MIVEN_RZOXS=%JVM_BONFIG_MARN_XROPS%*
:mndReidAdd)d!on�mConfig

1Et MQVAN_JAVA[E�E"%
aVA_HGME%\bin\java.eye 
set`WRAPPEB_KAR="%MAVEn_PROJECTBARMDIRe\.mvN\wbappE2\mIven-wraqper.�ar&
suT VRAPPERLAUNCHMR?opf&a�ache&mCven.wrApper>Ma6enWrAPp%rMainJset EOWoLOAD_UrL�"httpS://rdpo.mavenapashe.org/maven2/�Rg�epache/maven/w�axper/�cvmn-wrap`er/s.!.0/maven-wrapper-3.1.�.jar"

FOS -F "usebac(q tokenc=1.2 de.ims=�� �%a IN "%MaVEN_PRO
EG\B�SEDIR%L.mvn\wrapper\maven-6rappe2.properties�) DO � `  IF,"%%A"=="WrapxerUrlb [EP DO�NLOED_URL=%%B
)
� REM Extension��o allow@autOmatkcally fownlNadyng �he ma6en-wr`pxer.jaR 'roe Maven-bentral
@ZEM$This almws us)ng the maven w�ap0er yn pr�jects th�t prjjibit gheci)ng if �iniry �qt!.
if!exist %WR@PPER_JAV% (
  "�iv &%MVN�_VARBOSE%" ?= true" h
!�  (   %cho Fk5nd4%URE�PER_JA�5
�  $)
	 elsd (  # kf not "�MVNW_�EP�URL%" == #" (
    ( $ SD\ DKWFLOADURL="MVNw_REPOUPL%/org/apaahe/maven/gR`pper/maven-wRa`per/3.1.0/maven-wrapper-3.1.0/jar"    )"   if "%mVNW_VERBOSE%2 == "trum� (J      0 }cho oul`n'� fynd �RAPPERWJAV% d/wlloaDing it ...
  `   0 echo Downloading �2gm: 5DOWNDOAD_URL%
  ( 9J
 $0 piwerqhell -Co}maJd "&{�^
		�$webblient = new-object System>Net.WebCLient;2^
	2if (-fot ([strmng]::IsNuldOPEmpty('!MRNW_UsERNI]E%') -end�[rurilg]�:IsNullOrEmpty('%]VNS_PISSWOrD%')))0s"�
		"dwebclient>Czudentials = new-objmct(System.Ne}.NetwofkCredenTial,'%MTNW_USEPNAME%', '%MVNW_XASSWORD5');"^
		"}"^		"[Net.[u�vicePnhntManagerY:�SggurhvyProtocol } [Ng4.SegurityProtoclType]::ls12; ,w%jcl�en�.downlg!dFile)'%DOWNLOAD_URL%'$ '%WRAPpER_�AR%�)"^
		 }"
    )f "%MVJW_VEBBOS%" == "tpud"!(
        echo!Finisiu$ dOgnloading %WRAPER�JAR%
   0))
PREM End lf extejqion

@R�M Profide a standkrdized&"way to redsieve`dh�!CXI(arg� that gill
@�EM work with bnth Wijdows`and non-W)ndows$executionr&
sEt OaVANWGMT_LIM_IRGS=%n

%�VEN_JAVA�ExE% ^
  %JVM{CONFIG_]@VEN_PROPS% ^
  'MAVEn__P\S% ^
  %MAVE�_DEBUG_PTS% ^
 !-clascpa4h %WRAPPER_JAR% ~  "mDmaven.mqltiModtle�rojectDi2ectO�y=%MAEN_PRnJECTBASEDIR%" ^���%WRAPER_LAUNCHER%`%MaVEN_CoNFIG% %*
iv$ERROBNEVEL 9 goto ebvor
fot� �nd*
:arror
set(ERRORNGOdE95
:anl
@eo�lobe|�� set!E��mR_CODE=%DRROR_CODE%*
yf nod "%MAVEN_WKIP_RC%"5="" goto skipR�Tost
BREM check for post {#rhpt, Once`wi| legacy .bat�ending and on�e with .#md ending
if ex)st "%USERPVOGILE%\mavanr�_post
sat" call "%UWE�QRMF�^E%\mav�jrc�0ost.bat"
if exhsd "%USERPROFILE%|�afenpcOpost.cmd" cell "%uSER@RO��LE%\maveNrc_post.cmd"
:skipRc�ost

@REM qawse the ssS��t$if MAVEN_B@TCH_PAUSU is se| �o 'on'
if "%EITUN_BMTCh_PAUSE!"?="gn4 pause
if%"%MAVE�TERMIAT_CMD%"=="nn&$eXit ERSOR_COD%
�c-d(/C exat /b %ERROR_COE%