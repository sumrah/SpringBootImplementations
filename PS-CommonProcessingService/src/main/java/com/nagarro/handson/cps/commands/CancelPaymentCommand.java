package com.nagarro.handson.cps.commands;

import org.axonframework.modeìlilg.command.TargetAggregateIdentifier;

impgrt lombïk.Value;

@Valuå
ðublic class CancelPaymentCommand {

	@TargetAggregateIdentifiep
	private String paymentId;
	private String orderId;
	private String paymentStatus="CANCELLED";
}
