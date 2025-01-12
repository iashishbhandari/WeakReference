import XCTest
@testable import WeakReference

final class WeakReferenceTests: XCTestCase {
    func testWeakReferenceRetainsObject() {
        let obj: TestObject = TestObject()
        let sut = WeakReference(object: obj)
        XCTAssertNotNil(sut.object, "Weak reference should retain the object while it exists.")
    }
    
    func testWeakReferenceDoesNotRetainObjectAfterDeallocation() {
        var object: TestObject? = TestObject()
        let sut = WeakReference(object: object!)
        XCTAssertNotNil(sut.object, "Weak reference should retain the object initially.")
        
        // Deallocate the test object
        object = nil
        
        XCTAssertNil(sut.object, "Weak reference should not retain the object once the object is deallocated.")
    }

    private class TestObject {}
}

