//
//  SJLatexView.swift
//  LatexView
//
//  Created by Shunji Li  on 8/4/15.
//  Copyright © 2015 Shunji Li . All rights reserved.
//

import Foundation
import UIKit

class SJLatexView: UIWebView {
    var latexString: String! {
        didSet {
            if let latexString = latexString {
                loadHTMLString(contentHtmlWithLatexString(latexString), baseURL: nil)
            }
        }
    }
    
    func mathJaxScript() -> String {
        return "<script src='https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML'></script>"
    }
    
    func configScript() -> String {
        return "<script type=\"text/x-mathjax-config\">"
            + "MathJax.Hub.Config({jax: [\"input/TeX\",\"output/HTML-CSS\"], tex2jax: {inlineMath: [['$','$'], ['\\(','\\)']]} , \"HTML-CSS\": {linebreaks: {automatic: true}}});</script>"
    }
    
    func contentHtmlWithLatexString(latexString: String) -> String {
        let header = configScript() + mathJaxScript()
        return "<html><header>\(header)</header><body>\(latexString)</body></html>"
    }
}

