//
//  ViewController.swift
//  YGdemo
//
//  Created by mars on 15/10/15.
//  Copyright © 2015年 CIICSH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //建立lable
        let titleLabel:UILabel = UILabel()
        titleLabel.text="page1"
        titleLabel.font = UIFont(name: "MicrosoftYaHei", size: 20)
        titleLabel.frame =  CGRectMake(50, 100, 100, 40)
        self.view.addSubview(titleLabel)
        
        //建立button，跳转至下一页
        let goNext: UIButton = UIButton()
        goNext.frame = CGRectMake(50, 150, 100, 40)
        goNext.setTitle("push", forState: UIControlState.Normal)
        goNext.backgroundColor=UIColor.blackColor()
        goNext.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        goNext.addTarget(self, action: "advImageGoNextButtonClick:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(goNext)
        
        //建立imageview，跳转至下一页
        let imgImageView1:UIImageView=UIImageView()
        imgImageView1.frame=CGRectMake(50, 200, 200, 200)
        imgImageView1.backgroundColor=UIColor.blackColor()
        imgImageView1.userInteractionEnabled=true
        let touch1:UITapGestureRecognizer=UITapGestureRecognizer(target: self, action: "CoverToContent1")
        imgImageView1.addGestureRecognizer(touch1)
        self.view.addSubview(imgImageView1)
        
        print("loading")
    }

    func CoverToContent1()
    {
        let sb = UIStoryboard(name:"Main", bundle: NSBundle.mainBundle())
        let vc2=sb.instantiateViewControllerWithIdentifier("nextpage") as! nextpage
        vc2.labelContent="456"
        self.navigationController!.pushViewController(vc2, animated: true)
    }
    
    func advImageGoNextButtonClick(but: UIButton) {
        
        print("click")
        let sb = UIStoryboard(name:"Main", bundle: NSBundle.mainBundle())
        let vc2=sb.instantiateViewControllerWithIdentifier("nextpage") as! nextpage
        vc2.labelContent="123"
//        self.presentViewController(vc2, animated: false, completion: nil)
        self.navigationController!.pushViewController(vc2, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

