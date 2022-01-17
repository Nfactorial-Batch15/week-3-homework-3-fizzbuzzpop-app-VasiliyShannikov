//
//  ContentView.swift
//  FizzBuzzPopReaction
//
//  Created by Vasiliy Shannikov on 03.01.2022.
//

import SwiftUI

struct ContentView: View {
    @State var isGreating = UserDefaults.standard.bool(forKey: "isGreating")
  //  @AppStorage("numbers") var numbersAppStorage = 8
  //  @AppStorage("rounds") var roundsAppStorage = 3
    @ObservedObject var data: ProgrammData
    var body: some View {
        if !isGreating {
            Welcome( data: data, isGreating: $isGreating)
                .onAppear {
                    UserDefaults.standard.set(3, forKey: "rounds")
                    UserDefaults.standard.set(8, forKey: "numbers")
                }
        } else {
            Main(data1: data)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(data: ProgrammData())
    }
}
