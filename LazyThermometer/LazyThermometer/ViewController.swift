//
//  ViewController.swift
//  Lazy Thermometer
//
//  Created by Yasir Ali on 12/14/16.
//  Copyright © 2016 yAli Solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: Properties
    
    @IBOutlet weak var targetTemperature: UIView!
    @IBOutlet weak var targetTemperatureLabel: UILabel!
    @IBOutlet weak var currentTemperatureDisplay: UIView!
    @IBOutlet weak var currentTemperatureLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

