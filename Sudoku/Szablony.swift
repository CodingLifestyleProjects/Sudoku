//
//  Szablony.swift
//  Sudoku
//
//  Created by Adrian Bobrowski on 15.04.2017.
//  Copyright © 2017 Coding life style. All rights reserved.
//

import Foundation

struct Szablon {
    
    static let latwe1 =  Sudoku(board: [
        [	nil,nil,nil,7,nil,nil,1,nil,6	],
        [	nil,3,nil,nil,nil,nil,nil,nil,nil	],
        [	nil,nil,nil,nil,nil,5,nil,nil,nil	],
        [	nil,nil,9,nil,nil,1,nil,2,nil	],
        [	7,nil,6,nil,nil,nil,3,nil,4	],
        [	nil,nil,nil,nil,nil,8,nil,7,nil	],
        [	nil,5,nil,nil,nil,nil,nil,nil,8	],
        [	nil,1,3,nil,nil,2,nil,nil,nil	],
        [	nil,nil,7,5,nil,nil,4,nil,nil	],
    ])

    static let latwe2 =  Sudoku(board: [
        [	nil,nil,nil,7,nil,nil,nil,4,nil	],
        [	4,3,2,9,nil,nil,6,8,nil	],
        [	nil,nil,nil,nil,nil,6,nil,nil,nil	],
        [	nil,2,3,nil,1,nil,nil,nil,nil	],
        [	nil,7,nil,nil,3,nil,1,5,nil	],
        [	nil,8,nil,nil,7,nil,nil,nil,4	],
        [	nil,6,nil,nil,nil,nil,nil,nil,nil	],
        [	nil,nil,nil,nil,nil,4,nil,3,nil	],
        [	5,nil,nil,nil,nil,nil,nil,9,8	],
    ])

    static let srednie1 =  Sudoku(board: [
        [	3,nil,nil,6,7,nil,nil,nil,9	],
        [	nil,nil,2,nil,nil,nil,nil,4,nil	],
        [	5,nil,nil,nil,nil,nil,nil,nil,3	],
        [	nil,nil,nil,5,nil,nil,nil,7,nil	],
        [	nil,nil,5,nil,nil,6,nil,nil,4	],
        [	nil,6,nil,nil,3,nil,nil,nil,nil	],
        [	nil,nil,8,nil,nil,nil,9,nil,2	],
        [	9,nil,nil,1,5,nil,3,6,7	],
        [	nil,nil,nil,nil,9,nil,nil,nil,nil	],
    ])

    static let srednie2 =  Sudoku(board: [
        [	nil,3,nil,4,nil,nil,nil,nil,1	],
        [	nil,nil,nil,nil,nil,nil,nil,nil,nil	],
        [	nil,1,6,nil,nil,2,nil,nil,4	],
        [	nil,7,nil,nil,5,nil,nil,4,nil	],
        [	4,nil,nil,3,nil,nil,nil,9,nil	],
        [	nil,nil,3,7,nil,nil,nil,nil,5	],
        [	1,nil,nil,nil,nil,7,5,nil,nil	],
        [	nil,9,4,nil,nil,3,nil,nil,nil	],
        [	nil,nil,8,2,nil,6,nil,nil,nil	],
    ])

    static let trudne1 =  Sudoku(board: [
        [	nil,6,nil,nil,7,nil,2,nil,nil	],
        [	nil,nil,nil,2,nil,3,nil,nil,nil	],
        [	4,nil,nil,nil,nil,8,nil,7,nil	],
        [	nil,2,8,nil,nil,6,9,3,nil	],
        [	nil,1,nil,nil,nil,nil,nil,nil,8	],
        [	9,3,nil,nil,nil,nil,nil,nil,nil	],
        [	nil,nil,nil,nil,nil,nil,nil,1,4	],
        [	nil,nil,7,nil,nil,nil,nil,2,5	],
        [	nil,5,nil,nil,nil,7,nil,nil,9	],
    ])

    static let trudne2 =  Sudoku(board: [
        [	nil,7,nil,nil,nil,3,6,nil,nil	],
        [	5,nil,nil,7,nil,1,nil,nil,nil	],
        [	1,nil,nil,nil,nil,nil,4,nil,nil	],
        [	nil,nil,nil,4,nil,nil,nil,9,7	],
        [	nil,nil,nil,1,3,6,nil,nil,nil	],
        [	nil,8,2,nil,nil,nil,nil,nil,nil	],
        [	7,nil,nil,nil,nil,nil,nil,3,2	],
        [	nil,4,8,nil,nil,nil,nil,nil,nil	],
        [	nil,nil,nil,5,9,nil,nil,6,nil	],
    ])

    static let trudnejsze1 =  Sudoku(board: [
        [	nil,4,nil,nil,6,7,nil,3,nil	],
        [	nil,nil,nil,nil,nil,nil,nil,2,nil	],
        [	nil,nil,nil,5,nil,nil,7,nil,nil	],
        [	nil,3,nil,nil,nil,nil,nil,nil,6	],
        [	1,nil,nil,nil,nil,nil,nil,nil,nil	],
        [	nil,6,9,nil,1,nil,8,nil,3	],
        [	nil,1,nil,nil,nil,9,nil,4,nil	],
        [	nil,nil,4,8,7,nil,nil,nil,nil	],
        [	8,nil,nil,nil,2,nil,nil,5,nil	],
    ])

    static let trudnejsze2 =  Sudoku(board: [
        [	nil,nil,nil,nil,1,4,nil,nil,nil	],
        [	2,1,nil,nil,nil,nil,nil,nil,nil	],
        [	5,nil,6,nil,nil,nil,nil,nil,nil	],
        [	nil,8,nil,nil,nil,1,2,nil,nil	],
        [	nil,nil,5,3,9,nil,6,nil,nil	],
        [	nil,nil,9,nil,8,6,4,nil,7	],
        [	7,nil,nil,nil,nil,nil,nil,3,nil	],
        [	nil,nil,8,nil,nil,nil,nil,nil,9	],
        [	nil,4,nil,nil,nil,nil,nil,8,nil	],
    ])

    static let najtrudnejsze1 =  Sudoku(board: [
        [	nil,nil,nil,1,nil,nil,nil,nil,4	],
        [	2,nil,nil,nil,nil,nil,7,8,1	],
        [	nil,nil,6,9,nil,8,5,nil,nil	],
        [	9,nil,nil,nil,nil,5,1,3,nil	],
        [	nil,nil,nil,nil,nil,nil,nil,7,nil	],
        [	nil,nil,8,nil,3,nil,nil,nil,nil	],
        [	nil,nil,1,nil,nil,9,6,nil,5	],
        [	nil,nil,4,nil,nil,nil,nil,nil,7	],
        [	nil,9,nil,nil,nil,2,nil,nil,nil	],
    ])

    static let najtrudnejsze2 =  Sudoku(board: [
        [	nil,8,nil,nil,nil,nil,3,nil,nil	],
        [	7,nil,nil,nil,nil,nil,nil,2,6	],
        [	nil,nil,5,nil,1,4,nil,nil,nil	],
        [	nil,nil,nil,7,nil,nil,nil,nil,nil	],
        [	2,nil,nil,nil,nil,6,4,nil,nil	],
        [	3,nil,nil,nil,8,nil,nil,5,nil	],
        [	nil,nil,nil,4,nil,nil,1,nil,nil	],
        [	nil,2,8,nil,nil,nil,nil,nil,nil	],
        [	nil,nil,6,nil,9,1,nil,nil,nil	],
    ])
}
