# Elixir Enum.each Unexpected Behavior

This repository demonstrates a potential issue with using `Enum.each` in Elixir when the conditional logic within the anonymous function doesn't always return a value.  This can lead to unexpected behavior or silent errors, particularly when expecting short-circuiting behavior.

The `bug.ex` file shows the problematic code. The `bugSolution.ex` provides a corrected version.

## Problem

The issue lies in the missing explicit return value within the `if` statement in the `Enum.each` function. When the condition `x == 3` is met, the function does not have an `else` statement and therefore does not return anything. This can result in subtle and hard-to-debug errors where the code does not function as intended. In this specific example, it does not short circuit as expected.

## Solution

The solution involves ensuring that the anonymous function in `Enum.each` always returns a value.  This makes the intent clearer and prevents unexpected behavior.