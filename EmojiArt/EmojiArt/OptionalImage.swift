import SwiftUI

struct OptionalImage: View {
    var iuImage: UIImage?
    var body: some View {
        Group {
            if iuImage != nil {
                Image(uiImage: iuImage!)
            }
        }
    }
}
