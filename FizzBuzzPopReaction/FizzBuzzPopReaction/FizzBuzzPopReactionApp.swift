//
//  FizzBuzzPopReactionApp.swift
//  FizzBuzzPopReaction
//
//  Created by Vasiliy Shannikov on 03.01.2022.
//

import SwiftUI

@main
struct FizzBuzzPopReactionApp: App {
    @StateObject var data = ProgrammData()
    var body: some Scene {
        WindowGroup {
            ContentView( data: ProgrammData())
          
            //Welcome(data: data)
        }
    }
}
