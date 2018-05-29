//
//  AppointmentDetailViewController.swift
//  Patient-Kit
//
//  Created by zcrome on 5/21/18.
//  Copyright © 2018 UPC. All rights reserved.
//

import UIKit

class AppointmentDetailViewController: UIViewController {

	
    @IBOutlet weak var doctorImageView: UIImageView!
    @IBOutlet weak var doctorNameLabel: UILabel!
    @IBOutlet weak var doctorProfessionLabel: UILabel!
    @IBOutlet weak var scheduledDateLabel: UILabel!
    @IBOutlet weak var scheduledTimeLabel: UILabel!
    @IBOutlet weak var cancelAppointmentButton: UIButton!
	
    var appointment: Appointment? {
        didSet {
            
        }
    }
	
    override func viewDidLoad() {
        super.viewDidLoad()

        cancelAppointmentButton.backgroundColor = UIColor.red
        cancelAppointmentButton.layer.cornerRadius = cancelAppointmentButton.bounds.height / 2
			
        self.view.backgroundColor = AppColor.smoke
        updateValues()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		
		let label = UILabel(frame: CGRect(x:0, y:0, width:100 , height:50))
		label.backgroundColor = .clear
		label.numberOfLines = 2
		label.font = UIFont(name: "Poppins-SemiBold", size: 15)
		label.textAlignment = .center
		label.textColor = .white
		label.text = "Appointment's Detail"
		self.navigationItem.titleView = label
	}
    
    func updateValues() {
        if let currentAppointment = appointment {
            doctorNameLabel.text = "Dr." + currentAppointment.doctor.firstName + currentAppointment.doctor.lastName
            doctorProfessionLabel.text = currentAppointment.doctor.profession
            scheduledDateLabel.text = "\(UtilDates.spanishFormat(date: currentAppointment.scheduled))"
            scheduledTimeLabel.text = "\(UtilDates.getHourMinutes(currentAppointment.scheduled))"
        }
    }
    
}
