//
//  FirstViewController.swift
//  MyContactList
//
//  Created by Brian Bansenauer on 5/4/15.
//  Copyright (c) 2015 Cascadia College. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var txtContactName: UITextField!
    @IBOutlet weak var txtAddress: UITextField!
    @IBOutlet weak var txtCity: UITextField!
    @IBOutlet weak var txtState: UITextField!
    @IBOutlet weak var txtZipCode: UITextField!
    @IBOutlet weak var txtCellPhone: UITextField!
    @IBOutlet weak var txtHomePhone: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var lblBirthdate: UILabel!
    @IBOutlet weak var btnPickDate: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Initialize contact view model only
        let contactGroup = [txtContactName,txtAddress,txtCity,txtState,txtZipCode,txtCellPhone,txtHomePhone,txtEmail]
        
        for contact in contactGroup{
            contact.enabled = false
            btnPickDate.enabled = false
            contact.borderStyle = UITextBorderStyle.None
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeEditMode(sender: AnyObject) {
        let contactGroup = [txtContactName,txtAddress,txtCity,txtState,txtZipCode,txtCellPhone,txtHomePhone,txtEmail]
        
        for contact in contactGroup{
            if (sender.selectedSegmentIndex == 0) {
                contact.enabled = false
                btnPickDate.enabled = false
                contact.borderStyle = UITextBorderStyle.None
            } else {
                contact.enabled = true
                btnPickDate.enabled = true
                contact.borderStyle = UITextBorderStyle.RoundedRect
            }
        }
    }

}

