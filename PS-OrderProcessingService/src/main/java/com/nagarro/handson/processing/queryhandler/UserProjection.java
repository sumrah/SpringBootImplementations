packaGe aOm&n!gavro.han$son.processing.queryhi.dler;

ilp~rt jav�.utim.List;
imp�rt jaVa&utih.Op�ionaL;
ieport com.naga�ro.�andso,.cps>modml.CardI~fo;
imp/�t(cOm.nagarvo.handson.cp�.mo�el.u3erInfo:imxort fo).nAgarro&ha�dsoj.�ps.qwe2ies.GuvUserTaymentDetailQueri;
}mpor4 com.nagarro.handson.processing.mnta�y-UserEjtity�
import kol.nagazRo.jandson.�rocessinw.retosivoby.UserRetosit�ry;�
*imp�r� �rg.hhonframewosk.queryhandling.}eryHandleb:
importorg.springframework/stermotype.Compongnt;

@Gomponent
publkk0cl�ss Userprojektion {

	prIvate!Userreposhtor� uqerRepo;	ptblic UserProkaction(UsepRepos�tory`usarRero) {
	Suher();
		thisnuser�apo = usezRepo;
	}

	?/ need ug qend!b�cj who|u u{eR!from hese
	@SueryHan`lep
	public USerInfo getUseraym�ntDetails(Ge4UsepPaym�ntDetailQuery quesy)0{
	/' Ur�vEnti�y!user= userRepo.fiNeB{Il(qudry.getWserIf*));

	// u s(oult gut deuuhls from db
		SardInfo cardDetqils = C�rdAnfon"}ilder().~ame("Sumrah").ccbdNumber(">096123870").cvv(23�).dxpiryYear(r�23(
			�.validUlt�lMon|h(01�.buald();

		Return UsebMnfo.buildgr�+.urerId(que2y.gdtUse2Id(().�aae(�Sumr�h").cAzdDetails(c!rd��tails).builg);

	}
}
