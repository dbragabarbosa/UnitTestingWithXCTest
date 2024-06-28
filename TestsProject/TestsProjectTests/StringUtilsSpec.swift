//
//  StringUtilsSpec.swift
//  TestsProjectTests
//
//  Created by Daniel Braga Barbosa on 25/06/24.
//

import XCTest
@testable import TestsProject

final class StringUtilsSpec: XCTestCase 
{

    func testIsValidEmail()
    {
        let email = "curso@gmail.com"
//        let email = "curso"
        let value = email.isValidEmail()
        
//        XCTAssert(value == true)
//        XCTAssertTrue(value, "não é um email válido")
        XCTAssertTrue(value, "não é um email válido")
    }
    
    func testRemoveWhiteSpace() 
    {
        let text = "Olá Mundo"
        let newText = text.removeWhitespace()
        
        XCTAssert(newText == "OláMundo", "Não removeu os espaços")
    }
    
    func testReplace() 
    {
        let text = "Swift"
        let newText = text.replace(string: "S", replacement: "D")
        let newText2 = newText.replace(string: "t", replacement: "x")
        
        XCTAssert(newText == "Dwift")
        XCTAssert(newText2 == "Dwifx")
    }

}
