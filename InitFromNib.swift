

extension UIViewController {
    class func initFromNib() -> Self {
        return self.init(nibName: String(self), bundle: nil)
    }
}

extension UIView {
    
    private class func instanceFromNib<T>(type: T.Type) -> T {
        return NSBundle.mainBundle().loadNibNamed(String(type), owner: self, options: nil)[0] as! T
    }
    
    class func initFromNib() -> Self {
        return self.instanceFromNib(self)
    }
}

