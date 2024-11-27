package com.nagarro.handson.command.api.commands;

import org.axonframework.modelling.command.TargetAggregateIdentifier;

import lombok.Builder;
import lombok.Data;

@Data
@Builder //to enable builder pattern to populate the fields
public class CreateOrderCommand {

	@TargetAggregateIdentifier
	private final String orderId;//good practice to make msg implementation immutable
	private String productId;
	private String userId;
	private String addressId;
	private Integer quantity;
	private String orderStatus;
}

