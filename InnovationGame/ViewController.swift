//
//  ViewController.swift
//  InnovationGame
//
//  Created by HASH on 3/29/17.
//  Copyright © 2017 HJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var shuffleButton: UIButton!

    @IBOutlet weak var loadingIcon: UIImageView!
    

    @IBOutlet weak var easyButton: UIButton!
    
    @IBOutlet weak var mediumButton: UIButton!
    
    
    @IBOutlet weak var hardButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        shuffleButton.layer.cornerRadius = 15
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

 
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
     
        


    }
    
    @IBAction func shuffleCards(_ sender: UIButton) {
        
        shuffleButton.isHidden = true
        loadingIcon.isHidden = false
        
        loadingIcon.image = UIImage(named:"loading")
        
        loadingIcon.startRotating(repeatCount: 6)
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(6), execute: {
            let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "popUpID") as! PopUpViewController
            self.addChildViewController(popOverVC)
            popOverVC.view.frame = self.view.frame
            self.view.addSubview(popOverVC.view)
            popOverVC.didMove(toParentViewController: self)
            self.shuffleButton.isHidden = false
            self.loadingIcon.isHidden = true
        })
        
    }

}

