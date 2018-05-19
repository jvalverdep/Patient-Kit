//
//  AlertsViewController.swift
//  Patient-Kit
//
//  Created by zcrome on 5/19/18.
//  Copyright © 2018 UPC. All rights reserved.
//

import UIKit

class AlertsViewController: UIViewController {

	
	
	@IBOutlet weak var tableView: UITableView!
	
	let alerts = ["Watch out! It has been detected that you are with an elevated heart rate.", "Watch out! You are not doing the recommended exercises for 2 weeks"]
	
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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


extension AlertsViewController: UITableViewDelegate{
	
}


extension AlertsViewController: UITableViewDataSource{
	
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
		
		return alerts.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
		
		let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! UITableViewCell
		
		cell.textLabel?.text = alerts[indexPath.row]
		
		return cell
	}
	
	
}


