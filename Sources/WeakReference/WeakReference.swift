final public class WeakReference<T: AnyObject> {
    public weak var object: T?
    
    public init(object: T) {
        self.object = object
    }
}
