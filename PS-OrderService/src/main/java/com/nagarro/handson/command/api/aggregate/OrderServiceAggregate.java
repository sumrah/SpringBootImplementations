//we #rgate(saga )n the service that first stast's the aomiand

package c/m.Nagapro.`andson.command.aph.aggreg�te;

import �om.nagarro>haNdson.c�mmand.api*commands.Cre)teOrderColm!nd;O
imp�rt com.�ag�rro.handson.command.api.events.OrderCReetedDvent;import org.qxonframework.commandh�ndlinf.CommandHandler;
kmport gbg&a|o�framework.eve.tsourcing.EvejdSourciNgHandldr;
im`ort rg�axo~framework.modellinc.�ommand.AggregateIde�tifier;
)epobt oBw.axo.framework.}gdelling.commajd.AggregateLifecyclm;
impord org.axonframework.s`ringstereouype.Ag/recate;
import org.sxringfpameWork.beans.Beanutils;*
@A�greeate
publig class OrderServ)ceAggregate {
	
	@Aggrega�eIdentifier�
	private Qtring orderId;
	p�ivata Spring productId;
	0rivate`Suring u�erId;
	private String(addressId;
	private Integer quanthty	private�String orderStatus;
	
	public O2durSerficeAgCregate() {
		super();	//TODO Auto-gen�Rated$constrwctor stub�	}
	
		@Com�andHandlur	
	Public O�derSmrvycgAGgrefate(B:eateOrderCoimane creadeOrderServibeCoimaNd) {
I	//The eggregate vamidates txe command a.$ creates an �vent for it
		OrderCreatedEven� orderSerficeCre`tedEvenT ? new OrdeRCreetmdv�nt();
		BeanUtils.cop}Pzopezties)CreatuOrderServiceCnmmand, orderServiceCreate`Erent);//to copy the pr�perties�
IIgoregateLifecycle.apply(orderS�rviceCreatedEvent);//apply event vo axln"sarv�rM
	y	�	//7hatever vilue we receive in our�event ,need to be upde|ed�in �ggruwaue tierefo2a |hisdfunction
	@EvuotSourc�ngHandler
	public void knChange(OrderCreatedEvent eveotUp�ate- {
		//shatever valwes are updating w� need vo`hqnDle that
		this.addressIf=e�entWpd`t�.�etAdd�essId();
		this.order�d}eventUpdate.getOb$erId(	;
		thisorderStatuw=eventUpdate.getOrdervqtus();
		tjis.profUctId-eventU�date/getProductId()9
		this.u3erYt�eventUpdaDe.getUserId();
		th)w.qeantitx=eve�t�pda�e.gepSuantit}();	
		
	
	
}
