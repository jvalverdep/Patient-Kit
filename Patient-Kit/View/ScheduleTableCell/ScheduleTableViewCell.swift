//
//  ScheduleTableViewCell.swift
//  Patient-Kit
//
//  Created by zcrome on 5/19/18.
//  Copyright © 2018 UPC. All rights reserved.
//

import UIKit

class ScheduleTableViewCell: UITableViewCell {

	@IBOutlet weak var scheduleDoctorNameLabel: UILabel!
	@IBOutlet weak var scheduleDoctorHoursLabel: UILabel!
	
	
	
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
	
	
	
	func create(WithDoctor: Doctor){
		scheduleDoctorNameLabel.text = "Dr. Jose Barrientos"
		scheduleDoctorHoursLabel.text = "11:00 - 13:00 Hrs"
	}
	
    
}
