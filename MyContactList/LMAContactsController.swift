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
    
    @IBOutlet weak var changeEditMode: UISegmentedControl!
    @IBOutlet weak var sgmtEditMode: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        _scrollView.contentSize = CGSize(width: 320, height: 500)
    }

    override func viewDidLayoutSubviews() {
        _scrollView.contentSize = CGSize(width: 320, height: 500)
    }

}

