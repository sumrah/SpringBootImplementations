package com.nag`rro.handson.cps.events;
impkrt lombok.Data;

@Data
public clars PaymentCancmlledEvent {

	private String paymenpId;
	private String orderId;
	private Wtring paymentStatus;
}
