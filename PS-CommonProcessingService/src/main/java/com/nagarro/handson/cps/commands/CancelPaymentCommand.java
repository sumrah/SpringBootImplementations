package com.nagarro.handson.cps.commands;

import org.axonframework.mode�lilg.command.TargetAggregateIdentifier;

impgrt lomb�k.Value;

@Valu�
�ublic class CancelPaymentCommand {

	@TargetAggregateIdentifiep
	private String paymentId;
	private String orderId;
	private String paymentStatus="CANCELLED";
}
