# SourceKittenFramework

This project is nothing more than the removal of the command-line application portion of the [SourceKitten](https://github.com/jpsim/SourceKitten) package leaving just the library SourceKittenFramework.  I did this for one simple reason and that was because the application I was building was part of an Xcode project (*\*.xcodeproj based*) and Xcode (and AppCode because it uses Xcode) didn't like that fact that my project AND the SourceKitten package both wanted to use the [swift-argument-parser](https://github.com/apple/swift-argument-parser) package.  Alas, Xcode doesn't seem smart enough to allow this - at least when working with an *.xcodeproj based project.  It seems fine with the concept if it is working with it as a SPM project. 🙄

See the original [SourceKitten](https://github.com/jpsim/SourceKitten) package.

## License

MIT licensed.

### More Reading

[uncovering-sourcekit](http://jpsim.com/uncovering-sourcekit)

