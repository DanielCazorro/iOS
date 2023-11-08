//
//  kcHerosClaseTests.swift
//  kcHerosClaseTests
//
//  Created by Daniel Cazorro Frías on 6/11/23.
//

import XCTest
import SwiftUI
import ViewInspector

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
        XCTAssertEqual(model.getFullName(), "Jose")
        
        let modelRequest = HerosFilter(name: "Goku")
        XCTAssertNotNil(modelRequest)
        XCTAssertEqual(modelRequest.name, "Goku")
    }

    func testUIViews() throws {
        let view = ErrorView(error: "Testing errorView")
            .environmentObject(RootViewModel(testing: true))
        XCTAssertNotNil(view)
        
        let numItems = try view.inspect().count
        XCTAssertEqual(numItems, 1)
        
        
        // Imagen
        let img = try view.inspect().find(viewWithId: 0)
        XCTAssertNotNil(view)
        
        
        //Texto
        let text = try view.inspect().find(viewWithId: 1)
        XCTAssertNotNil(text)
        
        let texto = try text.text().string()
        XCTAssertEqual(texto, "Testing errorView")
        
        
        // Botón
        let boton = try view.inspect().find(viewWithId: 2)
        XCTAssertNotNil(boton)
        
        // Ejecutar el boton TAP
        try boton.button().tap() // Ejecuto el botón
        
        
        
    }

}
