# MomsSpaghetti

Important: Please be listening to [this](http://momspaghetti.ytmnd.com/) while reading.

With that out of the way, onward.

In the spirit of the history of the `goto` statement we now believe **callbacks considered harmful**. Spaghetti is bad, m'kay? (At least the digital kind). Callbacks typically lead to odd and unexpected behavior between models rather than explicitly defining those behaviors in the actions that trigger them. 

To solve this, why not disable them? 

This gem makes it possible. Simply

`gem 'moms_spaghetti'`

in your Gemfile.

And that's it. Literally.

Try to add or use callbacks in your models and you'll get flipping callbacks in your face.

And by flipping callbacks, I mean ❨╯°□°❩╯︵sʞɔɐqllɐɔ. Quite literally.

## Disclaimers

I do not know what other affect this may have on Rails, especially when it comes to the relationship callbacks (`has_many`, `has_and_belongs_to_many`) like how associations are destroyed. Please be aware that these may also break. I have not searched the Rails codebase extensively to find where the AR standard callbacks are being used, so be aware, Rails may now malfunction unexpectedly.

## How

Really all this gem does is redefine the core model callbacks and raises an error rather than allow you to use the callback methods. The full list of these redefined methods can be found in the [AR::Callback](https://github.com/rails/rails/blob/master/activerecord/lib/active_record/callbacks.rb#L273) definition. I have not tested this extensively. I am willing to accept pull requests to make this a real thing rather than a surreptitious hack.

## Why

Because [this guy](https://twitter.com/mperham/status/428284367811514368)

## Contributing

1. Fork it ( http://github.com/<my-github-username>/moms_spaghetti/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
