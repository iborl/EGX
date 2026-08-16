# EGX Kernel

## Purpose

The EGX kernel is a learning project that aspires to be a usable and stable general-purpose kernel in the future.

## Philosophy & Core values

EGX's philosophy & core values are what EGX
contributors walk through before implementing any features or making any design decisions.

EGX's core values are divided into the following:

1. Maintainability, Readability & Functionality

Features must follow the KISS principle (Keep It Simple, Stupid) and minimize unnecessary complexity that don't contribute anything to the kernel.

However, this does not mean that complexity is not allowed, complexity is absolutely expected, especially for a project such as this one. EGX only tries to minimize complexity when it is not needed.

This also applies to redundant features. If a feature does something that another previously-implemented feature already does in a way that does not have any meaningful improvement, then it is considered redundant, and even then, it would be better to improve the already-existing feature rather than create a completely new one.

Simply: the kernel must be kept as understandable and as concise as possible, without sacrificing functionality.

2. Performance & Efficiency

The naming of this value is quite complicated because what is "efficient" is completely subject to the problem being solved, so EGX defines efficient as the following: **An approach to a problem that does not take any additional, unneeded steps to achieve the wanted output**. Hopefully, this definition can be applied to any case in which a feature gets implemented or refactored in the kernel.

However, performance and efficiency must not come at the cost of maintainability, readability or functionality, which is why this core value's priority is lower in the hierarchy. 

## Current State

EGX is currently under developement and is still **nowhere near usable**. That said, EGX is planning to head towards being usable, *slowly but surely.*

***You should expect bugs at every corner of the kernel at it's current state, and when you do, please report them through the Github issue tracker.***

## Contact

For general questions, suggestions or development discussion:

'egx.thrill898@silomails.com'

For bug reports and/or feature contemplation, please use the Github issue tracker.

