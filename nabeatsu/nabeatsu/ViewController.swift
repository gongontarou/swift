//
//  ViewController.swift
//  nabeatsu
//
//  Created by ゴン on 2018/12/04.
//  Copyright © 2018 gon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var image: UIImageView!
    
    var count = 0
    var flag3 = false
    var flag5 = false
    
    let picOf3 = UIImage(named: "3.jpeg")
    
    let picOf5 = UIImage(named: "5.jpeg")
    
    let picOf15 = UIImage(named: "15.jpeg")
    
    let picUsual = UIImage(named: "1.jpeg")
    
    @IBOutlet var output: UILabel!
    
    @IBAction func countUpButton(sender: AnyObject) {
        
        count += 1
        output.text = "count \(count)"
        
        flag3 = false
        
        flag5 = false
        
        if (count % 3 == 0 || count / 10 == 3 || count % 10 == 3){
            flag3 = true
        }
        
        if (count % 5 == 0 || count / 10 == 5 || count % 10 == 5){
            flag5 = true
        }
        
        
        
        if flag3 && flag5{
            image.image = picOf15
        } else if flag3{
            image.image = picOf3
        } else if flag5{
            image.image = picOf5
        }  else {
            image.image = picUsual
        }
        
        if count >= 100 {
            count = 0
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}



