//
//  ViewController.swift
//  Hello Debug
//
//  Created by Arti on 1/21/15.
//  Copyright (c) 2015 Arti. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
// Send Log
    
    @IBAction func sendLog(sender: AnyObject) {
        println("this is a log motherfuckers \(__LINE__) in function \(__FUNCTION__)")

    }

// Send Error

    @IBAction func SendError(sender: AnyObject) {
        println("error occurred on line \(__LINE__) in function \(__FUNCTION__)")

    }
    
// Random Joke
    
    @IBAction func randomJoke(sender: AnyObject) {
/*        var jokes = ["'keming' - The result of improper kerning.", "Arial was just not my type.", "Why did the designer leave the bar? - Because of the table layout", "</war>", ]
        var randomJoke = Shuffle(jokes)
        println(randomJoke)
*/
        func shuffle<C: MutableCollectionType where C.Index == Int>(var list: C) -> C {
            let count = countElements(list)
            for i in 0..<(count - 1) {
                let j = Int(arc4random_uniform(UInt32(count - i))) + i
                swap(&list[i], &list[j])
            }
            return list
        }
        shuffle(["'keming' - The result of improper kerning.", "Arial was just not my type.", "Why did the designer leave the bar? - Because of the table layout", "</war>"])
    }
    

}

