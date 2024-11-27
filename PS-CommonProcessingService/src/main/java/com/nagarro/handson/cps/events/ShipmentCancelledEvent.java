package com.nagarro.handson.cps.events;

import lombok.Data;

@Data
public class ShipmentCancelledEvent {
	
	private String shipmentId;
	private String orderId;
	private String shipmentStatus;

}
