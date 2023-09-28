//
//  LoginViewController.swift
//  MyFirstCoffeApp
//
//  Created by Yasin Burak AYDIN on 1.09.2023.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var loginDescLabel: UILabel!
    @IBOutlet weak var usernameTextFİeld: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var dividerLabel: UILabel!
    @IBOutlet weak var newAccountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Sing In"
        
        let emailImage = UIImage(named:"emailIcon")
        addLeftImageTo(txtField: usernameTextFİeld, andImage: emailImage!)
                
        let passwordImage = UIImage(named:"passwordIcon")
        addLeftImageTo(txtField: passwordTextField, andImage: passwordImage!)
    }
    
    func addLeftImageTo(txtField: UITextField, andImage img: UIImage) {
        let leftImageView = UIImageView(frame: CGRect(x: 0.0, y: 0.0, width: img.size.width, height: img.size.height))
        leftImageView.image = img
        txtField.leftView = leftImageView
        txtField.leftViewMode = .always
    }
    
    @IBAction func singInButton(_ sender: Any) {
        let controller = storyboard?.instantiateViewController(identifier: "HomeNC") as! UINavigationController
        controller.modalPresentationStyle = .fullScreen
        controller.modalTransitionStyle = .flipHorizontal
        present(controller, animated: true, completion: nil)
    }
    
    @IBAction func singInGoogleButton(_ sender: Any) {
        let controller = storyboard?.instantiateViewController(identifier: "HomeNC") as! UINavigationController
        controller.modalPresentationStyle = .fullScreen
        controller.modalTransitionStyle = .flipHorizontal
        present(controller, animated: true, completion: nil)
    }
    
}
