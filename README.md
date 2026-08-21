# shopping-app-ios

An iOS fruit store app built with Swift and SwiftUI.

## Screens

| View | Role |
|---|---|
| `OnboardingView` | Entry screen shown on first launch |
| `HomeView` | Store front, composed from the views below |
| `TopSellingView` | Horizontal list of best selling items |
| `NearYouView` | Nearby sellers section |
| `FruitCardView` | Reusable product card |
| `FruitDetailsView` | Product detail screen |

Data models live under `Model`: `ImageData` and `NearYouData`.

## Stack

Swift, SwiftUI, Xcode. No third party dependencies, no package manager needed.

## Running it

Open `shopping-app-ios.xcodeproj` in Xcode and run on a simulator or device.

## Development history

Built through seven reviewed pull requests, one per feature, rather than a single dump commit: [merged pull requests](https://github.com/furkanYanteri1/shopping-app-ios/pulls?q=is%3Apr+is%3Amerged+base%3Amain).
