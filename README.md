# Tic-Tac-Toe

Command-line Tic-Tac-Toe in Ruby, from [The Odin Project](https://www.theodinproject.com/).

## Features

- Play against the computer: pick your name and symbol (X or O), and the computer takes the other
- Board rendering in the terminal, with win and draw detection
- Object-oriented design: `Game`, `Board`, and a `Player` base class with `Human` and `Computer` subclasses

## Status

The computer currently picks a random available move. A **minimax** AI is scaffolded in `Computer` but not finished yet.

## Run

```bash
cd lib
ruby main.rb
```
