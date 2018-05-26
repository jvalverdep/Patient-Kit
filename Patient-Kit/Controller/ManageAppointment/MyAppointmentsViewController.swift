//
//  MyAppointmentsViewController.swift
//  Patient-Kit
//
//  Created by zcrome on 5/21/18.
//  Copyright © 2018 UPC. All rights reserved.
//

import UIKit

class MyAppointmentsViewController: UIViewController {

	
	@IBOutlet weak var appointmentsTableView: UITableView!
	
	var appointments = [Appointment]()
	
    override func viewDidLoad() {
        super.viewDidLoad()

        appointmentsTableView.register(UINib(nibName: "AppointmentTableViewCell", bundle: nil), forCellReuseIdentifier: "AppointmentTableViewCell")
			
			self.navigationController?.navigationBar.tintColor = UIColor.white;
			
    }

	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		
		let label = UILabel(frame: CGRect(x:0, y:0, width:100 , height:50))
		label.backgroundColor = .clear
		label.numberOfLines = 2
		label.font = UIFont(name: "Poppins-SemiBold", size: 15)
		label.textAlignment = .center
		label.textColor = .white
		label.text = "My Appointments"
		self.navigationItem.titleView = label
		self.navigationController?.navigationBar.barTintColor = AppColor.darkPurple
	}
	
	
	@IBAction func addApointmentAction(_ sender: Any) {
		
		
	}
	
	
	override func performSegue(withIdentifier identifier: String, sender: Any?) {
		if identifier == "goToDetail"{
			if let appointmentDetailVC = storyboard?.instantiateViewController(withIdentifier: "appointment_detail") as? AppointmentDetailViewController{

				self.navigationController?.pushViewController(appointmentDetailVC, animated: true)
			}
		}
	}
	
	
}



extension MyAppointmentsViewController: UITableViewDelegate{
	
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
		return 100
	}
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
		
		performSegue(withIdentifier: "goToDetail", sender: nil)
		
		
	}
	
}


extension MyAppointmentsViewController: UITableViewDataSource{
	
	func numberOfSections(in tableView: UITableView) -> Int {
		return 15
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 1
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		
		let cell = tableView.dequeueReusableCell(withIdentifier: "AppointmentTableViewCell") as! AppointmentTableViewCell
		
		
		cell.setDataWith()
		
		return cell
	}
	
	
}








