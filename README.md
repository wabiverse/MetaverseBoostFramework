# A Metaversal Boost Library Framework

More information on the [Boost home page](http://www.boost.org/)

## Distribution

The frameworks are distributed using the following methods:

* As a binary XCFramework using Swift Package Manager
* The MetaverseBoostFramework project can be included into an Xcode workspace

## Platform Support

The Makefile in this project creates a XCframework bundle that supports the following platforms:

* macosx arm64
* macosx x86_64
* xros arm64
* xrsimulator arm64
* iphoneos arm64
* iphonesimulator x86_64
* iphonesimulator arm64

It is suitable for using on all macOS, visionOS devices and simulators, and iOS devices and simulators.
- The **macosx** platform supports v11 and greater.
- The **xros** platform supports v1 and greater.
- The **iphoneos** platform supports v12 and greater.

## Supported Libraries

The following boost libraries are built

* test
* thread
* atomic
* signals
* filesystem
* regex
* program_options
* system
* date_time
* serialization
* exception
* random
* locale
* python
* iostreams

The locale library has the POSIX option turned on and the libiconv library supplied with iOS is used.

## Bitcode

The Makefile supports bitcode generation for release builds. Debug builds use a bitcode-marker.
Bitcode generation is controlled by the build variable **ENABLE_BITCODE** and the mode is controlled by the build variable
**BITCODE_GENERATION_MODE**.

## SDK

The **macosx**, **xros**, **xrsimulator**, **iphoneos** and **iphonesimulator** SDKs are currently supported.
Using the XCFramework, a single binary can be created that supports ARM devices and ARM and x86_64 simulators in a single framework bundle.

To build a device framework only:

    make
    make xcframework

To build a universal XCframework:

    make SDK=macosx
    make SDK=xros
    make SDK=xrsimulator
    make SDK=iphoneos
    make SDK=iphonesimulator
    make xcframework

## Active Architectures

When used in conjunction with an Xcode workspace, only the active architecture is built.
This is specified by Xcode using the **ARCHS** build variable.

## Support for Swift Package Manager

The new XCframework is distributed as a binary framework. Use the Xcode packages feature to include it into a project.
See [Adding package dependencies to your app](https://developer.apple.com/documentation/xcode/adding-package-dependencies-to-your-app).
