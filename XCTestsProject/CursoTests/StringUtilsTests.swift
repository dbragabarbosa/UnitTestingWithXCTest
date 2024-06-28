//
//  StringUtilsTests.swift
//  CursoTests
//
//  Created by Bruno Faganello Neto on 13/06/20.
//  Copyright © 2020 Bruno Faganello. All rights reserved.
//

import Quick
import Nimble
@testable import Curso

class StringUtilsTests: QuickSpec {
    
    override func spec() {
        describe("StringUtils") {
            context("Is Valid Email") {
                it("Valid Email") {
                    let email = "curso@gmail.com"
                    let isValidEmail = email.isValidEmail()
                    expect(isValidEmail).to(beTrue())
                }
                
                it("Invalid Email") {
                    let email = "curso"
                    let isValidEmail = email.isValidEmail()
                    expect(isValidEmail).to(beFalsy())
                }
                
                it("Invalid Email") {
                    let email = "curso"
                    let isValidEmail = email.isValidEmail()
                    expect(isValidEmail) == false
                }
            }
            
            context("Remove White Space") {
                it("With white space") {
                    let text = "Olá mundo"
                    let newText = text.removeWhitespace()
                    expect(newText).to(equal("Olámundo"))
                }
                
                it("Without white space") {
                    let text = "Olámundo"
                    let newText = text.removeWhitespace()
                    expect(newText).to(equal(text))
                }
            }
        }
    }
}
