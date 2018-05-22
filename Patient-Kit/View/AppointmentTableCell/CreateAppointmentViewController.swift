//
//  CreateAppointmentViewController.swift
//  Patient-Kit
//
//  Created by zcrome on 5/22/18.
//  Copyright © 2018 UPC. All rights reserved.
//

import UIKit
import CVCalendar

class CreateAppointmentViewController: UIViewController {

	
	@IBOutlet weak var menuView: CVCalendarMenuView!
	@IBOutlet weak var calendarView: CVCalendarView!
	
	
    override func viewDidLoad() {
        super.viewDidLoad()

        menuView.delegate = self
			calendarView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	override func viewDidLayoutSubviews() {
		super.viewDidLayoutSubviews()
		
		menuView.commitMenuViewUpdate()
		calendarView.commitCalendarViewUpdate()
	}

	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		
		let label = UILabel(frame: CGRect(x:0, y:0, width:100 , height:50))
		label.backgroundColor = .clear
		label.numberOfLines = 2
		label.font = UIFont(name: "Poppins-SemiBold", size: 15)
		label.textAlignment = .center
		label.textColor = .white
		label.text = "New Appointment"
		self.navigationItem.titleView = label
	}
	
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}


extension CreateAppointmentViewController: CVCalendarViewDelegate{
	func presentationMode() -> CalendarMode {
		return .monthView
	}
	
	func firstWeekday() -> Weekday {
		return Weekday.saturday
	}
	
	
	
}

extension CreateAppointmentViewController: CVCalendarMenuViewDelegate{
	
	
}














