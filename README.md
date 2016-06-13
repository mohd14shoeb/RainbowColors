<p align="center" >
<img src="https://github.com/igormatyushkin014/RainbowColors/blob/master/Images/logo-1024-300.png" alt="RainbowColors" title="RainbowColors">
</p>

# At a Glance

`RainbowColors` simplifies common tasks with colors in iOS, which makes easier implementation of colorful UI designs. Absolutely compatible with native iOS SDK.

##How To Get Started

- Copy content of `Source` folder to your project.

or

- Use `RainbowColors` cocoapod

## Requirements

* iOS 8 and later
* Xcode 7 and later

## Usage

### Color Initialization

The common expression for color in RGB system is `#123456`. Another variety of this expression looks like `#123` which is equivalent to `#112233`. The same time, iOS SDK doesn't support those expressions above and requires to use `CGFloat` values for red, green, blue and alpha component in constructor of `UIColor` class. Not comfortable enough, right?

`RainbowColors` has a solution for the problem described above, so instead of this

```swift
let grayColor = UIColor(red: 51.0 / 255.0, green: 51.0 / 255.0, blue: 51.0, alpha: 255.0)
```

you can simply write this

```swift
let grayColor = UIColor(hexString: "#333333")
```

or this

```swift
let grayColor = UIColor(hexString: "#333")
```

or even this

```swift
let grayColor = UIColor(hexString: "333")
```

As you can see in last example, sharp symbol is optional. Hex string will be parsed correctly with or without sharp prefix.

`RainbowColors` supports both RGB and RGBA color systems, so you can also add alpha component to expression:

```swift
let grayColorWithSmallTransparency = UIColor(hexString: "#333333dd") // {51, 51, 51, 221}
let halfTransparentGrayColor = UIColor(hexString: "#3338") // {51, 51, 51, 136}
let almostTransparentGrayColor = UIColor(hexString: "#33333310") // {51, 51, 51, 16}
```

If hex string has wrong format, nil will be returned instead of color.

### Brand Colors

Sometimes you don't know which colors are good enough for your project. Then you can try color schemes of well-known services just to bring some color to app. `RainbowColors` has extendable collection of brand colors. All that you need is to write

```swift
let color = UIColor.Brands.Google.blue
```

or 

```swift
let color = UIColor.Brands.Flickr.pink
```

Of course, you are not limited to make any operations with those colors:

```swift
let flickrPinkWithHalfTransparency = UIColor.Brands.Flickr.pink.colorWithAlphaComponent(0.5)
```

To see full collection of available brands, just type in Xcode `UIColor.Brands.` and you will see output like this:

<p align="center" >
<img src="https://github.com/igormatyushkin014/RainbowColors/blob/master/Images/available-brands.png" alt="Available Brands" title="Available Brands">
</p>

Another way to check available brands is to take a look at [`BrandColorCollection.swift`](Source/BrandColorCollection/Base/BrandColorCollection.swift) file.

## Contribution

If you want to add more brand colors to this library, send a pull request. This kind of changes is highly appreciated. Let's make the largest open-source collection of brand colors for developers :)

## License

`RainbowColors` is available under the MIT license. See the [LICENSE](./LICENSE) file for more info.
