//
//  WebView2Controller.swift
//  Swift4WebView
//
//  Created by 神崎泰旗 on 2018/08/20.
//  Copyright © 2018年 taiki. All rights reserved.
//

import UIKit

class WebView2Controller: UIViewController, UIWebViewDelegate {

    @IBOutlet var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView.delegate = self
        let url = URL(string: "http://www.mbga.jp/")
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
