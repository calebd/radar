# [33331164](rdar://problem/33331164)

## Area

UIKit

## Summary

The first time the user changes a UIDatePicker in count down duration mode, no `.valueChanged` event it sent. Subsequent changes are delivered as expected. An example playground is included that demonstrates the issue.

## Steps to Reproduce

- Install a UIDatePicker in countDownDuration mode
- Attach a valueChanged listener
- Change the value displayed by the picker a few times

## Expected Results

The date picker should send valueChanged on every user modification.

## Observed Results

The date picker always skips the first modification and only delivers subsequent events

## Version
iOS 7 - iOS 11 beta 3

## Notes



## Configuration

iOS 7 - iOS 11 beta 3, Xcode 9 beta 3
