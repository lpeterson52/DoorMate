//
//  UnlockView.swift
//  DoorMate
//
//  Created by Lucas Peterson on 10/7/24.
//

import SwiftUI

var isUnlocked : String = "unlocked"
func unlockTextColor(unlocked: String) -> Color{
    switch unlocked {
    case "unlocked":
        return .green
    case "unlocking":
        return .blue
    case "locking":
        return .orange
    case "locked":
        return .red
    default:
        return .white
    }
}

func unlockText(unlocked: String) -> String{
    return String(unlocked.prefix(1)).capitalized + String(unlocked.dropFirst())
}

struct UnlockView: View {
    var body: some View {
        VStack {
            Text("DoorMate")
                .font(.largeTitle)
            Spacer()
            Group{
                Text(unlockText(unlocked: isUnlocked))
                    .font(.title)
                    .foregroundColor(unlockTextColor(unlocked: isUnlocked))
                OpenButton(isUnlocked: isUnlocked)
            }
            .offset(y:-50)
            Spacer()
        }
    }
}

#Preview {
    UnlockView()
}
