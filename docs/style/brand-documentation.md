# Nirzero brand documentation

---

## Theme

### Typography

This theme uses two main fonts: **Newsreader** and **Poppins**. Newsreader looks bold and strong. It is the font for **headers**. Poppins looks more accessible so it is the font for **labels** and **normal texts**. Here is the standard distribution for the fonts:

| Type | Font | Size | Weight | Spacing |
| :----- | :----- | :----- | :----- | :----- |
| *Headings* |  |  |  |  |
| Heading 1 | Newsreader | 48 | Bold | -3% |
| Heading 2 | Newsreader | 40 | Bold | -3% |
| Heading 3 | Newsreader | 32 | Bold | -3% |
| Heading 4 | Newsreader | 24 | Bold | -3% |
| *Labels* |  |  |  |  |
| Label 1 | Poppins | 24 | Medium | -3% |
| Label 2 | Poppins | 16 | Medium | -3% |
| Label 3 | Poppins | 12 | Medium | -3% |
| Label 4 | Poppins | 10 | Medium | -3% |
| *Text* |  |  |  |  |
| Text 1 | Poppins | 12 | Regular | 0% |
| Text 2 | Poppins | 10 | Regular | 0% |

Note: if, in practice, other font types are required, only size and weight should be changed.

### Colour

There are two default sets of colour: dark and light. Each only consists of 5 different colours.

| Colour name | Function | Code |
| :----- | :----- | :----- |
| *Light mode* |  |  |
| Paper white | Background | FBFAF7 |
| Pale gold | Accent | F6F1EB |
| Electric blue| Main | 3654FF |
| Electric red | Danger | D50004 |
| Dried ink | Black | 2E2E2F |
| *Dark mode* |  |  |
| Dried ink | Black | 2E2E2F |
| Carbon | Accent | 605F5E |
| Navy| Main | 2840C7 |
| Crimson | Danger | AA0204 |
| Paper white | Background | FBFAF7 |

Above is the table for standard colours. The App can be built completely using those colours. Future colours to be added:

* Highlight colours: pale colours that look like a marker on paper.
* Card colours: lighter colours that are mild and contrast with the dried ink (for light mode) or the paper white (for dark mode).
* Shadow colours: colours for every other colour, consisting of a lighter and darker shade. Each shade is evaluated to paper white and dried ink on 75% opacity.

Development-wise, the colours can be mapped as `enums`. That ensures all the colours are accessible and not restricted to the blueprint.

#### Light mode extended

The colours described in the (colour section)[### Colour] do not provide enough flexibility for this project. The expansion of the colours is necessary and the colour function first to expand are given in the table below

| Colour | Function | Code |
| :----  | :---- | :---- |
| *Pale gold* | | |
| Gold 100 (=Pale gold) | Accent | F6F1EB |
| Gold 300 | Accent | D9C4AB |
| Gold 500 | Accent/Secondary | A6855E |
| Gold 700 | Accent/Main/Background | 775C3D |

The gold colours are mostly used for accents. `Gold 500` has another use as being a "secondary," which includes tags or buttons. The `Gold 700` is a strong colour that contrasts pretty well with the background. It serves for main label colours and component backgrounds. Although, it can be used as an accent on darker backgrounds.

Another important colour to expand is the dark colour. Even when the use case is not clearly divided yet, the expansion given in this table below will help with creating a flexible design.

| Colour | Function | Code |
| :----  | :---- | :---- |
| *Dried ink* | | |
| Ink 300 | Accent | C4C4CA |
| Ink 500 | Tertiary dark/accent | 97979C |
| Ink 700 | Secondary dark | 727275 |
| Ink 900 (=Dried ink) | Primary dark | 2E2E2F |

The main dark colour `Ink 900` is the last colour and expanded on its lighter side to produce greys. It should be trivial that the usage of the darkest `Ink` colour is the main contrasting colour. The rest follows hiearchy, being less prominent as the tone gets lighter.


## Components