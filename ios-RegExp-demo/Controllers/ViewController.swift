//
//  ViewController.swift
//  ios-RegExp-demo
//
//  Created by Eiji Kushida on 2016/12/18.
//  Copyright © 2016年 Eiji Kushida. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


        let stockCode = "1234"

        let result = (stockCode !~ "(^$)|(^\\d{4}$)")

        if result {
            print("OK")
        } else {
            print("NG")
        }

        let result2 = ("//www.yahoo.co.jp" =~ "^(https?|ftp)(:\\/\\/[-_.!~*\\'()a-zA-Z0-9;\\/?:\\@&=+\\$,%#]+)$")

        if result2 {
            print("OK")
        } else {
            print("NG")
        }
    }
}

