# Model Paints 🎨

**Model Paints** is a Swift package that expands the standard color sets available in Swift and SwiftUI with a palette inspired by miniature painting.  
It provides convenient access to color values modeled after the iconic Citadel paint range, making it easy to add thematic or hobby-related flair to your projects.

> ⚠️ Note: This is an unofficial fan project for hobbyists. See the [Disclaimer](#disclaimer).

---

## Features
- ✅ Ready-to-use **SwiftUI `Color`** and **UIKit `UIColor`** initializers  
- ✅ Namespaced palettes to avoid naming collisions (`PaintPalettes.CitadelLike`)  
- ✅ Simple hex-based color conversion helper  
- ✅ Cross-platform: works on iOS, macOS, tvOS, and watchOS  

---

## Installation

### Swift Package Manager
Add **ModelPaints** to your project through Xcode:

1. Go to **File → Add Package Dependencies…**  
2. Enter the repository URL:  


3. Choose **Up to Next Major Version** (recommended).

---

## Usage

### SwiftUI Example
```
import ModelPaints
import SwiftUI

struct Swatch: View {
 var body: some View {
     Rectangle()
         .fill(Color.calibanGreen) ?? .green)
         .frame(width: 100, height: 100)
         .cornerRadius(8)
 }
}
```

### UIKit Example
```
import ModelPaints
import UIKit

let button = UIButton(type: .system)
button.backgroundColor = UIColor(hex: UIColor.mephistonRed)
```

## Roadmap
- Add additional paint sets (Vallejo, Army Painter, etc.)
- Expand documentation with visual swatches
- SwiftUI previews for palettes

### Disclaimer
This project is an unofficial fan project and is not affiliated with or endorsed by Games Workshop.
All paint names (e.g., Mephiston Red, Caliban Green) are trademarks of Games Workshop.
They are used here solely for reference and compatibility. No challenge to their status is intended.
