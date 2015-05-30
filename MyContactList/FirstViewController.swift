//
//  FirstViewController.swift
//  MyContactList
//
//  Created by Brian Bansenauer on 5/4/15.
//  Copyright (c) 2015 Cascadia College. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var scrollview: UIScrollView!
    
    @IBOutlet weak var btnChange: UIButton!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtHomePhone: UITextField!
    @IBOutlet weak var txtCell: UITextField!
    @IBOutlet weak var txtZip: UITextField!
    @IBOutlet weak var txtState: UITextField!
    @IBOutlet weak var txtCity: UITextField!
    @IBOutlet weak var txtAddress: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeEditMode(sender: AnyObject) {
        let controls = [txtName,txtAddress,txtCity,txtState,txtZip,txtCell,txtHomePhone,txtEmail]
        
        for control in controls{
            if (sender.selectedSegmentIndex == 0) {
                control.enabled=false
                control.borderStyle = UITextBorderStyle.None
                btnChange.enabled = false
                
            } else {
                control.enabled=true
                control.borderStyle = UITextBorderStyle.RoundedRect
                btnChange.enabled = true
            }
        }
    }

    @IBOutlet weak var segmentedControl: UISegmentedControl!
}

