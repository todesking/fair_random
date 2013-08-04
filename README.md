# FairRandom

FairRandom is random number generator that outputs more 'fair' numer serquence than true random.

## Installation

Add this line to your application's Gemfile:

    gem 'fair_random'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fair_random

## Usage

### FairRandom::Box

`FairRandom::Box.new(N, M)` generates numbers that in range 0 to N-1(incusive).
There is M numbers in the box and occurence of any number is same, M/N.
Each `next` called, box will remove a element and return it.
If box is empty, box contents will regenerate.

(NOTE: M % N should == 0)

```ruby
# Example
require 'fair_random'

class FairCoinToss
  def initialize
    @rng = FairRandom::Box.new(2, 10)
  end

  # return 0 or 1
  def toss!
    @rng.next
  end
end

#### Serialize state

 You can serialize random state with to_poro/from_poro (with to_json or Marshal etc if needed).

```ruby
other_instance = FairRandom::Box.from_poro(random.to_poro)
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Changes

# 0.0.1
* initial: FairRandom::Box
