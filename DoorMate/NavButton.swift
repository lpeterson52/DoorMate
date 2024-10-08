//
//  NavButton.swift
//  DoorMate
//
//  Created by Lucas Peterson on 10/7/24.
//

import SwiftUI

struct NavButton: View {
    var text: String
    
    var body: some View {
        Text(text)
            .overlay {
                Rectangle().stroke(.gray, lineWidth: 4)
            }
    }
}

#Preview {
    NavButton(text: "hiiiii")
}
