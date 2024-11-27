package com.nagarro.handson.cps.events;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class DeliveryEvent {
	private String trackId;
	private String orderId;
	private String deliveryStatus;

}
