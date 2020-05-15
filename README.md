# SwiftUIPreviewProvider

Preview the Cocoa/UIKit view controller or view in SwiftUI via Xcode Preview.


```swift
import CocoaPreviewProvider

struct MyCocoaViewController_Previews: PreviewProvider {
    static var previews: some View {
        NSViewControllerPreview {
            MyCocoaViewController()
        }
    }
}

import UIKitPreviewProvider

struct MyUIKitViewController_Previews: PreviewProvider {
    static var previews: some View {
        UIViewControllerPreview {
            MyUIKitViewController()
        }
    }
}
```
