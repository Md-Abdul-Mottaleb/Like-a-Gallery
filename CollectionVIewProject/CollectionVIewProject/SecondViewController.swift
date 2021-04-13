//
//  SecondViewController.swift
//  CollectionVIewProject
//
//  Created by MacBook Pro on 2/4/21.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var Slabelname: UILabel!
    
    @IBOutlet weak var Simageview: UIImageView!
    var sname = String()
    
    var iimage = Int()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Information"
        Slabelname.text = sname
        
        Simageview.image = firstimage[iimage]
        
        
        
    }
    



}
