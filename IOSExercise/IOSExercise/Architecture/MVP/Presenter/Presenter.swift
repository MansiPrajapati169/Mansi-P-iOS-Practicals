//
//  Presenter.swift
//  IOSExercise
//
//  Created by Mansi Prajapati on 13/04/22.
//

import Foundation

//MARK: - CounterDelegate
protocol CounterDelegate {
    func updateCount(count: Int, numberType: NumberType)
}

class Presenter {
    
    //MARK: - Variables
    var delegate: CounterDelegate?
    var count: Int = .zero
    
    /// button count click event
    func buttonTapped() {
        count += Constants.intOne
        
        if count % Constants.intTwo == .zero {
            self.delegate?.updateCount(count: count,numberType: .even)
        }
        else {
            self.delegate?.updateCount(count: count,numberType: .odd)
        }
    }
}
