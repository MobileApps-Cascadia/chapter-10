//
//  FirstViewController.swift
//  MyContactList
//
//  Created by Brian Bansenauer on 11/6/18.
//  Copyright © 2018 Cascadia College. All rights reserved.
//

import UIKit

class LMAContactsController: UIViewController {

    
    @IBOutlet weak var em_text: UITextField!
    @IBOutlet weak var hp_text: UITextField!
    @IBOutlet weak var cp_text: UITextField!
    @IBOutlet weak var zp_text: UITextField!
    @IBOutlet weak var st_text: UITextField!
    @IBOutlet weak var ct_text: UITextField!
    @IBOutlet weak var ad_text: UITextField!
    @IBOutlet weak var ln_text: UITextField!
    @IBOutlet weak var fn_text: UITextField!
    
    @IBOutlet weak var contact_form: UIScrollView!
    @IBOutlet weak var _scrollView: UIScrollView!
    
    @IBOutlet weak var ve_switch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        _scrollView.contentSize = CGSize(width: 320, height: 500)
        if ve_switch.isOn {
            em_text.isUserInteractionEnabled = true
            hp_text.isUserInteractionEnabled = true
            cp_text.isUserInteractionEnabled = true
            zp_text.isUserInteractionEnabled = true
            st_text.isUserInteractionEnabled = true
            ct_text.isUserInteractionEnabled = true
            ad_text.isUserInteractionEnabled = true
            ln_text.isUserInteractionEnabled = true
            fn_text.isUserInteractionEnabled = true
        }
        else {
            em_text.isUserInteractionEnabled = false
            hp_text.isUserInteractionEnabled = false
            cp_text.isUserInteractionEnabled = false
            zp_text.isUserInteractionEnabled = false
            st_text.isUserInteractionEnabled = false
            ct_text.isUserInteractionEnabled = false
            ad_text.isUserInteractionEnabled = false
            ln_text.isUserInteractionEnabled = false
            fn_text.isUserInteractionEnabled = false
        }
    }


    @IBAction func toggle_switch(_ sender: Any) {
        if ve_switch.isOn {
            em_text.isUserInteractionEnabled = true
            hp_text.isUserInteractionEnabled = true
            cp_text.isUserInteractionEnabled = true
            zp_text.isUserInteractionEnabled = true
            st_text.isUserInteractionEnabled = true
            ct_text.isUserInteractionEnabled = true
            ad_text.isUserInteractionEnabled = true
            ln_text.isUserInteractionEnabled = true
            fn_text.isUserInteractionEnabled = true
        }
        else {
            em_text.isUserInteractionEnabled = false
            hp_text.isUserInteractionEnabled = false
            cp_text.isUserInteractionEnabled = false
            zp_text.isUserInteractionEnabled = false
            st_text.isUserInteractionEnabled = false
            ct_text.isUserInteractionEnabled = false
            ad_text.isUserInteractionEnabled = false
            ln_text.isUserInteractionEnabled = false
            fn_text.isUserInteractionEnabled = false
        }
    }
    
    override func viewDidLayoutSubviews() {
        _scrollView.contentSize = CGSize(width: 320, height: 500)
    }

}

