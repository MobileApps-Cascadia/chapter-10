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
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtAddress: UITextField!
    @IBOutlet weak var txtCity: UITextField!
    @IBOutlet weak var txtState: UITextField!
    @IBOutlet weak var txtZip: UITextField!
    @IBOutlet weak var txtCell: UITextField!
    @IBOutlet weak var txtPhone: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var lblBirthdate: UILabel!
    @IBOutlet weak var btnChange: UIButton!
    
    
    // set the scrollview content size and initialize the edit mode
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        
        // Add a Center Anchor Constraint
        myStack.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive=true;
        //scrollView.contentSize = CGSize(320, 500);

       
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Change the borderStyle and enabled attributes for all the txt elements based on
    // whether the user is editing the contact.
    @IBAction func changeEditMode(sender: AnyObject) {
        _ = [txtName, txtAddress, txtCity, txtState, txtZip, txtCell, txtPhone, txtEmail]
    }
}

