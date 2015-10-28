//
//  nextpage.swift
//  YGdemo
//
//  Created by mars on 15/10/16.
//  Copyright © 2015年 CIICSH. All rights reserved.
//

import UIKit

class nextpage: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let titleLabel:UILabel = UILabel()
        titleLabel.text="page1:\(labelContent)"
        titleLabel.font = UIFont(name: "MicrosoftYaHei", size: 20)
        titleLabel.frame =  CGRectMake(100, 100, 100, 40)
        self.view.addSubview(titleLabel)
        
        // Do any additional setup after loading the view.
    }

    //label传值
    var labelContent:String = ""
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
