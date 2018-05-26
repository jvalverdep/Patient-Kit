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
    var id: Int
	var patientId: Int
	var doctorId: Int
	var height: Double
	var weight: Double
	var glucoseTest: Double
	var scheduled: Date
    var reason: String
	var notes: String
    var doctor: Doctor
//    var patient: Patient
    
    init(id: Int, patientId: Int, doctorId: Int, height: Double, weight: Double, glucoseTest: Double, scheduled: String, reason: String, notes: String, doctor: Doctor) {
        self.id = id
		self.patientId = patientId
		self.doctorId = doctorId
		self.height = height
		self.glucoseTest = glucoseTest
		self.weight = weight
		self.reason = reason
        self.notes = notes
		self.scheduled = UtilDates.getDate(stringDate: scheduled)!
        self.doctor = doctor
	}
	
	public static func from(jsonAppointment: JSON) -> Appointment {
        return Appointment(id: jsonAppointment["id"].intValue,
                           patientId: jsonAppointment["patient_id"].intValue,
                           doctorId: jsonAppointment["doctor_id"].intValue,
                           height: jsonAppointment["height"].doubleValue,
                           weight: jsonAppointment["weight"].doubleValue,
                           glucoseTest: jsonAppointment["glucotest"].doubleValue,
                           scheduled: jsonAppointment["scheduled"].stringValue,
                           reason: jsonAppointment["reason"].stringValue,
                           notes: jsonAppointment["notes"].stringValue,
                           doctor: Doctor.from(jsonDoctor: jsonAppointment["doctor"]))
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
