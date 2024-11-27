package com.nagarro.handson.processing.aggregate;

import com.nagarro.handson.cps.commands.CancelShipmentCommand;
import com.nagarro.handson.cps.commands.ShipOrderCommand;
import com.nagarro.handson.cps.events.OrderShippedEvent;
import com.nagarro.handson.cps.events.ShipmentCancelledEvent;

import org.axonframework.commandhandling.CommandHandler;
import org.axonframework.eventsourcing.EventSourcingHandler;
import org.axonframework.modelling.command.AggregateIdentifier;
import org.axonframework.modelling.command.AggregateLifecycle;
import org.axonframework.spring.stereotype.Aggregate;
import org.springframework.beans.BeanUtils;

@Aggregate
public class ShipmentAggregate {

	@AggregateIdentifier
	private String shipmentId;
	private String orderId;
	private String shipmentStatus;

	public ShipmentAggregate() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ShipmentAggregate(ShipOrderCommand shipmentCommand) {
		OrderShippedEvent orderShippedEvent = OrderShippedEvent.builder().shipmentId(shipmentCommand.getShipmentId())
				.orderId(shipmentCommand.getOrderId()).shipmentStatus("Order Shipped").build();
		AggregateLifecycle.apply(orderShippedEvent);

	}

	@EventSourcingHandler
	public void on(OrderShippedEvent event) {
		this.orderId = event.getOrderId();
		this.shipmentId = event.getShipmentId();
		this.shipmentStatus = event.getShipmentStatus();
	}

	@CommandHandler
	public void handle(CancelShipmentCommand cancelShipCommand) {
		ShipmentCancelledEvent shipCancelEvent = new ShipmentCancelledEvent();
		BeanUtils.copyProperties(cancelShipCommand, shipCancelEvent);
		AggregateLifecycle.apply(shipCancelEvent);
	}

	@EventSourcingHandler
	public void on(ShipmentCancelledEvent event) {
		this.shipmentStatus = event.getShipmentStatus();
	}

}
