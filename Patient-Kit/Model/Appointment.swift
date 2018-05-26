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
	var scheduled: Date
	var notes: String
	
	init(patientId: Int,doctorId: Int,height: Double,weight: Double,glucoseTest: Double,scheduled: String,notes: String) {
		self.patientId = patientId
		self.doctorId = doctorId
		self.height = height
		self.glucoseTest = glucoseTest
		self.weight = weight
		self.notes = notes
		self.scheduled = UtilDates.getDate(stringDate: scheduled)!
	}
	
	public static func from(jsonAppointment: JSON) -> Appointment {
		return Appointment(patientId: jsonAppointment["patient_id"].intValue,
									 doctorId: jsonAppointment["doctor_id"].intValue,
									 height: jsonAppointment["height"].doubleValue,
									 weight: jsonAppointment["weight"].doubleValue,
									 glucoseTest: jsonAppointment["glucotest"].doubleValue,
									 scheduled: jsonAppointment["scheduled"].stringValue,
									 notes: jsonAppointment["notes"].stringValue)
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
