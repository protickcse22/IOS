//
//  ViewController.swift
//  Storage Practice
//
//  Created by apple on 2019/10/29.
//  Copyright © 2019 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let data = Friend.allFriends()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // User default practice
        /* UserDefaults.standard.set("Hello world....", forKey: "test")
        
        if let value = UserDefaults.standard.string(forKey: "test"){
            print(value)
        }  */
        
        // File system practice
        let documentDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let textFileUrl = documentDirectory.appendingPathComponent("textfile").appendingPathExtension("txt")
        print(textFileUrl)
    
//        let jsonURL = Bundle.main.url(forResource: "friend", withExtension: "json")!
//        do{
//        let jsonData = try Data(contentsOf: jsonURL)
//            try jsonData.write(to: textFileUrl)
//        }catch{
//            print(error)
//        }
        var txt=""
        for i in 0..<data.count{
            
txt.append(data[i].name+"\n"+data[i].countryName+"\n"+data[i].bio+"\n")
                        
        }
        do{
            try txt.write(to: textFileUrl, atomically: true, encoding: .utf8)
            
        }catch{
            print(error)
        }

    }

}

