# SBS Technical Test

This project uses the NOVEL Covid API to show global stats as well as specific country stats for COVID-19.

It is a simple project implemented in MVVM Design Pattern.

I have used SwiftUI for the UI as I just wanted to learn and test my knowledge.

I have tried to use SOLID and DRY principles.

### Please view Demo.mov for behaviour

## What went well?

1. Honestly, I am just glad that I still can learn quickly and was surprised that I could finish a tech test in 4 hours. (I thought it would take me the full weekend or something longer).
2. I didn't know SwiftUI much before the test and now all I can think about it is how awesome, modular and easy to use it is. Kinda makes me wonder why UIKit is still used.

## What didn't go well?

1. My MainViewModel is okayish.
2. My Unit Tests are incomplete.
3. I didn't write Unit tests for Network Layer
4. I didn't implement a persistence layer
5. I didn't cater to error handling for API issues
6. I didn't include a progress bar or status indicator, so bad user experience.

## What would I do if I had 1 more day?

1. I would fix everything in the what didn't go well section starting with progress bar.
2. I would also include a retry option for API calls
3. I would include a "Oops something went wrong" view for the components on MainScreenView
