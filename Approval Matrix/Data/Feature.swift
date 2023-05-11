//
//  Feature.swift
//  Approval Matrix
//
//  Created by Anh Tú on 11/05/2023.
//

import SwiftUI

struct Feature{
    let name : String
    let rangeMin : Int
    let rangeMax : Int
    let numApproval : Int
    let approval : String
}

struct FeatureList{
    static let fList = [
        Feature(name: "Transfer online", rangeMin: 0, rangeMax: 50000, numApproval: 1, approval: "GROUPPMG1, GROUPPMG2")
    ]
}

