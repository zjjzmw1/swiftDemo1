//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let str2 = "  --- He-llo   " as NSString
// 去除两端的空格和-
str2.stringByTrimmingCharactersInSet(NSCharacterSet(charactersInString: " -"))
