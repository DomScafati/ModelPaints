// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation
import CoreGraphics

#if canImport(SwiftUI)
import SwiftUI

@available(iOS 13.0, watchOS 6.0, macOS 10.15, tvOS 13.0, *)
public extension Color {
    
    // MARK: - Public factory
    public static func hexStringToColor(hex: String) -> Color {
        let cleaned = hex.trimmingCharacters(in: .whitespacesAndNewlines)
            .replacingOccurrences(of: "#", with: "")
            .uppercased()
        
        guard cleaned.count == 6, let value = UInt32(cleaned, radix: 16) else {
            return .gray
        }
        
        let r = CGFloat((value & 0xFF0000) >> 16) / 255.0
        let g = CGFloat((value & 0x00FF00) >> 8) / 255.0
        let b = CGFloat(value & 0x0000FF) / 255.0
        
        return Color(.sRGB, red: r, green: g, blue: b, opacity: 1)
    }
    
    // MARK: - Neutrals (Black/White/Grey)
    public static let abaddonBlack            = Color.hexStringToColor(hex: "000000")
    public static let coraxWhite              = Color.hexStringToColor(hex: "F2F2F2")
    public static let mechanicusStandardGrey  = Color.hexStringToColor(hex: "595959")
    public static let eshinGrey               = Color.hexStringToColor(hex: "4A4A4A")
    public static let dawnstone               = Color.hexStringToColor(hex: "7D7D7D")
    public static let administratumGrey       = Color.hexStringToColor(hex: "BFBFBF")
    public static let rakarthFlesh            = Color.hexStringToColor(hex: "C9C4B8")
    
    // MARK: - Blues
    public static let kantorBlue              = Color.hexStringToColor(hex: "1F3B73")
    public static let macraggeBlue            = Color.hexStringToColor(hex: "1F4E8A")
    public static let calgarBlue              = Color.hexStringToColor(hex: "3D72A4")
    public static let lothernBlue             = Color.hexStringToColor(hex: "8DB9E2")
    public static let alaitocBlue             = Color.hexStringToColor(hex: "2C5DA0")
    public static let teclisBlue              = Color.hexStringToColor(hex: "4F86C6")
    public static let fenrisianGrey           = Color.hexStringToColor(hex: "A7B7C6")
    public static let thunderhawkBlue         = Color.hexStringToColor(hex: "506A78")
    
    // MARK: - Blue-Green / Turquoise
    public static let stegadonScaleGreen      = Color.hexStringToColor(hex: "1B4F5B")
    public static let sotekGreen              = Color.hexStringToColor(hex: "359C9D")
    public static let templeGuardBlue         = Color.hexStringToColor(hex: "7EDDD2")
    public static let incubiDarkness          = Color.hexStringToColor(hex: "1D3A3A")
    
    // MARK: - Purples
    public static let naggarothNight          = Color.hexStringToColor(hex: "4B296B")
    public static let xereusPurple            = Color.hexStringToColor(hex: "6D4B98")
    public static let genestealerPurple       = Color.hexStringToColor(hex: "BBA1D2")
    public static let daemonetteHide          = Color.hexStringToColor(hex: "685762")
    public static let slaaneshGrey            = Color.hexStringToColor(hex: "8E7F91")
    public static let dechalaLilac            = Color.hexStringToColor(hex: "D5C4E1")
    
    // MARK: - Greens
    public static let waaaghFlesh             = Color.hexStringToColor(hex: "005B3C")
    public static let calibanGreen            = Color.hexStringToColor(hex: "1B4D3E")
    public static let castellanGreen          = Color.hexStringToColor(hex: "2E5335")
    public static let warbossGreen            = Color.hexStringToColor(hex: "3CA370")
    public static let mootGreen               = Color.hexStringToColor(hex: "9EFF99")
    
