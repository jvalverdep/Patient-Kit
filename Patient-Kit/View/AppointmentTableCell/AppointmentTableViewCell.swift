//
//  AppointmentTableViewCell.swift
//  Patient-Kit
//
//  Created by zcrome on 5/21/18.
//  Copyright © 2018 UPC. All rights reserved.
//

import UIKit

class AppointmentTableViewCell: UITableViewCell {

	
	@IBOutlet weak var leftDecoratorView: UIView!
	@IBOutlet weak var doctorNameLabel: UILabel!
	@IBOutlet weak var appointmentDateLabel: UILabel!
	@IBOutlet weak var appointmentScheduleLabel: UILabel!
	@IBOutlet weak var doctorSpecialtyLabel: UILabel!
	@IBOutlet weak var doctorPictureImage: UIImageView!
	
	
	
    override func awakeFromNib() {
        super.awakeFromNib()
			leftDecoratorView.backgroundColor = AppColor.darkPurple
			doctorNameLabel.textColor = AppColor.black
			appointmentDateLabel.textColor = AppColor.darkGray
			appointmentScheduleLabel.textColor = AppColor.darkGray
			doctorSpecialtyLabel.textColor = AppColor.darkGray
    }
	
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
	
	
	func setDataWith(){
		doctorNameLabel.text = "DR Jose Barrientos"
		appointmentDateLabel.text = "10/02/2018"
		appointmentScheduleLabel.text = "11:00 - 13:00"
		doctorSpecialtyLabel.text = "Endocrinología"
	}
	
}













