# DateIntervalOperators
A set of extensions and operators for date arithmetic in Swift.

### Usage

#### Date Components
Easily can create instances of NSDateComponents initialized to various intervals.
```swift
1.year()
// Equivalent to:
// let components = NSDateComponents()
// components.year = 1

5.years()
15.minutes()
1.month()
```
####Supported intervals:
```swift
second(s)
minute(s)
hour(s)
day(s)
week(s)
month(s)
year(s)
```

#### Date Arithmetic
Add or subtract date intervals from instances of NSDate.
```swift
let today = NSDate()
today + 1.year()      // 1 year from now
today - 2 month()     // 2 months ago
today + 5.minutes()   // 5 minutes from now 
```

### Installation

#### CocoaPods

You can also install this library using CocoaPods. Just add this line to your Podfile:

```ruby
pod 'DateIntervalOperators'
```

Then import library module like so:

```swift
import DateIntervalOperators
```

#### Manual

You can also install this library manually by copying `DateIntervalOperators.swift` to your project.

### Contributing
If you have comments, complaints or ideas for improvements, feel free to open an issue or a pull request.

### Author and license

Tim Schmitz

- [Github](http://github.com/timschmitz)
- [Twitter](http://twitter.com/timschmitz)
- [minutestomidnight.net](http://minutestomidnight.net)

DateIntervalOperators is available under the MIT license. See the LICENSE file for more info.