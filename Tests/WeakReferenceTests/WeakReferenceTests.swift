import XCTest
@testable import WeakReference

final class WeakReferenceTests: XCTestCase {

    func testWeakReferenceHoldsAReferenceToAnObject() {
        let anObj = MockObject()
        let sut = WeakReference(object: anObj)
        XCTAssertEqual(ObjectIdentifier(sut.object!), ObjectIdentifier(anObj))
    }
    
    func testWeakReferenceHoldsAWeakReferenceToAnObject() {
        var anObj: MockObject? = MockObject()
        let sut = WeakReference(object: anObj!)
        XCTAssertNotNil(sut.object)
        anObj = nil
        XCTAssertNil(sut.object)
    }

}

final class MockObject {}
