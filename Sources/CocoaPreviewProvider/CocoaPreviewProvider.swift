#if canImport(Cocoa)

import Cocoa
import SwiftUI

public struct NSViewControllerPreview<ViewController: NSViewController>: NSViewControllerRepresentable {
    
    let viewController: ViewController
    
    public init(_ builder: @escaping () -> ViewController) {
        viewController = builder()
    }
    
    // MARK: - NSViewControllerRepresentable
    
    public func makeNSViewController(context: Context) -> ViewController {
        return viewController
    }
    
    public func updateNSViewController(_ viewController: ViewController, context: Context) {
        
    }
    
}

public struct NSViewPreview<View: NSView>: NSViewRepresentable {
    
    let view: View
    
    public init(_ builder: @escaping () -> View) {
        view = builder()
    }
    
    // MARK: - NSViewRepresentable
    public func makeNSView(context: Context) -> View {
        return view
    }
    
    public func updateNSView(_ view: View, context: Context) {
        view.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        view.setContentHuggingPriority(.defaultHigh, for: .vertical)
    }
    
}

#endif
