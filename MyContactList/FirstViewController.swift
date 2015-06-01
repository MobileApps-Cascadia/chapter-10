//
//  FirstViewController.swift
//  MyContactList
//
//  Created by Brian Bansenauer on 5/4/15.
//  Copyright (c) 2015 Cascadia College. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //Looks for single or multiple taps.
        var tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "DismissKeyboard")
        view.addGestureRecognizer(tap)
    }
    
    //Calls this function when the tap is recognized.
    func DismissKeyboard(){
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // Implement View/Edit Segmented Control
    @IBOutlet weak var sgmtEditMode: UISegmentedControl!
    @IBOutlet weak var txtFirstName: UITextField!
    @IBOutlet weak var txtLastName: UITextField!
    @IBOutlet weak var txtAddress: UITextField!
    @IBOutlet weak var txtCity: UITextField!
    @IBOutlet weak var txtState: UITextField!
    @IBOutlet weak var txtZip: UITextField!
    @IBOutlet weak var txtCell: UITextField!
    @IBOutlet weak var txtHomePhone: UITextField!
    @IBOutlet weak var txtEmailAddress: UITextField!
    @IBOutlet weak var lblBirthdate: UILabel!
    @IBOutlet weak var btnChange: UIButton!
    

    // View/Edit Segmented Control
    @IBAction func changeEditMode(sender: AnyObject) {
        
        // array for all the text fields
        let textFields = [txtFirstName, txtLastName, txtAddress, txtCity, txtState, txtZip, txtCell, txtHomePhone, txtEmailAddress]
        
        
        for txtfield in textFields
        {
            // When View is selected
            if(sgmtEditMode?.selectedSegmentIndex == 0){
                txtfield.enabled = false
            }
                
                // When Edit is selected
            else if(sgmtEditMode?.selectedSegmentIndex == 1){
                txtfield.enabled = true
            }
            
        }
    }

}

