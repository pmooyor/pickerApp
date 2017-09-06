//
//  ViewController.swift
//  pickerApp
//
//  Created by 6272 on 9/6/2560 BE.
//  Copyright © 2560 6272. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    let foodType=["Pork","Beef","Chicken","Fish","Tofu"]
    let drinkType=["Water","Soda","Tea","Beer"]
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var label: UILabel!
    @IBAction func selectMethod(_ sender: Any) {
        let vFood = foodType[pickerView.selectedRow(inComponent: 0)]
        let vDrink = drinkType[pickerView.selectedRow(inComponent: 1)]
        let msg1 = " you select "+vFood+" for main dish"
        let msg2 = " and "+vDrink+" for drink"
        let message = msg1+msg2
        
        let a = UIAlertController(title:"Your Selection",message:message,preferredStyle:.alert)
        let button = UIAlertAction(title: "OK", style:.default, handler:nil)
        a.addAction(button)
        self.present(a, animated: true, completion: nil )
        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return foodType.count
        }
        else {
            return drinkType.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return foodType[row]
        }
        else {
            return drinkType[row]
        }

    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.pickerView.delegate = self
        self.pickerView.dataSource = self
        pickerView.selectRow(2, inComponent: 0, animated: true)
        pickerView.selectRow(3, inComponent: 1, animated: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

