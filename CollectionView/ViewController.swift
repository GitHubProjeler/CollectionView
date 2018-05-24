//
//  ViewController.swift
//  CollectionView
//
//  Created by fatih acar on 23.05.2018.
//  Copyright © 2018 fatih acar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    var resimler = ["1","2","3","4","5"]
    @IBOutlet weak var btnRenk: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //CollectionView metotları
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return resimler.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! CustomCell //CustomCell sınıfından alınacak
        cell.resim.image = UIImage(named:resimler[indexPath.row])
        cell.layer.cornerRadius = 50
        cell.layer.borderColor = UIColor.red.cgColor
        cell.layer.borderWidth = 2
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("\(indexPath.row + 1). resim tıklandı")
        if (indexPath.row == 0){
            btnRenk.backgroundColor = UIColor.black
        } else if (indexPath.row == 1){
            btnRenk.backgroundColor = UIColor.blue
        } else if (indexPath.row == 2){
            btnRenk.backgroundColor = UIColor.brown
        } else if (indexPath.row == 3){
            btnRenk.backgroundColor = UIColor.cyan
        }
    }
}

