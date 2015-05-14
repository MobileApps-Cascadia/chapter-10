//
//  FirstViewController.swift
//  MyContactList
//
//  Created by Brian Bansenauer on 5/4/15.
//  Copyright (c) 2015 Cascadia College. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var sgmtEditMode: UISegmentedControl!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var stateTextField: UITextField!
    @IBOutlet weak var zipTextField: UITextField!
    @IBOutlet weak var cellPhoneTextField: UITextField!
    @IBOutlet weak var homePhoneTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var birthdayDate: UILabel!
    @IBOutlet weak var changeBirthdayButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        scrollView.contentSize = CGSizeMake(320, 500)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeEditMode(sender: AnyObject) {
        var textFields = [nameTextField, addressTextField, cityTextField, stateTextField, zipTextField, cellPhoneTextField, homePhoneTextField, emailTextField]
        
        //The View mode is enabled, editing is now disabled
        if (sgmtEditMode.selectedSegmentIndex == 0)
        {
            for txt in textFields
            {
                txt.enabled = false
                txt.borderStyle = UITextBorderStyle.None
            }
            
            changeBirthdayButton.hidden = true
        }
        else
        {
            if (sgmtEditMode.selectedSegmentIndex == 1)
            {
                for txt in textFields
                {
                    txt.enabled = true
                    txt.borderStyle = UITextBorderStyle.RoundedRect
                }
                
                changeBirthdayButton.hidden = false
            }
        }
    }

}

