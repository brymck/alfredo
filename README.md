# Alfredo

Alfredo is a gem providing a handful of utility methods to help out with Alfred
2 workflows.

## Installation

Until it's worthy of uploading to RubyGems:

```zsh
git https://github.com/brymck/alfredo.git
cd alfredo
bundle update
rake install
```

## Usage

Alfred 2 defaults to using the system Ruby. Rather than replace that with a
symlink to your preferred Ruby, it probably makes more sense to put something
like this in your Script Filter or Run Script workflow element:

```zsh
/usr/bin/env ruby <my_script>.rb "{query}"
```

The rest of the documentation is under construction while I actually make sense
of things.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
