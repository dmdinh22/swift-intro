//
//  ViewController.swift
//  ColorMix
//
//  Created by David Dinh on 12/23/18.
//  Copyright © 2018 David Dinh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        colorView.backgroundColor = .black
    }

    @IBOutlet weak var colorView: UIView!
    @IBAction func switchChanged(_ sender: UISwitch) {
        if sender.isOn {
            colorView.backgroundColor = .red
        } else {
            colorView.backgroundColor = .black
        }
    }
}

