//
//  AsyncProcessSpec.swift
//  CursoTests
//
//  Created by Bruno Faganello Neto on 14/06/20.
//  Copyright © 2020 Bruno Faganello. All rights reserved.
//

import Quick
import Nimble
@testable import Curso

class AsyncProcessSpec: QuickSpec {

    override func spec() {
        describe("AsyncProcess") {
            context("callThatResultsInSideEffect") {
                it("Test") {
                    let asycProcess = AsyncProcess()
                    asycProcess.callThatResultsInSideEffect()
                    expect(asycProcess.name).toEventually(equal("Curso"))
                }
                
                it("Do Stuff") {
                    let asycProcess = AsyncProcess()
                    
                    waitUntil { done in
                        asycProcess.doStuff { result in
                            expect(result).to(equal("Curso"))
                            done()
                        }
                    }
                }
            }
        }
    }
}