    // MARK: - Greens (Olive / Nurgle)
    public static let nurglingGreen           = Color.hexStringToColor(hex: "7E9F56")
    public static let ogrynCamo               = Color.hexStringToColor(hex: "A8C66C")
    public static let deathGuardGreen         = Color.hexStringToColor(hex: "667B5C")
    
    // MARK: - Reds
    public static let mephistonRed            = Color.hexStringToColor(hex: "8C0202")
    public static let khorneRed               = Color.hexStringToColor(hex: "7B1E1E")
    public static let evilSunzScarlet         = Color.hexStringToColor(hex: "C03A2B")
    public static let wildRiderRed            = Color.hexStringToColor(hex: "F97171")
    public static let galVorbakRed            = Color.hexStringToColor(hex: "8B2F2F")
    public static let wazdakkaRed             = Color.hexStringToColor(hex: "C15050")
    
    // MARK: - Oranges
    public static let jokaeroOrange           = Color.hexStringToColor(hex: "D35400")
    public static let trollSlayerOrange       = Color.hexStringToColor(hex: "E67E22")
    public static let squigOrange             = Color.hexStringToColor(hex: "E95C33")
    public static let fireDragonBright        = Color.hexStringToColor(hex: "FDBB68")
    
    // MARK: - Yellows / Golds
    public static let averlandSunset          = Color.hexStringToColor(hex: "B8860B")
    public static let dornYellow              = Color.hexStringToColor(hex: "F6E27F")
    public static let zamesiDesert            = Color.hexStringToColor(hex: "A89040")
    public static let tallarnSand             = Color.hexStringToColor(hex: "CBB264")
    public static let pallidWychFlesh         = Color.hexStringToColor(hex: "F1E4AA")
    public static let auricArmourGold         = Color.hexStringToColor(hex: "D4AF37")
    public static let retributorArmour        = Color.hexStringToColor(hex: "C9A227")
    public static let brassScorpion           = Color.hexStringToColor(hex: "B87333")
    
    // MARK: - Pinks
    public static let screamerPink            = Color.hexStringToColor(hex: "903960")
    public static let emperorsChildren        = Color.hexStringToColor(hex: "C060A1")
    public static let pinkHorror              = Color.hexStringToColor(hex: "F2A2CC")
    
    // MARK: - Bones / Neutral Bone
    public static let zandriDust              = Color.hexStringToColor(hex: "A79874")
    public static let ushabtiBone             = Color.hexStringToColor(hex: "CFC6A4")
    public static let screamingSkull          = Color.hexStringToColor(hex: "F3EAD0")
    
    // MARK: - Browns
    public static let rhinoxHide              = Color.hexStringToColor(hex: "4E342E")
    public static let mournfangBrown          = Color.hexStringToColor(hex: "795548")
    public static let tuskgorFur              = Color.hexStringToColor(hex: "D7CCC8")
    public static let screamingBell           = Color.hexStringToColor(hex: "8C5B3E")
    
    // MARK: - Flesh Tones
    public static let bugmansGlow             = Color.hexStringToColor(hex: "9C6B5A")
    public static let cadianFleshtone         = Color.hexStringToColor(hex: "D2A07A")
    public static let kislevFlesh             = Color.hexStringToColor(hex: "E6C8A0")
    
    // MARK: - Metallics (Silvers)
    public static let leadbelcher             = Color.hexStringToColor(hex: "8A8D8F")
    public static let ironbreaker             = Color.hexStringToColor(hex: "B6B9BB")
    public static let runefangSteel           = Color.hexStringToColor(hex: "DDE1E6")
    public static let stormhostSilver         = Color.hexStringToColor(hex: "ECEFF1")
    
    // MARK: - Shades / Washes (approx. tints for UI accents)
    public static let nulnOil                 = Color.hexStringToColor(hex: "1C1C1C")
    public static let agraxEarthshade         = Color.hexStringToColor(hex: "4A3B2F")
    public static let reiklandFleshshade      = Color.hexStringToColor(hex: "6A4A32")
    public static let drakenhofNightshade     = Color.hexStringToColor(hex: "23304A")
}
#endif

