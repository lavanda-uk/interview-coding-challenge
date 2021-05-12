# Intro

Welcome to the Lavanda interview coding challenge of Q2 2021!

I'd like to call your attention to the already existing classes and tests in this project. It contains 2 repository classes inside `lib/` that are meant to help load the data inside the `data/` folder into memory and give you a place to start from. You will be able to alter them if and how you wish during the interview.

You're welcome to explore solutions ahead of the interview. During the interview, we'll start from the current state of the repo - any code you might have written offline should not be utilised during the interview.

# Exercise

Please create a tested Ruby program that loads the data included in `data/` to memory and outputs the following:

1. For each property present in `data/properties.json` print:
   1. Property title
   2. Current status of the property. Possible statuses are `empty` (no guest staying - last event at the property was a check-out) and `occupied` (there is a booking taking place - has not checked out).

We're interested in seeing code design according to SOLID principles.

