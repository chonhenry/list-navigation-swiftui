//
//  ContentView.swift
//  List Demo
//
//  Created by Henry Chon on 11/12/22.
//

import SwiftUI

struct ContentView: View {
    @State var numbers = [Int]()
    

    var body: some View {
        VStack {
            List(numbers, id: \.self) { n in
                Text(String(n))
            }
            
            HStack {
                Spacer()
                Button("Add until 7") {
                    var randNum:Int
                    repeat {
                        randNum = Int.random(in: 0...10)
                        numbers.append(randNum)
                    } while randNum != 7
                }
                Spacer()
                Button("Increase by 1") {
                    if numbers.count > 0 {
                        for i in 0...numbers.count-1 {
                            numbers[i] += 1
                        }
                    }
                }
                Spacer()
                Button("Clear") {
                    numbers = []
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
