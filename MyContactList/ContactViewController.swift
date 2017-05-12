//
//  FirstViewController.swift
//  MyContactList
//
//  Created by Brian Bansenauer on 5/4/15.
//  Copyright (c) 2015 Cascadia College. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet weak var myStack: UIStackView!
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var sgmtEditMode: UISegmentedControl!
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtAddress: UITextField!
    @IBOutlet weak var txtCity: UITextField!
    @IBOutlet weak var txtState: UITextField!
    @IBOutlet weak var txtZip: UITextField!
    @IBOutlet weak var txtCell: UITextField!
    @IBOutlet weak var txtPhone: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var btnChange: UIButton!
    @IBOutlet weak var lblBirthdate: UILabel!
    
    lazy var bkColor: UIColor = UIColor.lightGray
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        
        // Add a Center Anchor Constraint myStack.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor).active=true;
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
    }
    
    
    @IBAction func changeEditMode(sender: AnyObject) {
        let textFields = [txtName, txtAddress, txtCity, txtState, txtZip, txtCell, txtPhone, txtEmail]
        
        
        if (sgmtEditMode.selectedSegmentIndex == 0)
        {
            for txtfield in textFields
            {
                txtfield!.isEnabled = false
                txtfield!.borderStyle = UITextBorderStyle.none
                txtfield!.backgroundColor = bkColor
            }
            btnChange.isHidden = true
        }
        else
        {
            for txtfield in textFields
            {
                txtfield!.isEnabled = true
                txtfield!.borderStyle = UITextBorderStyle.roundedRect
                txtfield!.backgroundColor = bkColor
            }
            btnChange.isHidden = false
        }
    }


}

