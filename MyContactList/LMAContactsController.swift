//
//  FirstViewController.swift
//  MyContactList
//
//  Created by Brian Bansenauer on 11/6/18.
//  Copyright © 2018 Cascadia College. All rights reserved.
//

import UIKit

class LMAContactsController: UIViewController {

    @IBOutlet weak var _scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        _scrollView.contentSize = CGSize(width: 320, height: 500)
        self.changeEditMode(self)
    }

    override func viewDidLayoutSubviews() {
        _scrollView.contentSize = CGSize(width: 320, height: 500)
    }

    @IBOutlet weak var sgmtEditMode: UISegmentedControl!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtAddress: UITextField!
    @IBOutlet weak var txtCity: UITextField!
    @IBOutlet weak var txtState: UITextField!
    @IBOutlet weak var txtZip: UITextField!
    @IBOutlet weak var txtCell: UITextField!
    @IBOutlet weak var txtHome: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var lblBirthdate: UILabel!
    @IBOutlet weak var btnChange: UIButton!
    @IBAction func changeEditMode(_ sender: Any) {
        let textFields: [UITextField] = [txtName, txtAddress, txtCity, txtState, txtZip, txtHome, txtCell, txtEmail]
        if sgmtEditMode.selectedSegmentIndex == 0{
            for textField in textFields{
                textField.isEnabled = false
                textField.borderStyle = UITextField.BorderStyle.none
            }
            btnChange.isHidden = true
        }
        else if sgmtEditMode.selectedSegmentIndex == 1{
            for textField in textFields{
                textField.isEnabled = true
                textField.borderStyle = UITextField.BorderStyle.roundedRect
            }
            btnChange.isHidden = false
        }
    }
    
}

