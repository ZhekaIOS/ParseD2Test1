//
//  ViewController.swift
//  ParseD2Test
//
//  Created by Zhekon on 26.04.2018.
//  Copyright © 2018 Zhekon. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        ParseJson().sendForecastRequest()

    }
}
  

