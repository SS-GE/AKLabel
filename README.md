# AKLabel

AKLabel is a simple implementation that uses CADisplayLink to animate the text within the given time duration.

## Example

Simply create an instance of AKLabel or assign a AKLabel class in storyboard and call the animate method.

    @IBOutlet weak var label: AKLabel!
    label.animate(text: "Animate this text", duration: 10, completion: nil)
    
Duration is in seconds

## Installation

AKLabel is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'AKLabel'
```

## Contact

Follow me on Twitter ([@iamakshayyadu](https://twitter.com/iamakshayyadu))

## License

AKLabel is available under the MIT license. See the LICENSE file for more info.
