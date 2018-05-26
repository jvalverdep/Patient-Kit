//
//  Appointment.swift
//  Patient-Kit
//
//  Created by zcrome on 5/21/18.
//  Copyright © 2018 UPC. All rights reserved.
//

import Foundation
import SwiftyJSON

class Appointment{
	
	var patientId: Int
	var doctorId: Int
	var height: Double
	var weight: Double
	var glucoseTest: Double
	var scheduleTest: Double
	var scheduled: Date
	var notes: String
	
	init(patientId: Int,doctorId: Int,height: Double,weight: Double,glucoseTest: Double,scheduleTest: Double,scheduled: String,notes: String) {
		self.patientId = patientId
		self.doctorId = doctorId
		self.height = height
		self.weight = weight
		self.glucoseTest = glucoseTest
		self.scheduleTest = scheduleTest
		//TODO
		self.scheduled = Date()
		self.notes = notes
	}
	
	public static func from(jsonAppointment: JSON) -> Appointment {
		return Appointment(patientId: jsonAppointment[""].intValue,
									 doctorId: jsonAppointment[""].intValue,
									 height: jsonAppointment[""].doubleValue,
									 weight: jsonAppointment[""].doubleValue,
									 glucoseTest: jsonAppointment[""].doubleValue,
									 scheduleTest: jsonAppointment[""].doubleValue,
									 scheduled: jsonAppointment[""].stringValue,
									 notes: jsonAppointment[""].stringValue)
	}
	
	public static func from(jsonAppointments: [JSON]) -> [Appointment] {
		var appointments = [Appointment]()
		let count = jsonAppointments.count
		for i in 0..<count {
			appointments.append(Appointment.from(jsonAppointment: jsonAppointments[i]))
		}
		return appointments
	}
	
	
}
