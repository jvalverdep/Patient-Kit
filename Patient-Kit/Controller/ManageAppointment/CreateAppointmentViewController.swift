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
    @IBOutlet weak var availableAppointmentsTableView: UITableView!
    
	
    override func viewDidLoad() {
        super.viewDidLoad()

        menuView.delegate = self
        calendarView.delegate = self
        menuView.backgroundColor = AppColor.lightPurple
        calendarView.backgroundColor = AppColor.lightPurple
        
        availableAppointmentsTableView.register(UINib(nibName: "ScheduleTableViewCell", bundle: nil)
            , forCellReuseIdentifier: "scheduleCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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
}


extension CreateAppointmentViewController: CVCalendarViewDelegate{
    func presentationMode() -> CalendarMode {
        return .monthView
    }

    func firstWeekday() -> Weekday {
        return Weekday.monday
    }

    func presentedDateUpdated(_ date: CVDate) {
        print(date.convertedDate())
        availableAppointmentsTableView.reloadData()
    }

}

extension CreateAppointmentViewController: CVCalendarMenuViewDelegate{

    func dayOfWeekFont() -> UIFont{
        return UIFont(name: "Poppins-Regular", size: 12)!
    }
    
    func dayOfWeekTextColor(by weekday: Weekday) -> UIColor{
        return .white
    }

}

extension CreateAppointmentViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        
    }
}

extension CreateAppointmentViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let randomNum:UInt32 = arc4random_uniform(8)
        return Int(randomNum)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "scheduleCell") as! ScheduleTableViewCell
        return cell
    }
    
    
    
    
}












