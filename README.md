# iPlayer

iPlayer is simply wraps AVPlayer and has all the implementation required to play a video file just by passing an URL.

## Requirements

* iOS 9.3+
* Cocoapod 1.5.3
## Installation

### Cocoapods

[Cocoapods](https://cocoapods.org) is the dependency manager for Cocoa project. You can install it by following command

```
$ gem install cocoapods

```
To integrate iPlayer in your Xcode project, specify it in your **Podfile**

```
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'
use_frameworks!

target '<Your Target Name>' do
    pod 'iPlayer', '~> 1.0'
end
```

## Usage

After the installation, you need to import the iPlayer framework in your ViewController file.

```
import iPlayer
```
### Method 1

Create an object for the **IPlayerView** class and add it as subview in your root view.

```
let iPlayerView = IPlayerView()
<Your Root View>.addSubView(iPlayerView)
```

### Method 2

Also, you can directly add a UIView to your storyboard and set it's class as IPlayerView to skip the above step.

Your're almost done!

To start playing the video, pass the video url to the IPlayerView object.

```
playerView.loadVideo(with: "<Your Video URL>")
```
Since this is just going to be a subview in your ViewController, the controls in the IPlayerView has to be properly aligned when the device orientation changes. To handle that, instruct the IPlayerView to update it's constraints whenever your ViewController's orientation changes. To do that, add the following code.

```
playerView.updateForOrientation(orientation: UIDevice.current.orientation)
```

### Handling IPlayerView Events

To get notified with the events happening in the IPlayerView, extend your ViewController to **IPlayerViewDelegate**. Set your view as the delegate for IPlayerView.

```
iPlayerView.delegate = self
```

Following are the methods for which you will be delegated.

```
func playerViewUpdatesControlsVisibility(shouldShow: Bool)

func playerViewDidFinishPlaying()

func playerView(playerView: IPlayerView, failedWith error: IPlayerError)
```

