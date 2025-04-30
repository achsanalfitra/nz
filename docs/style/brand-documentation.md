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





## Components