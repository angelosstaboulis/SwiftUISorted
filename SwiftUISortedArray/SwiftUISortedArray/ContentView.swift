//
//  ContentView.swift
//  SwiftUISortedArray
//
//  Created by Angelos Staboulis on 17/7/21.
//

import SwiftUI

struct ContentView: View {
    @State var array:[Int]=[]
    @State var sorted:Bool!=false
    var body: some View {
        Text("List Random Numbers").foregroundColor(.blue).padding(20)
        List(array,id:\.self){ item in
            Text(String(item))
        }.onAppear(perform: {
            for _ in 0..<100{
                array.append(Int.random(in: 0..<10000))
            }
        })
        Button(action: {
            sorted.toggle()
            if sorted {
                array.sort()
            }
            else{
                fillArray()
            }
        }, label: {
            if sorted {
                Text("UnSorted Array").padding(10)
                
                
            }
            else{
                Text("Sort Array").padding(10)
            }
        })
    }
    func fillArray(){
        array.removeAll()
        for _ in 0..<100{
            array.append(Int.random(in: 0..<10000))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
