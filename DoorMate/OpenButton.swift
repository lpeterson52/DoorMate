//
//  OpenButton.swift
//  DoorMate
//
//  Created by Lucas Peterson on 10/7/24.
//

import SwiftUI


struct OpenButton: View {
    var isUnlocked: String
    var body: some View {

        ZStack {
            Rectangle()
                .fill(unlockTextColor(unlocked:isUnlocked))
                .frame(width:200,height:200)
            Image("keyclip")
                .resizable()
                .frame(width:200, height:200)
                .overlay{
                    Rectangle().stroke(.black,lineWidth:5)
                }
        }
        
    }
}

#Preview {
    OpenButton(isUnlocked: "unlocked")
}
#Preview("Unlocking"){
    OpenButton(isUnlocked: "unlocking")
}
