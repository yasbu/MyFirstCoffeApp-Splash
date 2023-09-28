//
//  String+Extansion.swift
//  MyFirstCoffeApp
//
//  Created by Yasin Burak AYDIN on 3.09.2023.
//

import Foundation

extension String {
    var asUrl: URL? {
        return URL(string: self)
    }
}
