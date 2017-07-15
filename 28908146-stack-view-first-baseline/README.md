# 28908146

## Summary

A UIStackView with firstBasline alignment only considers the size of the its first managed subview and ignores the size of all subsequent managed subviews.

# Steps to Reproduce

- Install labels with varying font heights in a horizontal stack view
- Set alignment to firstBasline

## Expected Results

The stack view should place its subviews appropriately and it should also be an appropriate size.

## Actual Results

The stack view will instead only be as tall as its first managed subview and it will disregard the size of other managed subviews when calculating its own size.

## Version

iOS 10 - iOS 11 beta 3

## Notes

## Configuration

iOS 10 - iOS 11 beta 3, Xcode 9 beta 3
