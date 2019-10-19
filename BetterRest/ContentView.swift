//
//  Copyright © 2019 Peter Barclay. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var wakeUp = Date()
    
    var body: some View {
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        
        let dateString = formatter.string(from: Date())

        return DatePicker("Please enter a date",
                   selection: $wakeUp,
                   in: Date()...)
                .labelsHidden()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
