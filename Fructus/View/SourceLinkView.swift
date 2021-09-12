//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Loc Nguyen on 12/09/2021.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        HStack {
            Text("Source")
            Spacer()
            Link("Wikipedia", destination: URL(string: "https://en.wikipedia.org/wiki/Main_Page")!)
            Image(systemName: "arrow.up.right.square")
        }
        .font(.footnote)
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
    }
}
