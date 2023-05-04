//
//  LoadingTimer.swift
//  Lovar
//
//  Created by Rosa Tiara Galuh on 04/05/23.
//

import Foundation
import SwiftUI
import Combine

class LoadingTimer {
    let publisher = Timer.publish(every: 0.1, on: .main, in: .default)
    private var timerCancellable: Cancellable?
    
    func start() {
        self.timerCancellable = publisher.connect()
    }
    
    func cancel() {
        self.timerCancellable?.cancel()
    }
}
