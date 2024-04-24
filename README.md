## Example project for go issue #

This project is the demo project for [go issue #67000](https://github.com/golang/go/issues/67000) to demonstrate that [#66500](https://github.com/golang/go/issues/66500) and [#66018](https://github.com/golang/go/issues/66018) is not entirely solved yet.

### [NEW] Suggested fix:

`gomobile` has to put the `Info.plist` in an additional directory + include some more entries [as pointed out in my comment here](https://github.com/golang/go/issues/67000#issuecomment-2073399403)

### Steps to reproduce:

- clone the repository
- cd into `plexampleGo`
- run `./mobile.sh` (this will create an `plexample.xcframework` file in `plexampleSPM/Frameworks/`)

Then, in Xcode:
- create an new iOS Storyboard project in Xcode
- in the Xcode project, add the `plexampleSPM` in `Package Dependencies` > `+` > `Add Local...`
- change the `ViewController.swift` to

```
import UIKit
import Plexample

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        PlexamplePlprint()
    }

}
```

### Results:

When you run the app in **Xcode 15.0** it will run just fine and print the text from go as expected.

When you run the app in **Xcode 15.3** it will complain about the Plist files saying:

`Failed to load Info.plist from bundle at path (...)`