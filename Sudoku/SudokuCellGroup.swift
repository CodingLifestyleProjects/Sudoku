//
//  SudokuCellGroup.swift
//  Sudoku
//
//  Created by Adrian Bobrowski on 15.04.2017.
//  Copyright © 2017 Coding life style. All rights reserved.
//

import Foundation

class SudokuCellGroup {
    
    var cells: [SudokuCell] = []
    
    func valueSet(_ value: Int) {
        self.cells.forEach { $0.removePossibleValue(value) }
        self.update()
    }
    
    func update() {
        (1...self.cells.count).forEach { value in
            guard !self.cells.contains(where: { $0.value == value }) else {
                return
            }
            
            let cells = self.cells.filter { $0.possibleValues.contains(value) }
            guard cells.count == 1 else {
                return
            }
            cells[0].value = value
            print(value)
        }
    }
}

extension SudokuCellGroup: CustomStringConvertible {
    
    var description: String {
        return self.cells.map { $0.description }.joined(separator: "\t")
    }
    
}
