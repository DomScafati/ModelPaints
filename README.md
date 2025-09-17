# Model Paints
The idea behind this library is to expand on the basic color sets available in Swift.
Fans of miniature painting will immediatley recognize these colors from the Citadel line of paints.

## Sample Usage
```
import ModelPaints
import SwiftUI

struct Swatch: View {
    var body: some View {
        Rectangle()
            .fill(Color(hex: PaintPalettes.CitadelLike.calibanGreen) ?? .green)
    }
}
```

