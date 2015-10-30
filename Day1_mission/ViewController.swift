//
//  ViewController.swift
//  Day1_mission
//
//  Created by 권영각 on 2015. 10. 19..
//  Copyright © 2015년 LTCompany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mPhoto: UIImageView!
    
    var count : Int = 1
    @IBOutlet weak var btnNext: UIButton!
    @IBOutlet weak var btnBack: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setBtn(count)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func back(sender: AnyObject) {
        changeImage("back")
    }
    
    @IBAction func next(sender: AnyObject) {
        changeImage("next")
    }
    
    func changeImage(action: String){
        count = (action == "back") ? count-1 : count+1
        mPhoto.image = UIImage(named: "\(count).jpg")
        setBtn(count)
    }
    
    func setBtn(index: Int){
        if index <= 1 {
            btnBack.hidden = true
        }
        else if index >= 7 {
            btnNext.hidden = true
        }
        else {
            btnBack.hidden = false
            btnNext.hidden = false
        }
    }
}

