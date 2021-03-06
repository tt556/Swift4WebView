//
//  ViewController.swift
//  Swift4WebView
//
//  Created by 神崎泰旗 on 2018/08/20.
//  Copyright © 2018年 taiki. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet var webView: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView.delegate = self
        let url = URL(string: "http://www.yahoo.co.jp")
        let urlRequest = URLRequest(url: url!)
        webView.loadRequest(urlRequest)

    }
    func webViewDidStartLoad(_ webView: UIWebView) {
        
        //インディケーターを開始
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        
        //インディケーター終了
        UIApplication.shared.isNetworkActivityIndicatorVisible = false

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

