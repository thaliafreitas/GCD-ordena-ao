//
//  ViewController.swift
//  GCD-study
//
//  Created by Ada 2018 on 9/19/18.
//  Copyright © 2018 Ada 2018. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var randomArray: [Int] = []
        
        for _ in 1...100 {
            randomArray.append(Int(arc4random_uniform(100)))
        }
        print("-----Random Array: \(randomArray)")
        
        var randomArray2 = randomArray
        
        
        
        quickSort(array: &randomArray, first: 0, last: randomArray.count-1)
        print("Sorted Array Quick: \(randomArray)")
        
        bubbleSort(array: &randomArray2)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    
    
    func bubbleSort ( array: inout [Int]){
        let arrayCount = array.count
        for _ in 0...arrayCount {
            for j in 1...arrayCount-1 {
                if array[j-1] > array[j] {
                    let largeValue = array[j-1]
                    array[j-1] = array[j]
                    array[j] = largeValue
                }
            }
        }
        print("-----Sorted Array Bubble: \(array)")
    }
    
    func quickSort( array: inout [Int], first: Int, last: Int) {
        var i = first
        var j = last
        var aux = 0
        let pivo = array[(first + last)/2]
        
        while i <= j {
            while  array[i] < pivo {
                i = i + 1
            }
            while array[j] > pivo {
                j = j - 1
            }
            if i <= j {
                aux = array[i]
                array[i] = array[j]
                array[j] = aux
                i = i + 1
                j = j - 1
            }
        }
        if first < j {
            quickSort(array: &array, first: first, last: j)
            
        }
        if i < last {
            quickSort(array: &array, first: i, last: last)
        }
        
    }
   

}

