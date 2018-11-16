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
    
    @IBOutlet weak var txtFirst: UITextField!
    @IBOutlet weak var txtLast: UITextField!
    @IBOutlet weak var txtAddress: UITextField!
    @IBOutlet weak var txtCity: UITextField!
    @IBOutlet weak var txtState: UITextField!
    @IBOutlet weak var txtZip: UITextField!
    @IBOutlet weak var txtCell: UITextField!
    @IBOutlet weak var txtPhone: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var btnChange: UIButton!
    @IBOutlet weak var sgmtEditMode: UISegmentedControl!
    @IBAction func changeEditMode(_ sender: UISegmentedControl) {
        if (sgmtEditMode.selectedSegmentIndex == 0) {
            txtFirst.isEnabled = false;
            txtLast.isEnabled = false;
            txtAddress.isEnabled = false;
            txtCity.isEnabled = false;
            txtState.isEnabled = false;
            txtZip.isEnabled = false;
            txtCell.isEnabled = false;
            txtPhone.isEnabled = false;
            txtEmail.isEnabled = false;
            
            btnChange.isHidden = true;
        }
        else if (sgmtEditMode.selectedSegmentIndex == 1) {
            txtFirst.isEnabled = true;
            txtLast.isEnabled = true;
            txtAddress.isEnabled = true;
            txtCity.isEnabled = true;
            txtState.isEnabled = true;
            txtZip.isEnabled = true;
            txtCell.isEnabled = true;
            txtPhone.isEnabled = true;
            txtEmail.isEnabled = true;
            
            btnChange.isHidden = false;
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        _scrollView.contentSize = CGSize(width: 320, height: 500)
    }

    override func viewDidLayoutSubviews() {
        _scrollView.contentSize = CGSize(width: 320, height: 500)
    }

}

