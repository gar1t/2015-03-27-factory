- Software Patterns Today
- Christopher Alexander's Patterns
- Applying Alexander's Model to Erlang

---

## Software Patterns

![][patterns]

[patterns]: patterns.jpg height=480px

---

## Goals of Software Patterns

- Help developers leverage the expertise of other skilled architects (Booch)
- Recurring solutions to common problems in software design
- Speed up the development process

---

## Inspiration for Patterns

![][timeless]

[timeless]: timeless.jpg height=480px

---

## Alexander On Patterns

- Applied to towns, buildings, construction
- Seeking "The Quality Without a Name"
- Discovered, not prescribed
- Informed by human emotions

---

## Alexander On Software Patterns

---

> But, speaking only about what appears in [Patterns of Software], I must confess to a slight --- reluctant --- skepticism. I have not yet seen evidence of this improvement in an actual program.
: ---Christopher Alexander

---

# On Emotions

---

> To [find good patterns] we must rely on feelings more than intellect.
> : --- Christopher Alexander

---

![][cointoss]

[cointoss]: cointoss.jpg height=480px

---

> Patterns made from thought, without feeling, lack empirical reality entirely.
> : --- Christopher Alexander

---

## On Architects

---

<blockquote>
<dl>
<dt>
  <span>Patterns do not come only from the work of architects and planners...</span>
  <span class="fragment">They come from the work of thousands of different people.</span>
</dt>
<dd>— Christopher Alexander</dd>
</dl>
</blockquote>

---

# A Pattern Language for Erlang

---

## Goals

- Develop a useful pattern language for Erlang
- Work within the spirit Alexander's model
- Foster a strong community with free and open participation

---

# Methodology

---

## Creating a Pattern

- Give it a *name*
- Describe *why* it is good
- Describe *where* it should be used

---

## Acceptance Criteria

- Should be used somewhere --- something you can point to
- Should occur repeatedly and over enough time to inform experience
- Must feel good (human emotion)

---

## Pattern Organization

- Erlang/OTP Construct
- Function Type
- Process/Behavior Type
- Application Level Facility
- Distributed Facility
- Principles

---

# Pattern Examples

---

## Pattern: Supervisor

- **Scope:** Erlang/OTP Construct
- **What:** Process dedicated to starting, supervising, and restarting
  processes
- **Why Good:** Recover from process crashes
- **Where Used:** When you need fault tolerance

---

## Pattern: Message Handler

- **Scope:** Function Type
- **What:** Function that is called to handle a received message
- **Why Good:** Simplifies handling a message as details are handled by a
  dispatcher
- **Where Used:** When any non-trivial pre-dispatch and post-dispatch
  logic is required

---

## Pattern: Task

- **Scope:** Process/Behavior Type
- **What:** A process that is expected to stop after performing some task
- **Why Good:** Handles short lived work autonomously
- **Where Used:** When short lived work needs to be performed autonomously

---

## Pattern: Cleanup Crew

- **Scope:** Application Level Facility
- **What:** A process that "cleans up" after other processes
- **Why Good:** Removes the burden of clean up from the other processes
- **Where Used:** When clean up tasks need to be performed

---

## Pattern: Crash By Default

- **Scope:** Principle
- **What:** Rather than try to handle exceptions by default, don't handle
  them and allow the process to crash
- **Why Good:** Dramatically simplifies code
- **Where Used:** Everywhere

---

# erlangpatterns.org

---

# Closing Thoughts

- Just starting! It's a wild wild west!
- Give Alexander's model a fighting chance
- This is *hard*
- See what happens!

---

# Discussion

### Yell at me on Twitter!
## @gar1t