#if canImport(UIKit)
import UIKit

public extension UIColor {
    
    // MARK: - Public factory
    public static func hexStringToColor(hex: String) -> UIColor {
        let cleaned = hex.trimmingCharacters(in: .whitespacesAndNewlines)
            .replacingOccurrences(of: "#", with: "")
            .uppercased()
        
        guard cleaned.count == 6, let value = UInt32(cleaned, radix: 16) else {
            return .gray
        }
        
        let r = CGFloat((value & 0xFF0000) >> 16) / 255.0
        let g = CGFloat((value & 0x00FF00) >> 8) / 255.0
        let b = CGFloat(value & 0x0000FF) / 255.0
        
        return UIColor(red: r, green: g, blue: b, alpha: 1)
    }
    
    // MARK: - Neutrals (Black/White/Grey)
    public static let abaddonBlack            = Color.hexStringToColor(hex: "000000")
    public static let coraxWhite              = Color.hexStringToColor(hex: "F2F2F2")
    public static let mechanicusStandardGrey  = Color.hexStringToColor(hex: "595959")
    public static let eshinGrey               = Color.hexStringToColor(hex: "4A4A4A")
    public static let dawnstone               = Color.hexStringToColor(hex: "7D7D7D")
    public static let administratumGrey       = Color.hexStringToColor(hex: "BFBFBF")
    public static let rakarthFlesh            = Color.hexStringToColor(hex: "C9C4B8")
    
    // MARK: - Blues
    public static let kantorBlue              = Color.hexStringToColor(hex: "1F3B73")
    public static let macraggeBlue            = Color.hexStringToColor(hex: "1F4E8A")
    public static let calgarBlue              = Color.hexStringToColor(hex: "3D72A4")
    public static let lothernBlue             = Color.hexStringToColor(hex: "8DB9E2")
    public static let alaitocBlue             = Color.hexStringToColor(hex: "2C5DA0")
    public static let teclisBlue              = Color.hexStringToColor(hex: "4F86C6")
    public static let fenrisianGrey           = Color.hexStringToColor(hex: "A7B7C6")
    public static let thunderhawkBlue         = Color.hexStringToColor(hex: "506A78")
    
    // MARK: - Blue-Green / Turquoise
    public static let stegadonScaleGreen      = Color.hexStringToColor(hex: "1B4F5B")
    public static let sotekGreen              = Color.hexStringToColor(hex: "359C9D")
    public static let templeGuardBlue         = Color.hexStringToColor(hex: "7EDDD2")
    public static let incubiDarkness          = Color.hexStringToColor(hex: "1D3A3A")
    
    // MARK: - Purples
    public static let naggarothNight          = Color.hexStringToColor(hex: "4B296B")
    public static let xereusPurple            = Color.hexStringToColor(hex: "6D4B98")
    public static let genestealerPurple       = Color.hexStringToColor(hex: "BBA1D2")
    public static let daemonetteHide          = Color.hexStringToColor(hex: "685762")
    public static let slaaneshGrey            = Color.hexStringToColor(hex: "8E7F91")
    public static let dechalaLilac            = Color.hexStringToColor(hex: "D5C4E1")
    
    // MARK: - Greens
    public static let waaaghFlesh             = Color.hexStringToColor(hex: "005B3C")
    public static let calibanGreen            = Color.hexStringToColor(hex: "1B4D3E")
    public static let castellanGreen          = Color.hexStringToColor(hex: "2E5335")
    public static let warbossGreen            = Color.hexStringToColor(hex: "3CA370")
    public static let mootGreen               = Color.hexStringToColor(hex: "9EFF99")
    
    // MARK: - Greens (Olive / Nurgle)
    public static let nurglingGreen           = Color.hexStringToColor(hex: "7E9F56")
    public static let ogrynCamo               = Color.hexStringToColor(hex: "A8C66C")
    public static let deathGuardGreen         = Color.hexStringToColor(hex: "667B5C")
    
