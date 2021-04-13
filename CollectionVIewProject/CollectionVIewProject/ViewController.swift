//
//  ViewController.swift
//  CollectionVIewProject
//
//  Created by MacBook Pro on 1/4/21.
//

import UIKit

var firstimage = [UIImage(named: "1"),
               UIImage(named: "af"),
               UIImage(named: "3"),
               UIImage(named: "al"),
               UIImage(named: "5"),
               UIImage(named: "ar"),
               UIImage(named: "7"),
               UIImage(named: "au"),
               UIImage(named: "2"),
               UIImage(named: "az"),
               UIImage(named: "4"),
               UIImage(named: "be"),
               UIImage(named: "6"),
               UIImage(named: "bo"),
               UIImage(named: "8"),
               UIImage(named: "br")
]

class ViewController: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource{
    
    @IBOutlet weak var view11: UIView!
    
    let width = UIScreen.main.bounds.width
       
      
   
   
    var name = ["Devid","Afganisthan","Smith","Algeria","Hery","Arzentinia","Taylor","Austrolia","Hanif","Azarbizan","Card","Janina","Luiz","dontknow","Naimar","Brazil"]
    

    @IBOutlet weak var CollectionVieww: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        self.CollectionVieww.delegate = self
        self.CollectionVieww.dataSource = self
        
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return firstimage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let sell = CollectionVieww.dequeueReusableCell(withReuseIdentifier: "xell", for: indexPath) as! CollectionViewCell
        
        sell.imageview.image = firstimage[indexPath.row]
       //sell.imageview.image = firstimage[indexPath.row]
        //sell.layer.borderColor = UIColor.lightGray.cgColor
        //sell.labelforname.text = name[indexPath.row]
        
        
        return sell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
     
       
        let vc = storyboard?.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        
       // vc.name = name[indexPath.row]
        vc.sname = name[indexPath.row]
        vc.iimage = indexPath.row
        
        
        
        
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout{
    

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top: 16, left: 6, bottom: 0, right: 6)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let container = self.width - 28
        let cellSize = container/3
        
        return CGSize(width: cellSize, height: 160)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 16
    }
}
