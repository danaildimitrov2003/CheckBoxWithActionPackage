//
//  CustomCheckBoxWithAction.swift
//  AutoVitesse
//
//  Created by Danail Dimitrov on 4.07.23.
//

import SwiftUI

@available(macOS 12.0, *)
public struct CustomCheckBoxWithAction: View {
    var isChecked: Bool
    var text: String
    var action: () -> Void
    public init(isChecked: Bool, text: String, action: @escaping () -> Void) {
        self.isChecked = isChecked
        self.text = text
        self.action = action
    }
    public var body: some View {
        Button(action: {
            action()
        }, label: {
            HStack {
                Text(text)
                Image(systemName: isChecked ? "checkmark.square.fill" : "square")
                    .resizable()
                    .foregroundColor(.mint)
                    .frame(width: 24, height: 24)
            }
        })
        .buttonStyle(PlainButtonStyle())
    }
}
