//
//  ViewController.swift
//  TedHomeWorkEx3
//
//  Created by Ted on 2018/7/13.
//  Copyright © 2018 Ted. All rights reserved.
//

import UIKit

class SeagmentViewController: UIViewController {

    @IBOutlet weak var uiSegmented: UISegmentedControl!
    
    @IBOutlet weak var uiImageButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initValue()
    }
    
    func initValue(){
        uiSegmented.selectedSegmentIndex = 0
        let btnImage = UIImage(named: "s1")
        uiImageButton.setImage(btnImage , for: UIControl.State.normal)
//        uiImageButton.image = UIImage.init(named: "s1")
    }
    
    @IBAction func seagmentValueChange(_ sender: Any) {
        print("uiSegmented :: \(uiSegmented.selectedSegmentIndex)")
        
        let named:String = "s\(uiSegmented.selectedSegmentIndex+1)"
        let btnImage = UIImage(named: named)
        uiImageButton.setImage(btnImage , for: UIControl.State.normal)
        
//        uiImageButton.image = UIImage.init(named: "s\(uiSegmented.selectedSegmentIndex+1)")
    }
    
    @IBAction func clickImageBtn(){
        print("Uisegmented :: \(uiSegmented.selectedSegmentIndex)")
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let threeVC = storyboard.instantiateViewController(withIdentifier: "P2Story") as! ButtonViewController
        threeVC.imageIndex = uiSegmented.selectedSegmentIndex
        self.present(threeVC, animated: true, completion: nil)


    }
    


}

