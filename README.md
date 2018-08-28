# StoryView

## Description
StoryView is a UIView library that can make carousel like Instagram's story.
This library use easily like UITableView.

## Features
・Change border color

・Change border width

・Crop an image into a circle 

## Demo

## Usage

### Make property.

```swift
import StoryView

class ViewController: UIViewController {

  @IBOutlet weak var storyView: StoryView! {
    willSet {
      newValue.delegate = self
      newValue.dataSource = self
    }
  }

  override func viewDidLoad() {
    super.viewDidLoad()

    // If you do not use IBOutlet, create a StoryView with code.
    //self.storyView = StoryView()
  }
}
```

### Implement StoryViewDataSource.
You must implement these methods.

```swift
extension ViewController: StoryViewDataSource {

  func numberOfItems(in storyView: StoryView) -> Int {
    return yourStories
  }

  func storyView(_ storyView: StoryView, storyForItem item: Int) -> Story {
    let story = Story(image: yourImage, title: yourTitle)
    return story
  }
}
```

### Implementt StoryViewDelegate
You must implement these methods.

```swift
extension ViewController: StoryViewDataSource {

  func storyView(_ storyView: StoryView, tappedCellAt item: Int) {
    // This process is executed when Story is tapped.
  }

  func storyView(_ storyView: StoryView, longPressedCellAt item: Int) {
    // This process is executed when Story is long pressed.
  }
}
```

## Install

### CocoaPods  
Add this to your Podfile.

```PodFile
pod 'StoryView'
```

### Carthage  
Add this to your Cartfile.

```Cartfile
github "PKPK-Carnage/StoryView"
```

## Help

If you want to support this framework, you can do these things.

* Please let us know if you have any requests for me.

I will do my best to live up to your expectations.

* You can make contribute code, issues and pull requests.

I promise to confirm them.

## Licence

[MIT](https://github.com/PKPK-Carnage/StoryView/blob/master/LICENSE)

## Author

[PKPK-Carnage🦎](https://github.com/PKPK-Carnage)
