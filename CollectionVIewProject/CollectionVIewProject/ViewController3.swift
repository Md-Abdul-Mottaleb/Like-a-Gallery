//
//  ViewController3.swift
//  CollectionVIewProject
//
//  Created by MacBook Pro on 10/4/21.
//

import UIKit
var a = [1,2,3,4,5]
var b = ["M","W","T","A","n","i"]

class ViewController3: UIViewController , UIPickerViewDelegate,UIPickerViewDataSource{
  
    
    @IBOutlet weak var pickerview: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.pickerview.delegate = self
        self.pickerview.dataSource = self
        
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return a.count
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return a.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return b[row]
    }
    

}

