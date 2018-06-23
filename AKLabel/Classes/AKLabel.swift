import UIKit
public class AKLabel: UILabel {
	private var framesPerSecond = 60
	private var currentIndex: String.Index!
	private var updateFrequency: Double!
	private var updateCounter = 0
	private var textToAnimate: String!
	private var displayLink: CADisplayLink!
	private var completion: (() -> ())?
	
	public func animate(text: String, duration seconds: Int, completion: (() -> ())?)  {
		updateFrequency = Double(framesPerSecond * seconds) / Double(text.count)
		currentIndex = text.startIndex
		textToAnimate = text
		displayLink = CADisplayLink(target: self, selector: #selector(updateText))
		displayLink.add(to: .main, forMode: .defaultRunLoopMode)
		self.completion = completion
	}
	
	@objc private func updateText() {
		if  currentIndex == textToAnimate.endIndex {
			text = String(textToAnimate[..<currentIndex])
			displayLink.remove(from: .main, forMode: .defaultRunLoopMode)
			self.completion?()
			return
		}
		
		if updateCounter == 0 {
			text = String(textToAnimate[..<currentIndex])
			var offset = 1
			if updateFrequency < 1 {
				offset = Int(ceil(1.0/updateFrequency))
			}
			self.currentIndex = textToAnimate.index(currentIndex, offsetBy: offset, limitedBy: textToAnimate.endIndex) ?? textToAnimate.endIndex
			updateCounter = Int(updateFrequency)
		} else {
			updateCounter -= 1
		}
	}
}
