//
//  ContentView.swift
//  What am I paying for?
//
//  Created by Антон Казеннов on 02.07.2023.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @State private var name = ""
    
    
    var body: some View {
        HStack {
            TextField("Name", text: $name)
                .textContentType(.)

                .border(.tint)
                .toolbar {
                  ToolbarItemGroup(placement: .keyboard) {
                    // Spacer()
                    ScanButton(text: $name)
                  }
                }
            
        }
        .padding(.horizontal, 10.0)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
