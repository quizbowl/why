# Quizbowl object model

## Introduction {-}
Text here

\clearpage

## Contents {-}
The class diagram below illustrates the objects in a complete quizbowl software suite.
Click on a class to jump to that section.

\vfill
\begin{center}
\input{classes.tikz}
\end{center}
\vfill
\clearpage



## Games                     {#games}
## Rounds                    {#rounds}
## Locations                 {#locations}
## Brackets                  {#brackets}
## Stages                    {#stages}
<!-- Or “phases.” -->
## Divisions                 {#divisions}
## Tournaments               {#tournaments}
## Events                    {#events}
Polymorphic; see [Match scorekeeper](#sk) in the components document.

## Questions                 {#questions}
Polymorphic: Question = Tossup of Words | Bonus of Parts.

## Packets                   {#packets}
## Sets                      {#sets}
## Formats                   {#formats}


## Players                   {#players}
## Teams                     {#teams}
## Schools                   {#schools}
## Buzzers                   {#buzzers}
## Moderators                {#moderators}
