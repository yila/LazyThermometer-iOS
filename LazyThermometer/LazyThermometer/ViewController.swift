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
    
    @IBOutlet weak var currentTemperatureLabel: UILabel!
    @IBOutlet private weak var temperatureUnitPicker: UIPickerView!
    @IBOutlet private weak var targetTemperatureField: UITextField!
    var temperatureUnitsPickerData: [String] = ["Farenheit", "Celcius"]
    override func viewDidLoad() {
        super.viewDidLoad()
        temperatureUnitPicker.delegate = self
        temperatureUnitPicker.dataSource = self
        
        targetTemperatureField.placeholder = "350"
        targetTemperatureField.textAlignment = NSTextAlignment.center
        targetTemperatureField.keyboardType = UIKeyboardType.numberPad
        
        currentTemperatureLabel.text = "loading..."
        currentTemperatureLabel.textAlignment = NSTextAlignment.center
        
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (_) in
            DispatchQueue.global(qos: .background).async {
                sleep(3)
                DispatchQueue.main.async {
                    self.currentTemperatureLabel.text = String(Int.random(in: 0...350))
                }
            }
        }
        
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

