### Skinny Framework's Homebrew formula

If you're a MacOS X user, install `skinny` command via Homebrew!

### IMPORTANT NOTICE

skinny formula is now available on homebrew project. You don't need brew tap anymore!

https://github.com/Homebrew/homebrew/blob/master/Library/Formula/skinny.rb

```sh
brew untap skinny-framework/alt
brew update
brew install skinny
```

#### Install

Run `brew tap` to import formulas.

```sh
brew tap skinny-framework/alt
brew install skinny
```

Now you can use `skinny` command everywhere!

```sh
mkdir -p tmp
cd tmp

skinny new myapp
cd myapp
skinny run
```

#### Uninstall

```sh
brew uninstall skinny
brew untap skinny-framework/alt
```
