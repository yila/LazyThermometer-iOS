//
//  ViewController.swift
//  Lazy Thermometer
//
//  Created by Yasir Ali on 12/14/16.
//  Copyright © 2016 yAli Solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    

    //MARK: Properties
    
    @IBOutlet private weak var temperatureUnitPicker: UIPickerView!
    @IBOutlet private weak var targetTemperatureLabel: UILabel!
    @IBOutlet private weak var targetTemperature: UITextField!
    @IBOutlet private weak var currentTemperatureLabel: UILabel!
    @IBOutlet private weak var currentTemperature: UILabel!
    var temperatureUnitsPickerData: [String] = ["Farenheit", "Celcius"]
    override func viewDidLoad() {
        super.viewDidLoad()
        temperatureUnitPicker.delegate = self
        temperatureUnitPicker.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return temperatureUnitsPickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return temperatureUnitsPickerData[row]
    }
}

