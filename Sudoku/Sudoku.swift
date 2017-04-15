//
//  Sudoku.swift
//  Sudoku
//
//  Created by Adrian Bobrowski on 15.04.2017.
//  Copyright © 2017 Coding life style. All rights reserved.
//

import Foundation

class Sudoku {
    let rows: [SudokuCellGroup]
    let columns: [SudokuCellGroup]
    let squares: [SudokuCellGroup]
    
    private(set) var cells: [SudokuCell] = []
    
    init(board: [[Int?]]) {
        let maxValue = board.count
        
        self.rows = (1...maxValue).map { _ in SudokuCellGroup() }
        self.columns = (1...maxValue).map { _ in SudokuCellGroup() }
        self.squares = (1...maxValue).map { _ in SudokuCellGroup() }
        
        let maxValueSqrt = Int(sqrt(Double(maxValue)))
        self.cells = board.enumerated().flatMap { rowIndex, row in
            return row.enumerated().map { columnIndex, cellValue in
                let squareIndex = Int(columnIndex / maxValueSqrt) + Int(rowIndex / maxValueSqrt) * maxValueSqrt
                
                let cell = SudokuCell(
                    row: self.rows[rowIndex],
                    column: self.columns[columnIndex],
                    square: self.squares[squareIndex],
                    value: cellValue,
                    maxValue: maxValue
                )
                self.rows[rowIndex].cells.append(cell)
                self.columns[columnIndex].cells.append(cell)
                self.squares[squareIndex].cells.append(cell)
                return cell
            }
        }
        print(self)
        print("\n\n\n")
        self.cells.forEach { $0.updateNeighbors() }
    }
    
    
    
//    func solve() {
//        self.rows.forEach { $0.update() }
//        self.columns.forEach { $0.update() }
//        self.squares.forEach { $0.update() }
//    }
}

extension Sudoku: CustomStringConvertible {
    
    var description: String {
        return self.rows.map { $0.description }.joined(separator: "\n")
    }
    
}
