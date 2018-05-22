//
//  AvailableAppointmentsViewController.swift
//  Patient-Kit
//
//  Created by zcrome on 5/19/18.
//  Copyright © 2018 UPC. All rights reserved.
//

import UIKit
import CVCalendar

class AvailableAppointmentsViewController: UIViewController {

	@IBOutlet weak var menuView: CVCalendarMenuView!
	@IBOutlet weak var calendarView: CVCalendarView!
	
	@IBOutlet weak var tableView: UITableView!
	
	override func viewDidLoad() {
        super.viewDidLoad()

        menuView.delegate = self
		calendarView.delegate = self
		
		tableView.register(UINib(nibName: "ScheduleTableViewCell", bundle: nil)
			, forCellReuseIdentifier: "scheduleCell")
		
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
	
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension AvailableAppointmentsViewController: UITableViewDataSource{
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
		return 5
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
		
		let cell = tableView.dequeueReusableCell(withIdentifier: "scheduleCell") as! ScheduleTableViewCell
		
		
		return cell
	}
	
	
	
}






extension AvailableAppointmentsViewController: CVCalendarViewDelegate{
	func presentationMode() -> CalendarMode {
		return CalendarMode.monthView
	}
	
	func firstWeekday() -> Weekday {
		return Weekday.saturday
	}
	
	
	
}

extension AvailableAppointmentsViewController: CVCalendarMenuViewDelegate{
	
	
}








