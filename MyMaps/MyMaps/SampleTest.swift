//
//  SampleTest.swift
//  MyMaps
//
//  Created by Nikhil Nair on 04/06/17.
//  Copyright © 2017 NNair. All rights reserved.
//

import Foundation

func addTwoInts(a: Int, b: Int) -> Int {
    return a + b;
}

func printMathResult(mathFunction: (Int, b: Int) -> Int, a1: Int, b1: Int) {
    print(mathFunction(a1, b:b1))
}

func multiplyTwoInts(a: Int, b: Int) -> Int {
    return a * b;
}

var mathFunction: (Int, b:Int) -> Int = addTwoInts


// SAMPLE CALLS TO ABOVE FUNCTIONS
//print(addTwoInts(2,b:20));
//printMathResult(mathFunction, a1:5, b1:15);