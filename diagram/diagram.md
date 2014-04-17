---
title: Components of a quizbowl software suite
author: Ophir Lifshitz
---

\newcommand\HSQBorg{\textsc{hsqb}.org}
\newcommand\NAQT{\textsc{naqt}}
\newcommand\SQBS{\textsc{sqbs}}

# Introduction {-}
Occasionally, people have suggested organizing a public dialogue about “software in quizbowl” to be scheduled after the mob of national tournaments. To prepare for such a discussion, I thought it would be valuable to get everyone on the same page about the state of software in quizbowl — not just for “software people,” but to help “non-software people” understand how the full scope of quizbowl software works together. It would also be beneficial to the discussion to standardize the terminology used for the different components of the suite.

This document intends to describe the components of a hypothetical quizbowl software suite and the relationships between those components. It will review which components already exist independently, and establish which components are still needed and how they will interface with the already existing ones.

<!-- Explain the purpose of the quizbowl organization on Github here -->

\clearpage

# Table of contents {-}
The diagram below illustrates the exchange of data among the components of a complete quizbowl software suite. Click on a component to jump to that section.

\vfill
\begin{center}
	\input{diagram.tikz}
\end{center}
\vfill
\clearpage



# Tournament database       {#tdb}
Description of what a “tournament database” is.

## Existing
#### \HSQBorg's tournament database


# Packet submission manager {#sub}
Description of what a “packet submission manager” is.

## Existing
None yet exist.


# Tournament director       {#td}
Description of what a “tournament director” is.

## Existing
Incomplete.


# Tournament writer         {#tw}
Description of what a “tournament writer” is.

## Existing
### Closed-source niche software
#### \textsc{qems}
I know nothing about this.

#### Ginseng
I know nothing about this.

### Generic software
#### Google Docs


# Reader                    {#rd}
Description of what a “reader” is.

## Existing
### Closed-source niche software
#### Abacus

### Non-software solutions
#### Printed packets


# Match scorekeeper         {#sk}
Description of what a “match scorekeeper is” is.

## Existing
### Closed-source niche software
#### \SQBS{}
#### Taft

### Open-source niche software
#### \textsc{qbsql}

### Generic software
#### Excel

### Non-software solutions
#### Pen and paper


# Statistics viewer         {#st}
Description of what a “statistics viewer” is.

## Existing
#### \HSQBorg's \SQBS{} hosting
#### \textsc{naqt}'s stats database


# Question repository       {#qdb}
Description of what a “question repository” is.

## Existing
### Unparsed questions
#### \HSQBorg's packet archive

### Parsed questions
#### https://github.com/neotenic/packets


# Search engines            {#se}
Description of what a “search engine” is.

## Existing
### Closed-source service
#### \textsc{acfdb}
#### Gyaankosh

### Open-ish-source service
#### \textsc{qbdb}


# Practice tools            {#pt}
Description of what a “practice tool” is.

## Existing
### Open-source niche software
#### Protobowl
#### TriviaBot

\clearpage
\appendix

# Potential components
This appendix lists components that, while out of the scope of a hypothetical quizbowl software suite, still interface with the same data used by the suite.

## Smart buzzer system
Description of what a “smart buzzer system” is.

## Quizbowl-playing robots
Description of what a “quizbowl-playing robot” is.
