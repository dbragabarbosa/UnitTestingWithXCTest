//
//  AsyncProcess.swift
//  Curso
//
//  Created by Bruno Faganello Neto on 14/06/20.
//  Copyright © 2020 Bruno Faganello. All rights reserved.
//

import UIKit

class AsyncProcess {
    var name = ""
    
    func doStuff(_ completion: @escaping (String) -> ()) {
        DispatchQueue.global(qos: .background).asyncAfter(deadline: .now() + 0.1) { [weak self] in
            completion("Curso")
        }
    }
    
    func callThatResultsInSideEffect() {
        DispatchQueue.global(qos: .background).asyncAfter(deadline: .now() + 0.1) { [weak self] in
            self?.name = "Curso"
        }
    }
}
