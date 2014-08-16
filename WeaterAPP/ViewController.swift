//
//  ViewController.swift
//  WeaterAPP
//
//  Created by Eros on 2014/8/16.
//  Copyright (c) 2014年 Eros. All rights reserved.
//

import UIKit

class ViewController: UIViewController, NSURLConnectionDelegate {
    
    @IBOutlet var city:UILabel!
    @IBOutlet var icon:UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //add background
        let background = UIImage(named: "background.jpg")
        
        self.view.backgroundColor = UIColor(patternImage: background)

        self.city.text = "Taipei"
        startConnection()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func startConnection(){
        var restAPI:String = "http://api.openweathermap.org/data/2.5/weather?q=Taipei"
        var url:NSURL = NSURL(string:restAPI)
        var request: NSURLRequest = NSURLRequest(URL: url)
        var connection: NSURLConnection = NSURLConnection (request: request, delegate: self, startImmediately: true)
        
        println("start download")
        
    }
    
    //下載中
    func connection(connection:NSURLConnection!, didReceiveData dataReceived:NSData!){
    
        println("downloading")
    }
    //下載完成
    func connectDidFinishLoading(connect:NSURLConnection!){
        println("download finish")
    }
    
    
    

}

