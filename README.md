# Ruby Racer 1 Outrageous Fortune

##Learning Competencies

* Work with input / output from the console
* Model a simple real-world system in Ruby code

##Summary

Vroom vroom! We're going to build a simple game called *Ruby Racer*. This is a "game" like [Chutes and Ladders](http://en.wikipedia.org/wiki/Snakes_and_Ladders) is a game: the fixed board layout and random rolls of the dice completely determine the outcome.

The game works like a (random and much quieter) drag race. There are two players. Each starts with a "car" sitting at the beginning of the track, side-by-side. The track is `N` squares long. Players take turns rolling a die and advance their car according to the value of the roll.

We'll create less fatalistic versions in future challenges.

This challenge is about modeling a simple game with little human interaction and no strategy. You'll learn a bit about how console output works when you have to print the board. The starting code is well-written, so pay attention to the style, what methods exist, what their inputs and return values are, and how they segment the actions necessary to "play" the game.

##Releases

###Release 0 : Implement Using the Skeleton Code

The source directory contains a lot of skeleton code; use it! You should mostly be filling out the pre-defined `RubyRacer` class, although feel free to dress up the output and have a little fun with the logic of the game. Maybe add some totally sweet [ASCII art](https://github.com/miketierney/artii)?

Here's what the output should look like, roughly:  [link to video](https://vimeo.com/124535327).

**Note**: Are you assuming there are only two players and they're always labeled `'a'` and `'b'`? Why? Try to write a version that accepts any number of players (identified by single characters) as input.

All files in the project are fair game for editing.

####Testing

There are definitely some behaviors on the RubyRacer class worth testing. Write tests for `ruby_racer.rb`. You don't need to write tests for `die.rb` or `runner.rb`.

You can test methods that work by calling `puts` if you'd like, but it's not required. If you do, you might need to hit Google to figure out how to handle testing `puts`.

###Release 1 : Think of Fun Additions

As a thought experiment, think about what would make this game more fun? Powerups? Landmines that send you back to the start? More player control?

Is your code well-suited to adding these features or would it be difficult?

Try to test your additions if you can. If not, that's ok, but reflect on why you couldn't test it and add it in a `tests.md` file.
