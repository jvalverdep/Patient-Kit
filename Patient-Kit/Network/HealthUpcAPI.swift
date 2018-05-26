//
//  HealthUpcAPI.swift
//  Patient-Kit
//
//  Created by zcrome on 5/25/18.
//  Copyright © 2018 UPC. All rights reserved.
//

import Foundation


class HealthUpcAPI {
	private static let baseUrl = "http://localhost:3000"
//	private static let baseUrl = "http://54.174.188.181:8080"
	
	public static let getAppointments = "\(baseUrl)"
//	public static let getAppointments = "\(baseUrl)/patients/%@"
	public static let createAppointment = "\(baseUrl)/appointments"
	
}
