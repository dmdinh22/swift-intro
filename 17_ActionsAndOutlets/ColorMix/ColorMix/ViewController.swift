//
//  ViewController.swift
//  ColorMix
//
//  Created by David Dinh on 12/23/18.
//  Copyright © 2018 David Dinh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!

    @IBOutlet weak var colorView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func switchChanged(_ sender: UISwitch) {
        updateColor()
    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        updateColor()
    }

    func updateColor() {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0

        if redSwitch.isOn {
            red = CGFloat(redSlider.value)
        }

        if greenSwitch.isOn {
            green = CGFloat(greenSlider.value)
        }

        if blueSwitch.isOn {
            blue = CGFloat(blueSlider.value)
        }

        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)

        colorView.backgroundColor = color
    }
}

