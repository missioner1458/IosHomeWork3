//
//  ViewController.swift
//  TedHomeWorkEx3
//
//  Created by Ted on 2018/7/13.
//  Copyright © 2018 Ted. All rights reserved.
//

import UIKit

class ButtonViewController: UIViewController {

    @IBOutlet weak var uiImage: UIImageView!
    @IBOutlet weak var uiButton: UIButton!
    var imageIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initValue()
    }
    
    func initValue(){
        let named:String = "s\(imageIndex+1)"
        let btnImage = UIImage(named: named)
//        uiImageButton.setImage(btnImage , for: UIControl.State.normal)
        uiImage.image = btnImage
    }

    @IBAction func indexAddOne(_ sender: Any) {
        imageIndex += 1
        if(imageIndex>3){
            imageIndex = 0
        }
        
        let named:String = "s\(imageIndex+1)"
        let btnImage = UIImage(named: named)
        uiImage.image = btnImage
    }
    


}

