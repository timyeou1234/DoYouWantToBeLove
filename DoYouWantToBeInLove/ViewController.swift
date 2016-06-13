//
//  ViewController.swift
//  DoYouWantToBeInLove
//
//  Created by YeouTimothy on 2016/6/13.
//  Copyright © 2016年 YeouTimothy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func start(sender: AnyObject) {
        let alert = UIAlertController(title: "想愛ㄇ？", message: "請選擇！", preferredStyle: .ActionSheet)
        
        let action1 = UIAlertAction(title: "波多也結衣", style: .Default, handler: nil)
        let action2 = UIAlertAction(title: "徐若宣", style: .Default, handler: nil)
        let action3 = UIAlertAction(title: "蔡依林", style: .Cancel, handler: nil)
        let action = UIAlertAction(title: "Yes", style: .Default){  UIAlertAction in
            let alert2 = UIAlertController(title: "想跟誰?", message: "請選擇！", preferredStyle: .ActionSheet)
            alert2.addAction(action1)
            alert2.addAction(action2)
            alert2.addAction(action3)
            self.presentViewController(alert2, animated: true, completion: nil)
        }
        let cancel = UIAlertAction(title: "No", style: .Cancel, handler: nil)
        alert.addAction(action)
        alert.addAction(cancel)
        self.presentViewController(alert, animated: true, completion: nil)

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

