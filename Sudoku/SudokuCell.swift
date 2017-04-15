//
//  SudokuCell.swift
//  Sudoku
//
//  Created by Adrian Bobrowski on 15.04.2017.
//  Copyright © 2017 Coding life style. All rights reserved.
//

import Foundation

class SudokuCell {
    
    unowned let row: SudokuCellGroup
    unowned let column: SudokuCellGroup
    unowned let square: SudokuCellGroup
    
    private(set) var possibleValues: [Int] {
        didSet {
            if self.possibleValues.count == 1 {
                self.value = self.possibleValues[0]
            }
        }
    }
    
    var value: Int? {
        didSet {
            self.updateNeighbors()
        }
    }
    
    init(row: SudokuCellGroup, column: SudokuCellGroup, square: SudokuCellGroup, value: Int? = nil, maxValue: Int = 9) {
        self.row = row
        self.column = column
        self.square = square
        self.value = value
        
        self.possibleValues = value == nil ? [Int](1...maxValue) : [value!]
    }
    
    func removePossibleValue(_ value: Int) {
        guard self.value == nil else {
            return
        }
        self.possibleValues = self.possibleValues.filter { $0 != value }
    }
    
    func updateNeighbors() {
        guard let value = self.value else {
            return
        }
        self.row.valueSet(value)
        self.column.valueSet(value)
        self.square.valueSet(value)
    }
}

extension SudokuCell: CustomStringConvertible {
    
    var description: String {
        return self.value?.description ?? "-"
    }

}
