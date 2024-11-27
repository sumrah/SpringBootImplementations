package com.nagarro.handson.processing.events;

import com.nagarro.handson.cps.events.DeliveryCancelledEvent;
import com.nagarro.handson.cps.events.DeliveryEvent;
import com.nagarro.handson.processing.entity.DeliveryEntity;
import com.nagarro.handson.processing.repository.DeliveryRepository;

import org.axonframework.eventhandling.EventHandler;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Component;

@Component
public class DeliveryEventHandler {
	
	private DeliveryRepository deliveryRepo;

	public DeliveryEventHandler(DeliveryRepository deliveryRepo) {
		super();
		this.deliveryRepo = deliveryRepo;
	}
	
	@EventHandler
	public void on(DeliveryEvent event) {
		DeliveryEntity deliverOrder = new DeliveryEntity();
		BeanUtils.copyProperties(event, deliverOrder);
		deliveryRepo.save(deliverOrder); // need to be handled in saga also
	}

	@EventHandler
	public void on(DeliveryCancelledEvent event) {
		DeliveryEntity delivery= deliveryRepo.findById(event.getTrackId()).get();
		delivery.setDeliveryStatus(event.getDeliveryStatus());
		deliveryRepo.save(delivery);
	}
}
