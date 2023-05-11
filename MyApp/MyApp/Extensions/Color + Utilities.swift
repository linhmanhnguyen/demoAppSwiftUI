//
//  Color + Utilities.swift
//  MyApp
//
//  Created by Nguyễn Mạnh Linh on 10/05/2023.
//

import SwiftUI
extension Color{
    // extend Color's contructor
    init(_ red: CGFloat, _ green: CGFloat, _ blue: CGFloat){
        self.init(red: red / 255.0, green: green / 255.0, blue: blue / 255.0)
    }
}

