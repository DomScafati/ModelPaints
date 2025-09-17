// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation
#if canImport(SwiftUI)
import SwiftUI
#endif
#if canImport(UIKit)
import UIKit
#endif
#if canImport(AppKit)
import AppKit
#endif

// MARK: - Hex support
public struct HexColor {
    public let r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat
    public init?(hex: String, alpha: CGFloat = 1.0) {
        let cleaned = hex.trimmingCharacters(in: .whitespacesAndNewlines)
            .replacingOccurrences(of: "#", with: "")
        guard cleaned.count == 6, let value = UInt32(cleaned, radix: 16) else { return nil }
        self.r = CGFloat((value >> 16) & 0xFF) / 255.0
        self.g = CGFloat((value >> 8) & 0xFF) / 255.0
        self.b = CGFloat(value & 0xFF) / 255.0
        self.a = alpha
    }
}

#if canImport(SwiftUI)
public extension Color {
    init?(hex: String, alpha: CGFloat = 1.0) {
        guard let c = HexColor(hex: hex, alpha: alpha) else { return nil }
        self = Color(.sRGB, red: c.r, green: c.g, blue: c.b, opacity: c.a)
    }
}
#endif

#if canImport(UIKit)
public extension UIColor {
    convenience init?(hex: String, alpha: CGFloat = 1.0) {
        guard let c = HexColor(hex: hex, alpha: alpha) else { return nil }
        self.init(red: c.r, green: c.g, blue: c.b, alpha: c.a)
    }
}
#endif

#if canImport(AppKit) && !targetEnvironment(macCatalyst)
public extension NSColor {
    convenience init?(hex: String, alpha: CGFloat = 1.0) {
        guard let c = HexColor(hex: hex, alpha: alpha) else { return nil }
        self.init(srgbRed: c.r, green: c.g, blue: c.b, alpha: c.a)
    }
}
#endif

// MARK: - Namespaced palette
public enum ModelPaints {

    public enum CitadelLike {
        
        // MARK: - Neutrals (Black/White/Grey)
        public static let abaddonBlack = "000000"
        public static let coraxWhite = "F2F2F2"
        public static let mechanicusStandardGrey = "595959"
        public static let eshinGrey = "4A4A4A"
        public static let dawnstone =  "7D7D7D"
        public static let administratumGrey = "BFBFBF"
        public static let rakarthFlesh = "C9C4B8"

        // MARK: - Blues
        public static let kantorBlue = "1F3B73"
        public static let macraggeBlue = "1F4E8A"
        public static let calgarBlue = "3D72A4"
        public static let lothernBlue = "8DB9E2"
        public static let alaitocBlue = "2C5DA0"
        public static let teclisBlue = "4F86C6"
        public static let fenrisianGrey = "A7B7C6"
        public static let thunderhawkBlue = "506A78"

        // MARK: - Blue-Green / Turquoise
        public static let stegadonScaleGreen = "1B4F5B"
        public static let sotekGreen = "359C9D"
        public static let templeGuardBlue = "7EDDD2"
        public static let incubiDarkness = "1D3A3A"

        // MARK: - Purples
        public static let naggarothNight = "4B296B"
        public static let xereusPurple = "6D4B98"
        public static let genestealerPurple = "BBA1D2"
        public static let daemonetteHide = "685762"
        public static let slaaneshGrey = "8E7F91"
        public static let dechalaLilac = "D5C4E1"

        // MARK: - Greens
        public static let waaaghFlesh = "005B3C"
        public static let calibanGreen = "1B4D3E"
        public static let castellanGreen = "2E5335"
        public static let warbossGreen = "3CA370"
        public static let mootGreen = "9EFF99"

            // MARK: - Greens (Olive / Nurgle)
        public static let nurglingGreen = "7E9F56"
        public static let ogrynCamo = "A8C66C"
        public static let deathGuardGreen = "667B5C"

            // MARK: - Reds
        public static let mephistonRed = "8C0202"
        public static let khorneRed = "7B1E1E"
        public static let evilSunzScarlet = "C03A2B"
        public static let wildRiderRed = "F97171"
        public static let galVorbakRed = "8B2F2F"
        public static let wazdakkaRed = "C15050"

            // MARK: - Oranges
        public static let jokaeroOrange = "D35400"
        public static let trollSlayerOrange = "E67E22"
        public static let squigOrange = "E95C33"
        public static let fireDragonBright = "FDBB68"

            // MARK: - Yellows / Golds
        public static let averlandSunset = "B8860B"
        public static let dornYellow = "F6E27F"
        public static let zamesiDesert = "A89040"
        public static let tallarnSand = "CBB264"
        public static let pallidWychFlesh = "F1E4AA"
        public static let auricArmourGold = "D4AF37"
        public static let retributorArmour = "C9A227"
        public static let brassScorpion = "B87333"

            // MARK: - Pinks
        public static let screamerPink = "903960"
        public static let emperorsChildren = "C060A1"
        public static let pinkHorror = "F2A2CC"

            // MARK: - Bones / Neutral Bone
        public static let zandriDust = "A79874"
        public static let ushabtiBone = "CFC6A4"
        public static let screamingSkull = "F3EAD0"

            // MARK: - Browns
        public static let rhinoxHide = "4E342E"
        public static let mournfangBrown = "795548"
        public static let tuskgorFur = "D7CCC8"
        public static let screamingBell = "8C5B3E"

            // MARK: - Flesh Tones
        public static let bugmansGlow = "9C6B5A"
        public static let cadianFleshtone = "D2A07A"
        public static let kislevFlesh = "E6C8A0"

            // MARK: - Metallics (Silvers)
        public static let leadbelcher = "8A8D8F"
        public static let ironbreaker = "B6B9BB"
        public static let runefangSteel = "DDE1E6"
        public static let stormhostSilver = "ECEFF1"

            // MARK: - Shades / Washes (approx. tints for UI accents)
        public static let nulnOil = "1C1C1C"
        public static let agraxEarthshade = "4A3B2F"
        public static let reiklandFleshshade = "6A4A32"
        public static let drakenhofNightshade = "23304A"
        
    }
}
