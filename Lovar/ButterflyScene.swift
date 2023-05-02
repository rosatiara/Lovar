import SwiftUI
import SpriteKit

struct ButterflyAnimation: UIViewRepresentable {
    func makeUIView(context: Context) -> SKView {
        let view = SKView()
        let scene = ButterflyScene(size: view.bounds.size)
        scene.scaleMode = .aspectFill
        view.presentScene(scene)
        return view
    }
    
    func updateUIView(_ view: SKView, context: Context) {}
}

class ButterflyScene: SKScene {
    let butterflySprite = SKSpriteNode(texture: SKTexture(imageNamed: "butterflyPurple_0.png"))
    
    override func didMove(to view: SKView) {
        backgroundColor = .clear
        butterflySprite.position = CGPoint(x: frame.midX, y: frame.midY)
        addChild(butterflySprite)
        
        var textures: [SKTexture] = []
        for i in 0...29 {
            let texture = SKTexture(imageNamed: "butterflyPurple_\(i).png")
            textures.append(texture)
        }
        
        let animateAction = SKAction.animate(with: textures, timePerFrame: 0.05)
        let repeatAction = SKAction.repeatForever(animateAction)
        butterflySprite.run(repeatAction)
    }
}

