# RiveView Metal HUD Bug Reproduction

This project reproduces a bug in the [Rive iOS SDK](https://github.com/rive-app/rive-ios) where a **Metal Performance HUD overlay** unexpectedly appears when multiple `RiveView` instances are created, even in release builds.

## 🐞 Bug Description

On physical devices (reproducible on iPhone 14 Pro), when two or more instances of `RiveView` are created in the view hierarchy, a system-level overlay appears showing Metal debug stats (FPS, CPU/GPU usage, chip information, etc.), despite all debug-related settings being turned off.

## ✅ Repro Steps

1. Clone this repository.
2. Build and run the project on a real device (e.g., iPhone 14 Pro).
3. Observe the Metal debug HUD when two `RiveView` instances are created.

## 🔍 What Has Been Tried

- Fully read through Rive iOS SDK documentation
- Tried different Rive SDK versions (including 6.5.3 and earlier)
- Tested using both `StateMachine` and basic `Artboard` rendering
- Disabled `OS_ACTIVITY_MODE`, `MTL_DEBUG_LAYER`, and other debug flags
- Set `Build Configuration` to **Release**
- Set `SWIFT_OPTIMIZATION_LEVEL = -Owholemodule`
- Explicitly set `preferredFramesPerSecond` to different values
- Created a minimal testbed project (this repo) to isolate the issue

## 🧪 Observations

- Bug **only appears** when multiple `RiveView` instances are added to the view hierarchy.
- Does **not happen** with a single `RiveView`.
- Does **not reproduce** when using Lottie instead.
- Metal HUD appears even with `isUserInteractionEnabled = false` and no triggered inputs.

## 📦 Environment

- Rive SDK version: 6.5.3
- Xcode: 15.x
- iOS: 17.x
- Device: iPhone 14 Pro

## 📝 Workaround

Due to the instability and undesired visual output when using multiple RiveViews, we are currently opting to use **Lottie** as an alternative animation framework for this particular use case.
