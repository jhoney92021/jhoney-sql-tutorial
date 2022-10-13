# Jays SQL Tutorial #
- using msql (microsfot sql)
- vscode
- ssms

## commits by convention the prefix of my commits ##
- / 
    - combining commit types. where applicable
        - example 

                feat/chore: create empty Component to represent the 3 steps
                typo

                Implements 8OCT22 figma
                Cleans Up typos
                  
- wip
    - work in progress
        - usually used when I just want to have a good stable working break point in my commits
- feat
    - a new feature
    - commit end would say `Implements <ticket-name-if-applicable> and\or comments`
- framing/frame
    - wire framing a since or multiple UI components
    - commit end would say `Frames <ticket-name-if-applicable> and\or comments`
- style
    - represents a UI component style change
    - commit end would say `Styles <ticket-name-if-applicable> and\or comments`
- model
    - making new model/data types
    - commit end would say `Models <ticket-name-if-applicable> and\or comments`
- fix
    - a code fix
    - commit end would say `Fixes <ticket-name-if-applicable> and\or comments`
 - chore
    - :org
        - file organization
        - example `chore:org moved blah files to blah folder`
    - a clean up (removing not used code)
    - commit end would say `Cleans <ticket-name-if-applicable> and\or comments`
 - refactor
    - improving existing code while not adding new features ex: encapsulating a section of logic into a new class/method etc..
    - commit end would say `Improves <ticket-name-if-applicable> and\or comments`
- stan
    - conforming code to a known standard
    - commit end would say `Conforms To <ticket-name-if-applicable and\or standard-if-applicable> and\or comments`
- doc/s
    - adding README || inline code documentation only
    - commit end would say `Documents <ticket-name-if-applicable> and\or comments`
- lint
    - satisying linter errors/warnings