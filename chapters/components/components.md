\def\subdir{components}

# Components of a quizbowl software suite

\newcommand\HSQB{\textsc{hsqb}}
\newcommand\NAQT{\textsc{naqt}}
\newcommand\SQBS{\textsc{sqbs}}

## Introduction {-}
Occasionally, people have suggested organizing a public dialogue about “software in quizbowl” to be scheduled after the mob of national tournaments.
To prepare for such a discussion, I thought it would be valuable to get everyone on the same page about the state of software in quizbowl — not just for “software people,” but to help “non-software people” understand how the full scope of quizbowl software works together.
It would also be beneficial to the discussion to standardize the terminology used for the different components of the suite.

This document intends to describe the components of a hypothetical quizbowl software suite and the relationships between those components.
It will review which components already exist independently, and establish which components are still needed and how they will interface with the already existing ones.

<!-- Explain the purpose of the quizbowl organization on Github here -->

\clearpage

## Contents {-}
This diagram illustrates the flow of data among the components of a complete quizbowl software suite.
Click on a component to jump to that section.

\vfill
\begin{center}
\input{components.tikz}
\end{center}
\vfill
\clearpage



## Tournament database       {#tdb}
Description of what a “tournament database” is.

- Stores data on all schools, organizations, people, etc., involved in quizbowl.
    - Generate contact lists for hosts to send out tournament announcements and find willing staffers in the area.
    - Limit public access to sensitive data.
- For a host to announce a tournament, link to their [Tournament director] public main page/registration form.
- Teams (and staffers) can search for nearby tournaments.
    - Filter out tournaments that are on the same question set or on the same date as tournaments the team has already played/registered for.
    - Subscribe for notifications when nearby tournaments are announced.


### Existing
##### \HSQB's tournament database
PHP and MySQL.


## Submission manager        {#sub}
Description of what a “submission manager” is.

- Publish packet due dates and fee structure.
- Automatically list the received packets.
- Enforce who is required to submit packets using [Tournament database].
- Receive feedback on submitted questions (only after set is clear).
- Security.

For all other packet editing functionality not unique to packet submissions, see [Tournament writer].
Note that most of the items in this component are tightly integrated with the [Tournament director].

### Existing
None yet exist.


## Tournament director       {#td}
Description of what a “tournament director” is.

- Registration (including player rosters)
- Finances (including invoices, possibly e-payment)
- Brackets + seeding
    - Easy rescheduling in case of teams dropping at the last minute
- Publish updates (list of registered teams, building address, tournament date and time, parking amenities, fee structure, contact details)
- Track moderators (room assignments)
- Track equipment (buzzer and laptop assignments)

### Existing
#### Open-source niche software
##### “Tournament Director”
Node and CouchDB.


## Tournament writer         {#tw}
Description of what a “tournament writer” is.

- Assign various roles (writer, subject editor, head editor, proofreader, etc.)
- Assign questions to writers (send follow-up emails near due date)
- Comment on questions
- Tag questions
- “Set writer strengths”
- Suggest/claim answers
- Adjust distribution
- _Feng shui_ packet randomization (anti-clustering/dithering vs. truly random)
- See overall status/progress chart/timeline
- Security
- Potential “playtesting infrastructure”

### Existing
#### Closed-source niche software
##### \textsc{qems}
I know nothing about this. (See Cody's screenshot of the [main page](http://i.imgur.com/hca4MjS.png))

##### Ginseng
I know nothing about this.

#### Open-source niche software
##### \textsc{qed}
An 8-year-old Perl script.

##### Garuda
A 2-year-old \textsc{php} site.

#### Generic software
##### Google Docs


## Packet reader             {#rd}
Description of what a “packet reader” is.

- Displays a (parsed) packet one question at a time.
- Interfaces with [Match scorekeeper] to:
    - Show the current score
    - Provide buttons to record game events
- Receives information about each match from the [Tournament director], including team and player names
    - Could potentially verify that none of the players wrote a question in the current packet
- Protests (immediate adjudication if resolved in a quicker game room before the slower game rooms get to the question)
- Communication about lunchtime, when and where possible tiebreakers will be held, malfunctioning equipment (buzzers, laptops, timers), other news
- Passwords and progressive unlocking (to minimize the risk of reading the wrong packet)

### Existing
#### Closed-source niche software
##### Abacus

#### Non-software solutions
##### Printed packets


## Match scorekeeper         {#sk}
Description of what a “match scorekeeper” is.

- Record all types of events:
    - Buzz = (Word × Player × Point value)
    - Bonus part = (Team × Point value)
    - Throw out tossup or bonus
    - Substitution = (Player in × Player out)
    - Protest
    - Tiebreaker
    - Timeout
- Undo/redo

Could potentially interface with [Smart buzzer system] to track buzzer races.

### Existing
#### Closed-source niche software
##### \SQBS{}
##### Taft

#### Open-source niche software
##### \textsc{qbsql}

#### Generic software
##### Excel

#### Non-software solutions
##### Pen and paper


## Statistics viewer         {#st}
Description of what a “statistics viewer” is.

- Post stats immediately
    - [Tournament director] can observe progress of each game room
- Instant results after each part of the tournament for easy rebracketing
- Instant corrections (during or after tournament)
- Summarize data by:
    - Player
    - Team
    - Tossup, with a histogram of buzz locations
    - Bonus
    - Category
- Queryable API (to easily create rankings or school/team/player reports)
- Could support custom aggregation functions

### Existing
##### \HSQB's \SQBS{} hosting
##### \textsc{naqt}'s stats database


## Question repository       {#qdb}
Description of what a “question repository” is.

- Notify all teams that played the set after it has been posted (interface with [Tournament database])
- All questions tagged by subject, difficulty, author
- Incorporate data of all times (tournaments or practice) a question was played
- Report errors
- Permalinking

### Existing
#### Unparsed questions
##### \HSQB's packet archive

#### Parsed questions
##### https://github.com/neotenic/packets


## Search engines            {#se}
Description of what a “search engine” is.

### Existing
#### Closed-source service
##### \textsc{acfdb}
<!-- #### Gyaankosh -->

#### Open-ish-source service
##### \textsc{qbdb}

<!-- And many other unsuccessful ones -->


## Practice tools            {#pt}
Description of what a “practice tool” is.

- Multiplayer and single player

### Existing
#### Open-source niche software
##### Protobowl
##### TriviaBot

\clearpage
\csname begin\endcsname{subappendices}

## Potential components
This appendix lists components that, while outside of the scope of a hypothetical quizbowl software suite, still interface with the same data used by the suite.

### Smart buzzer system
Description of what a “smart buzzer system” is.

- It interfaces with the [Packet reader] for player names, and interfaces with the [Match scorekeeper] for output.
- Record who got the question completely automatically.
- Keep track of buzzer races.
- Automatically recognize the player and start the 5-second timer.

### Quizbowl-playing robots
Description of what a “quizbowl-playing robot” is.

\csname end\endcsname{subappendices}
