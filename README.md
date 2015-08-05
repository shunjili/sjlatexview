# SJLatexView
This SJLatexView renders the math equation like a charm, here is how it works: 

### Usage
You just initilize it like any other UIView, once you have your latex string you want to display, just call the  `loadLatexString` method on the view and it will display accordingly. 
```swift
let latexString = "When $a \\ne 0$, there are two solutions to $ax^2 + bx + c = 0$ and they are$$x = {-b \\pm \\sqrt{b^2-4ac} \\over 2a}.$$"
latexWebView.loadLatexString(latexString)
```
It will appear something like this: 
![](https://dl.dropboxusercontent.com/u/76177422/sjlatex.png)
Notice that if you use string literals directly, you will have to escape the "\" character within the literal
### What's behind
It is a bit hacky, but SJLatexView is subclass of UIWebView which uses mathjax to render the math equations in javascript. 

### Future works
I will try to add in more functionality like the ability to specify font and padding etc. 
