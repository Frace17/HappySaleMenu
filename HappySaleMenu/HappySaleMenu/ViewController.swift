//
//  ViewController.swift
//  HappySaleMenu
//
//  Created by Kirill Tsay on 03.05.2018.
//  Copyright © 2018 Kirill Tsay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menuButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        menuButton.target = self.revealViewController()
        menuButton.action = Selector("revealToggle:")
        
        self.revealViewController().tapGestureRecognizer()
        self.revealViewController().panGestureRecognizer()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

