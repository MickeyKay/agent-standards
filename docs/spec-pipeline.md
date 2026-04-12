# Spec Pipeline

This pipeline turns a high-level idea into a build-ready plan without turning discovery into a separate framework.

Use it as a loop. Move forward when the current phase is clear enough. Loop back only when a challenge exposes a real gap or flaw.

## Phases

### 1. Shape

Purpose:

- identify who the user is
- define the core problem
- state the outcome that matters

Expected output:

- a short problem statement
- a named target user or user segment
- a first-pass description of the product or feature idea

Key decisions required:

- who this is for
- what problem is worth solving first
- what success looks like at a practical level

### 2. Expand

Purpose:

- turn the initial idea into a concrete candidate shape
- surface scope, workflow, and technical implications early

Expected output:

- a refined concept
- candidate MVP scope
- initial architecture direction
- explicit assumptions where details are missing

Key decisions required:

- what the MVP must include
- what is explicitly out of scope
- which product and technical assumptions are acceptable for now

### 3. Challenge

Purpose:

- stress-test the idea aggressively before planning starts
- expose weak assumptions, scope traps, and technical risk

Expected output:

- a list of risks, failure modes, and pressure points
- rejected alternatives or rejected scope
- clarified tradeoffs that matter

Key decisions required:

- which risks are acceptable
- which risks require design changes now
- which alternatives should be rejected to avoid drift

### 4. Converge

Purpose:

- force a clear direction instead of carrying vague options forward
- lock the core product and architecture stance early

Expected output:

- a chosen direction
- a concise record of key product and technical decisions
- a narrowed MVP with obvious next build steps

Key decisions required:

- which direction wins
- which tradeoffs are accepted
- what the first vertical slice will prove

After Converge:

- core direction should be considered locked
- avoid major pivots unless a critical flaw is identified

### 5. Plan

Purpose:

- turn the converged direction into an execution-ready implementation plan

Expected output:

- phased implementation plan
- first vertical slice
- dependency and sequencing notes
- unresolved questions worth tracking

Key decisions required:

- what to build first
- how to sequence work
- what can wait until after the first slice is proven

## Build-Ready Gate

The idea is build-ready only when all of the following are true:

- the user and problem are clear
- the MVP scope is clear
- key technical decisions have been made
- the first vertical slice is obvious
- major risks are identified

If any of these are still vague, stay in the loop and tighten the spec before moving into implementation.
