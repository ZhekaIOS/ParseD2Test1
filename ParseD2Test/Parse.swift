//
//  Parse.swift
//  ParseD2Test
//
//  Created by Zhekon on 26.04.2018.
//  Copyright © 2018 Zhekon. All rights reserved.
//


import Foundation
import Alamofire
import SwiftyJSON

class ParseJson : NSObject {
     var temperatureVar = ""
     var conditionVar = ""
    func sendForecastRequest() {
    Alamofire.request("https://www.jasonbase.com/things/d3rl.json", method: .get)
        .validate(statusCode: 200..<300)
        .responseJSON { response in
            if (response.result.error == nil) {
                do {
                    let json = try JSON(data: response.data!)
                    let condition = json["Developer"]["Name"].string
                    let temperature = json["Company"]["Message"].string
                    self.temperatureVar = temperature!
                    self.conditionVar = condition!
                    print(temperature)
                    print(condition)

                }
                catch {
                    print("ex1")
                }
                
            }
            
            
    }
    
}
}
