package com.nagarro.handson.processing.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class PaymentEntity {

	@Id
	private String paymentId;
	private String orderId;
	private Date timestamp;
	private String paymentStatus;
	
}
