//
//  ChartAxisLabelsGeneratorFixed.swift
//  SwiftCharts
//
//  Created by ischuetz on 27/06/16.
//  Copyright © 2016 ivanschuetz. All rights reserved.
//

import Foundation

/// Generates labels for a fixed axis values array. The main usage of this is backwards compatibility, in order to convert ChartAxisValues to generators.
public class ChartAxisLabelsGeneratorFixed: ChartAxisLabelsGenerator {
    
    let dict: [Double: [ChartAxisLabel]]
    
    public init(dict: [Double: [ChartAxisLabel]]) {
        self.dict = dict
    }
    
    public func generate(scalar: Double) -> [ChartAxisLabel] {
        return dict[scalar] ?? []
    }
}