    // MARK: - Reds
    public static let mephistonRed            = Color.hexStringToColor(hex: "8C0202")
    public static let khorneRed               = Color.hexStringToColor(hex: "7B1E1E")
    public static let evilSunzScarlet         = Color.hexStringToColor(hex: "C03A2B")
    public static let wildRiderRed            = Color.hexStringToColor(hex: "F97171")
    public static let galVorbakRed            = Color.hexStringToColor(hex: "8B2F2F")
    public static let wazdakkaRed             = Color.hexStringToColor(hex: "C15050")
    
    // MARK: - Oranges
    public static let jokaeroOrange           = Color.hexStringToColor(hex: "D35400")
    public static let trollSlayerOrange       = Color.hexStringToColor(hex: "E67E22")
    public static let squigOrange             = Color.hexStringToColor(hex: "E95C33")
    public static let fireDragonBright        = Color.hexStringToColor(hex: "FDBB68")
    
    // MARK: - Yellows / Golds
    public static let averlandSunset          = Color.hexStringToColor(hex: "B8860B")
    public static let dornYellow              = Color.hexStringToColor(hex: "F6E27F")
    public static let zamesiDesert            = Color.hexStringToColor(hex: "A89040")
    public static let tallarnSand             = Color.hexStringToColor(hex: "CBB264")
    public static let pallidWychFlesh         = Color.hexStringToColor(hex: "F1E4AA")
    public static let auricArmourGold         = Color.hexStringToColor(hex: "D4AF37")
    public static let retributorArmour        = Color.hexStringToColor(hex: "C9A227")
    public static let brassScorpion           = Color.hexStringToColor(hex: "B87333")
    
    // MARK: - Pinks
    public static let screamerPink            = Color.hexStringToColor(hex: "903960")
    public static let emperorsChildren        = Color.hexStringToColor(hex: "C060A1")
    public static let pinkHorror              = Color.hexStringToColor(hex: "F2A2CC")
    
    // MARK: - Bones / Neutral Bone
    public static let zandriDust              = Color.hexStringToColor(hex: "A79874")
    public static let ushabtiBone             = Color.hexStringToColor(hex: "CFC6A4")
    public static let screamingSkull          = Color.hexStringToColor(hex: "F3EAD0")
    
    // MARK: - Browns
    public static let rhinoxHide              = Color.hexStringToColor(hex: "4E342E")
    public static let mournfangBrown          = Color.hexStringToColor(hex: "795548")
    public static let tuskgorFur              = Color.hexStringToColor(hex: "D7CCC8")
    public static let screamingBell           = Color.hexStringToColor(hex: "8C5B3E")
    
    // MARK: - Flesh Tones
    public static let bugmansGlow             = Color.hexStringToColor(hex: "9C6B5A")
    public static let cadianFleshtone         = Color.hexStringToColor(hex: "D2A07A")
    public static let kislevFlesh             = Color.hexStringToColor(hex: "E6C8A0")
    
    // MARK: - Metallics (Silvers)
    public static let leadbelcher             = Color.hexStringToColor(hex: "8A8D8F")
    public static let ironbreaker             = Color.hexStringToColor(hex: "B6B9BB")
    public static let runefangSteel           = Color.hexStringToColor(hex: "DDE1E6")
    public static let stormhostSilver         = Color.hexStringToColor(hex: "ECEFF1")
    
    // MARK: - Shades / Washes (approx. tints for UI accents)
    public static let nulnOil                 = Color.hexStringToColor(hex: "1C1C1C")
    public static let agraxEarthshade         = Color.hexStringToColor(hex: "4A3B2F")
    public static let reiklandFleshshade      = Color.hexStringToColor(hex: "6A4A32")
    public static let drakenhofNightshade     = Color.hexStringToColor(hex: "23304A")
}
#endif

