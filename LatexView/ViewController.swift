//
//  ViewController.swift
//  LatexView
//
//  Created by Shunji Li  on 8/4/15.
//  Copyright © 2015 Shunji Li . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var latexInputTextView: UITextField!
    @IBOutlet weak var latexWebView: UIWebView!
    
    let mathjaxConfig = "<script type=\"text/x-mathjax-config\">"
        + "MathJax.Hub.Config({jax: [\"input/TeX\",\"output/HTML-CSS\"], tex2jax: {inlineMath: [['$','$'], ['\\(','\\)']]} , \"HTML-CSS\": {linebreaks: {automatic: true}}});"
        + "</script>"
    let mathjaxScript = "<script src='https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML'></script>"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let latexString = "When $a \\ne 0$, there are two solutions to $ax^2 + bx + c = 0$ and they are$$x = {-b \\pm \\sqrt{b^2-4ac} \\over 2a}.$$"
        let content = htmlWithBody(latexString, header: mathjaxConfig + mathjaxScript)
        latexWebView.scrollView.contentSize = latexWebView.frame.size
        print(content)
        latexWebView.loadHTMLString(content, baseURL: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func htmlWithBody(body: String, header: String)-> String {
        return "<html><header>\(header)</header><body>\(body)</body></html>"
    }
}

