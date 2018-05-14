//
//  LoginViewController.swift
//  Patient-Kit
//
//  Created by Melanie on 5/14/18.
//  Copyright © 2018 UPC. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

  
  @IBOutlet weak var signInButton: UIButton!
  
  
  
  
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    
    Gradient.applyGradientTo(View: signInButton,
                             withColors: [AppColor.darkPurple.cgColor, AppColor.lightPurple.cgColor],
                             withStartPoint: CGPoint(x: 0.0, y: 0.5),
                             andEndPoint: CGPoint(x: 1, y: 0.5))
    signInButton.layer.cornerRadius = signInButton.bounds.height / 2
    signInButton.clipsToBounds = true
    
    self.navigationController?.setNavigationBarHidden(true, animated: animated)
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    self.navigationController?.setNavigationBarHidden(false, animated: animated)
  }
  


}