#if canImport(AppKit) && !targetEnvironment(macCatalyst)
import AppKit

public extension NSColor {
   public static func hexStringToColor(hex: String) -> NSColor {
        let cleaned = hex.trimmingCharacters(in: .whitespacesAndNewlines)
            .replacingOccurrences(of: "#", with: "")
            .uppercased()
        
        guard cleaned.count == 6, let value = UInt32(cleaned, radix: 16) else {
            return .gray
        }
        
        let r = CGFloat((value & 0xFF0000) >> 16) / 255.0
        let g = CGFloat((value & 0x00FF00) >> 8) / 255.0
        let b = CGFloat(value & 0x0000FF) / 255.0
        
        return NSColor(srgbRed: r, green: g, blue: b, alpha: 1)
    }
    
    // MARK: - Neutrals (Black/White/Grey)
    public static let abaddonBlack            = Color.hexStringToColor(hex: "000000")
    public static let coraxWhite              = Color.hexStringToColor(hex: "F2F2F2")
    public static let mechanicusStandardGrey  = Color.hexStringToColor(hex: "595959")
    public static let eshinGrey               = Color.hexStringToColor(hex: "4A4A4A")
    public static let dawnstone               = Color.hexStringToColor(hex: "7D7D7D")
    public static let administratumGrey       = Color.hexStringToColor(hex: "BFBFBF")
    public static let rakarthFlesh            = Color.hexStringToColor(hex: "C9C4B8")
    
    // MARK: - Blues
    public static let kantorBlue              = Color.hexStringToColor(hex: "1F3B73")
    public static let macraggeBlue            = Color.hexStringToColor(hex: "1F4E8A")
    public static let calgarBlue              = Color.hexStringToColor(hex: "3D72A4")
    public static let lothernBlue             = Color.hexStringToColor(hex: "8DB9E2")
    public static let alaitocBlue             = Color.hexStringToColor(hex: "2C5DA0")
    public static let teclisBlue              = Color.hexStringToColor(hex: "4F86C6")
    public static let fenrisianGrey           = Color.hexStringToColor(hex: "A7B7C6")
    public static let thunderhawkBlue         = Color.hexStringToColor(hex: "506A78")
    
    // MARK: - Blue-Green / Turquoise
    public static let stegadonScaleGreen      = Color.hexStringToColor(hex: "1B4F5B")
    public static let sotekGreen              = Color.hexStringToColor(hex: "359C9D")
    public static let templeGuardBlue         = Color.hexStringToColor(hex: "7EDDD2")
    public static let incubiDarkness          = Color.hexStringToColor(hex: "1D3A3A")
    
    // MARK: - Purples
    public static let naggarothNight          = Color.hexStringToColor(hex: "4B296B")
    public static let xereusPurple            = Color.hexStringToColor(hex: "6D4B98")
    public static let genestealerPurple       = Color.hexStringToColor(hex: "BBA1D2")
    public static let daemonetteHide          = Color.hexStringToColor(hex: "685762")
    public static let slaaneshGrey            = Color.hexStringToColor(hex: "8E7F91")
    public static let dechalaLilac            = Color.hexStringToColor(hex: "D5C4E1")
    
    // MARK: - Greens
    public static let waaaghFlesh             = Color.hexStringToColor(hex: "005B3C")
    public static let calibanGreen            = Color.hexStringToColor(hex: "1B4D3E")
    public static let castellanGreen          = Color.hexStringToColor(hex: "2E5335")
    public static let warbossGreen            = Color.hexStringToColor(hex: "3CA370")
    public static let mootGreen               = Color.hexStringToColor(hex: "9EFF99")
    
    // MARK: - Greens (Olive / Nurgle)
    public static let nurglingGreen           = Color.hexStringToColor(hex: "7E9F56")
    public static let ogrynCamo               = Color.hexStringToColor(hex: "A8C66C")
    public static let deathGuardGreen         = Color.hexStringToColor(hex: "667B5C")
    
