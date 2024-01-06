//
//  BlurWindow.swift
//  FineDining
//
//  Created by 진호정 on 2024/01/07.
//

import SwiftUI

struct BlurWindow: NSViewRepresentable {
    func updateNSView(_ nsView: NSViewType, context: Context) {
        
    }
    
    
    func makeNSView(context: Context) -> some NSVisualEffectView {
        
        let view = NSVisualEffectView()
        view.blendingMode = .behindWindow
        return view
    }

}

#Preview {
    BlurWindow()
}
