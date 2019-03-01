//
//  main.swift
//  GetStringsByRegular
//
//  Created by zhanghengyi on 2019/3/1.
//  Copyright © 2019 UAMAStudio. All rights reserved.
//

import Foundation

var filePath = "" //= "/Users/hengyi.zhang/Desktop/result1.txt"

//let regular = "@\"[a-zA-Z0-9/\\.!]{0,}\";"
var regular = "" // = "< @\"[a-zA-Z0-9/\\.!]{0,}\";"

let arguments = CommandLine.arguments
//analysize user's input
if arguments.count < 3 {
    print("filePath and the regular expression should be pointed out")
    exit(0)
}

filePath = arguments[1]
regular = arguments[2]

let manager = FileManager.default

var urlArray = Array<Substring>()

do {
    let content = try String.init(contentsOfFile: filePath, encoding: String.Encoding.utf8)
    
    var lastLoc = 0
    while lastLoc < content.count {
        let startIndex = content.index(content.startIndex, offsetBy: lastLoc)
        let endIndex = content.endIndex
        
        let targetRange = startIndex..<endIndex
        
        if let range = content.range(of: regular, options: String.CompareOptions.regularExpression, range: targetRange, locale: nil) {
            
            let url = content[range]
//            print(url)
            urlArray.append(url)
            
            lastLoc = range.upperBound.encodedOffset
        } else {
            break
        }
    }
}

for url in urlArray.sorted() {
    print(url)
}
