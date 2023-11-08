//
//  kcHerosClaseTests.swift
//  kcHerosClaseTests
//
//  Created by Daniel Cazorro Frías on 6/11/23.
//

import XCTest
@testable import kcHerosClase

final class kcHerosClaseTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testModelos() throws {
        
        let model = Heros(id: UUID(), name: "Jose", description: "", photo: "", favorite: true)
        XCTAssertNotNil(model)
        XCTAssertEqual(model.name, "Jose")
        
    }


}
