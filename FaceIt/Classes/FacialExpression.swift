//
//  FacialExpression.swift
//  FaceIt
//
//  Created by CS193p Instructor.
//  Copyright © 2015-16 Stanford University. All rights reserved.
//

import Foundation

// UI-independent representation of a facial expression

public struct FacialExpression {
    public init(eyes: Eyes, eyeBrows: EyeBrows, mouth: Mouth) {
        self.eyes = eyes
        self.eyeBrows = eyeBrows
        self.mouth = mouth
    }
    
    public enum Eyes: Int {
        case Open
        case Closed
        case Squinting
    }
    
    public enum EyeBrows: Int {
        case Relaxed
        case Normal
        case Furrowed
        
        public func moreRelaxedBrow() -> EyeBrows {
            return EyeBrows(rawValue: rawValue - 1) ?? .Relaxed
        }
        public func moreFurrowedBrow() -> EyeBrows {
            return EyeBrows(rawValue: rawValue + 1) ?? .Furrowed
        }
    }
    
    public enum Mouth: Int {
        case Frown
        case Smirk
        case Neutral
        case Grin
        case Smile
        
        public func sadderMouth() -> Mouth {
            return Mouth(rawValue: rawValue - 1) ?? .Frown
        }
        public func happierMouth() -> Mouth {
            return Mouth(rawValue: rawValue + 1) ?? .Smile
        }
    }
    
    public var eyes: Eyes
    public var eyeBrows: EyeBrows
    public var mouth: Mouth
}
