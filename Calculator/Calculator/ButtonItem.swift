//
//  ButtonItem.swift
//  Calculator
//
//  Created by Madona Syombua on 1/22/23.
//

import Foundation
import SwiftUI

enum ButtonItem {
    
    enum operations: String {
        case plus = "+"
        case minus = "-"
        case divide = "÷"
        case multyiply = "×"
        case equal = "="
    }
    
    enum Command: String{
        case clear = "AC"
        case flip = "+/-"
        case percent = "%"
    }
    
    case digit(Int)
    case dot
    case op(operations)
    case command(Command)
    
}

extension ButtonItem {
    var title: String {
        switch self {
        case .digit(let value):
            return String(value)
        case .dot:
            return "."
        case .op(let operation):
            return operation.rawValue
        case .command(let command):
            return command.rawValue
        }
    }
    
    var size: CGSize{
        if case .digit(let value) = self,value == 0 {
            return CGSize(width: 88*2+8, height: 88)
        }
        return CGSize(width:88,height:88)
      }
    
    var backgroundColorName: String{
        switch self {
        case .digit, .dot:
            return "digitBackground"
        case .op:
            return "operatorBackground"
        case .command:
            return "commandBackground"
        }
    }
    
    var foregroundColorName: String{
        switch self {
        case .command:
            return  "buttonItemcommand"
        default :
            return "gray"
        }
    }
    
}

extension ButtonItem: Hashable{}


