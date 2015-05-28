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
    

    // Solution #1 for changing edit mode with view editing - doesn't work!
    // Both View and Edit allows editing!
    @IBAction func changeEditMode(sender: AnyObject) {
        
        // When View is selected
        if(sgmtEditMode.selectedSegmentIndex == 0){
            self.view.endEditing(false)
        }
        
        // When Edit is selected
        else if(sgmtEditMode.selectedSegmentIndex == 1){
            self.view.endEditing(true)        }
        
    }


    
    
//    // Solution #2 for changing edit mode with individual object - doesn't work!
//    // Both View and Edit allows editing!    
//    @IBAction func changeEditMode(sender: AnyObject) {
//        
//        // When View is selected
//        if(sgmtEditMode.selectedSegmentIndex == 0){
//            txtFirstName.enabled = false
//            txtLastName.enabled = false
//            txtFirstName.enabled = false
//            txtAddress.enabled = false
//            txtCity.enabled = false
//            txtState.enabled = false
//            txtZip.enabled = false
//            txtCell.enabled = false
//            txtHomePhone.enabled = false
//            txtEmailAddress.enabled = false
//            btnChange.enabled = false
//        }
//            
//            // When Edit is selected
//        else if(sgmtEditMode.selectedSegmentIndex == 1){
//            txtFirstName.enabled = true
//            txtLastName.enabled = true
//            txtFirstName.enabled = true
//            txtAddress.enabled = true
//            txtCity.enabled = true
//            txtState.enabled = true
//            txtZip.enabled = true
//            txtCell.enabled = true
//            txtHomePhone.enabled = true
//            txtEmailAddress.enabled = true
//            btnChange.enabled = true
//        }
//    }
    
    
    
    
//    // Solution #3 for changing edit mode using for loop - doesn't work!
//    //  A bunch of syntax error in for loops!
//    @IBAction func changeEditMode(sender: AnyObject) {
//        
//        // array for all the text fields
//        var textFields = [txtFirstName, txtLastName, txtAddress, txtCity, txtState, txtZip, txtCell, txtHomePhone, txtEmailAddress]
//        
//        // When View is selected
//        if(sgmtEditMode.selectedSegmentIndex == 0){
//            for (UITextField txtfield in textFields)
//                txtfield.enabled = false
//        }
//    
//
//        // When Edit is selected
//        else if(sgmtEditMode.selectedSegmentIndex == 1){
//            for (UITextField txtfield in textFields)
//                txtfield.enabled = true    }
//
//    }

}

