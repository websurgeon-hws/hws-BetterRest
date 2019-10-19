//
//  Copyright © 2019 Peter Barclay. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var wakeUp = Date()
    
    var body: some View {
        let someDate = Date()
        var components = Calendar.current.dateComponents([.hour,.minute], from: someDate)
        let hour = components.hour ?? 0
        let minute = components.minute ?? 0

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
