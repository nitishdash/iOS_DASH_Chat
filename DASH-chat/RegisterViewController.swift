//
//  RegisterViewController.swift
//  DASH-chat
//
//  This is the View Controller which registers new users with Firebase
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {
    
    //outlets
    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

  
    @IBAction func registerPressed(_ sender: AnyObject) {
        //using the prebuilt method defined in iOS Api Reference by Firebase
        
        Auth.auth().createUser(withEmail: emailTextfield.text!, password: passwordTextfield.text!) { (user, error) in
            
            if error != nil {
                print(error!)
            }
            else {
                print("Registration complete!")
                
                self.performSegue(withIdentifier: "goToChat", sender: self)
            }
            
            
        }
        
    } 
    
    
}
