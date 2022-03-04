//
//  DetailsItemView.swift
//  Movies
//
//  Created by alex on 03.03.22.
//

import SwiftUI

struct DetailsItemView: View {
    var title: String
    var systemImage: String
    var text: String
    
    var body: some View {
        HStack {
            Label(title, systemImage: systemImage)
            Spacer()
            Text(text)
                .multilineTextAlignment(.trailing)
        }
    }
}

struct DetailsItemView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsItemView(title: "Released", systemImage: "calendar", text: "14 Oct 1994")
    }
}