    // MARK: - Reds
    public static let mephistonRed            = Color.hexStringToColor(hex: "8C0202")
    public static let khorneRed               = Color.hexStringToColor(hex: "7B1E1E")
    public static let evilSunzScarlet         = Color.hexStringToColor(hex: "C03A2B")
    public static let wildRiderRed            = Color.hexStringToColor(hex: "F97171")
    public static let galVorbakRed            = Color.hexStringToColor(hex: "8B2F2F")
    public static let wazdakkaRed             = Color.hexStringToColor(hex: "C15050")
    
    // MARK: - Oranges
    public static let jokaeroOrange           = Color.hexStringToColor(hex: "D35400")
    public static let trollSlayerOrange       = Color.hexStringToColor(hex: "E67E22")
    public static let squigOrange             = Color.hexStringToColor(hex: "E95C33")
    public static let fireDragonBright        = Color.hexStringToColor(hex: "FDBB68")
    
    // MARK: - Yellows / Golds
    public static let averlandSunset          = Color.hexStringToColor(hex: "B8860B")
    public static let dornYellow              = Color.hexStringToColor(hex: "F6E27F")
    public static let zamesiDesert            = Color.hexStringToColor(hex: "A89040")
    public static let tallarnSand             = Color.hexStringToColor(hex: "CBB264")
    public static let pallidWychFlesh         = Color.hexStringToColor(hex: "F1E4AA")
    public static let auricArmourGold         = Color.hexStringToColor(hex: "D4AF37")
    public static let retributorArmour        = Color.hexStringToColor(hex: "C9A227")
    public static let brassScorpion           = Color.hexStringToColor(hex: "B87333")
    
    // MARK: - Pinks
    public static let screamerPink            = Color.hexStringToColor(hex: "903960")
    public static let emperorsChildren        = Color.hexStringToColor(hex: "C060A1")
    public static let pinkHorror              = Color.hexStringToColor(hex: "F2A2CC")
    
    // MARK: - Bones / Neutral Bone
    public static let zandriDust              = Color.hexStringToColor(hex: "A79874")
    public static let ushabtiBone             = Color.hexStringToColor(hex: "CFC6A4")
    public static let screamingSkull          = Color.hexStringToColor(hex: "F3EAD0")
    
    // MARK: - Browns
    public static let rhinoxHide              = Color.hexStringToColor(hex: "4E342E")
    public static let mournfangBrown          = Color.hexStringToColor(hex: "795548")
    public static let tuskgorFur              = Color.hexStringToColor(hex: "D7CCC8")
    public static let screamingBell           = Color.hexStringToColor(hex: "8C5B3E")
    
    // MARK: - Flesh Tones
    public static let bugmansGlow             = Color.hexStringToColor(hex: "9C6B5A")
    public static let cadianFleshtone         = Color.hexStringToColor(hex: "D2A07A")
    public static let kislevFlesh             = Color.hexStringToColor(hex: "E6C8A0")
    
    // MARK: - Metallics (Silvers)
    public static let leadbelcher             = Color.hexStringToColor(hex: "8A8D8F")
    public static let ironbreaker             = Color.hexStringToColor(hex: "B6B9BB")
    public static let runefangSteel           = Color.hexStringToColor(hex: "DDE1E6")
    public static let stormhostSilver         = Color.hexStringToColor(hex: "ECEFF1")
    
    // MARK: - Shades / Washes (approx. tints for UI accents)
    public static let nulnOil                 = Color.hexStringToColor(hex: "1C1C1C")
    public static let agraxEarthshade         = Color.hexStringToColor(hex: "4A3B2F")
    public static let reiklandFleshshade      = Color.hexStringToColor(hex: "6A4A32")
    public static let drakenhofNightshade     = Color.hexStringToColor(hex: "23304A")
}
#endif
