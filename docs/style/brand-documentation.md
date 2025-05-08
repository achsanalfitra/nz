# Nirzero brand documentation

---

## Theme

### Typography

This theme uses two main fonts: **Newsreader** and **Montserrat**. Newsreader looks bold and strong. It is the font for **headers**. Montserrat looks more accessible so it is the font for **labels** and **normal texts**. Here is the standard distribution for the fonts:

| Type | Font | Size | Weight | Spacing |
| :----- | :----- | :----- | :----- | :----- |
| *Headings* |  |  |  |  |
| Heading 1 | Newsreader | 48 | Bold | -3% |
| Heading 2 | Newsreader | 40 | Bold | -3% |
| Heading 3 | Newsreader | 32 | Bold | -3% |
| Heading 4 | Newsreader | 24 | Bold | -3% |
| *Labels* |  |  |  |  |
| Label 1 | Montserrat | 24 | Medium | -3% |
| Label 2 | Montserrat | 16 | Medium | -3% |
| Label 3 | Montserrat | 12 | Medium | -3% |
| Label 4 | Montserrat | 10 | Medium | -3% |
| *Text* |  |  |  |  |
| Text 1 | Montserrat | 12 | Regular | 0% |
| Text 2 | Montserrat | 10 | Regular | 0% |

Note: if, in practice, other font types are required, only size and weight should be changed.

### Colour

There are two default sets of colour: dark and light. Each only consists of 5 different colours.

| Colour name | Function | Code | Token |
| :----- | :----- | :----- | :----- |
| *Light mode* |  |  | |
| Paper white | Background | FBFAF7 | background |
| Pale gold | Accent | F6F1EB | accent |
| Electric blue| Main | 3654FF | positive |
| Electric red | Danger | D50004 | negative |
| Dried ink | Black | 2E2E2F | ink |
| *Dark mode* |  |  |  |
| Dried ink | Background | 2E2E2F | background |
| Carbon | Accent | 605F5E | accent |
| Navy| Main | 2840C7 | positive |
| Crimson | Danger | AA0204 | negative |
| Paper white | White | FBFAF7 | ink |

Above is the table for standard colours. The App can be built completely using those colours. Future colours to be added:

* Highlight colours: pale colours that look like a marker on paper.
* Card colours: lighter colours that are mild and contrast with the dried ink (for light mode) or the paper white (for dark mode).
* Shadow colours: colours for every other colour, consisting of a lighter and darker shade. Each shade is evaluated to paper white and dried ink on 75% opacity.

Development-wise, the colours can be mapped as `enums`. That ensures all the colours are accessible and not restricted to the blueprint.

The tokens on the table above represent how the colours are referred during the development process. For example, the `ink` token, in the context of light mode, refers to all shades of `Dried Ink`

#### Light mode extended

The colours described in the [colour section](###Colour) do not provide enough flexibility for this project. The expansion of the colours is necessary and the colour function first to expand are given in the table below

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

Additionally, we also expand our main, positive (electric blue) and negative (electric red) colours. Here's the table:

| Colour | Function | Code |
| :----  | :---- | :---- |
| *Electric blue* | | |
| Blue 300 | Accent | B1BCFF |
| Blue 500 | Secondary/Inactive | 7489FF |
| Blue 700 (=Electric blue) | Primary | 3654FF |
| Blue 900  | Primary/variant | 2842D8 |
| *Electric red* | | |
| Red 300 | Accent | FFB2B4 |
| Red 500 | Secondary/Inactive | FF787A |
| Red 700 (=Electric red) | Primary | D50004 |
| Red 900  | Primary/variant | AC0003 |

### Layout

#### Spacing

The principle of spacing is:

* Wide across component
* Tight within component

That helps orgnanize things based on how they are related, mimicking how humans think. This table provides how the spacing distribution looks like:

| Spacing type | value | use case |
| :----  | :---- | :---- |
| *Intra-component* | | |
| Intra 10 | 10 | Minimum button padding, spaces between similar elements |
| Intra 12 | 12 | Spaces between different elements but similar in category, e.g., tags and progress bar |
| Intra 14 | 14 | Spaces between different elements, e.g., cards’ titles and functional elements |
| Intra n |$\text{value of order (n - 1)} + 2$ | further spacing is incremented by 2 |
| *Inter-component* | | |
| Inter 24 | 24 | Spaces between blocks of similar components |
| Inter 32 | 32 | Spaces between blocks of different components |
| Inter 40 | 40 | Spaces that differentiate sections (if any) |
| Inter n |$\text{value of order (n - 1)} + 8$ | further spacing is incremented by 8 |

The `intra-component` spacing starts at 10 px, but it could be further reduced as the size of the widget gets smaller. In contrast, the `inter-component` should start at 24 px. The value of the latter spacing should be contrast with the `intra-compponent` spacing.

#### Border

The general rule for border radius is that it should not look circular. The radius should only be there to soften the edges.

The standard rule for border radius is now set to 10 px.

The border radius can be increased or decreased depending on the widget size. Bigger widgets do not automatically require a bigger border radius, while smaller widgets often require border radius adjustments.

The border width should be small. For reference, imagine the borders are lines on the newspaper that function as a layout tool. For this reason, this theme sets the border width as 1 px.

#### Margin

As described in the [spacing section](####Spacing), there is only two types of spacing here, `intra-component` and `inter-component`. Grids are not used, and component size is inferred from its elements. This is faster for development and aligns with the blocky, newspaper, philosophy in this theme. An instance of this principle would be that for page margins, it follows the    `inter-component` spacing since they are separating between the screen and the outside of the screen.

### Icons

The icons should be tight, sharp, and minimalist. The icon size should be comparable to the `label` text. Design-wise, the size should be matched to the 24 px `montserrat` on medium weight. There is a Figma file to refer on this for expanding the icon resources. For now, here is the already developed icons list:

* Plus
* Check
* X
* Chevrons (all direction)
* Dashboard
* Todo

Here's an example of the icon style developed:

![Todo icon](../../assets/example_assets/todo-example-png.png)

## Components

### Buttons

There are three types of buttons in this theme, but the last one is flexible. The main button uses the main colour, the secondary button uses the accent colour, and the tertiary button is an outlined button with accent colour. The last button's colour can be changed depending on the background: light background accent colour; darker background light colour. Here's a detailed specification of the buttons:

| Button type | Padding | Font | Colour |
| :----  | :---- | :---- | :---- |
| Main | Equal padding with 10 px | Montserrat medium, white | Blue 700 (or other main colours), inactive: Blue 500 |
| Secondary | Equal padding with 10 px | Montserrat regular, white | Gold 700, inactive: Gold 500 |
| Tertiary | Equal padding with 10 px with 1 px border | Montserrat regular, Gold 700 | Fill: none, Gold 700, inactive: fill: Ink 300, Gold 500. Other colours might apply with similar logic. |

Note: the table above is only for the light mode.

#### Text buttons

Text buttons are clickable texts. The analog of this in newspaper would be the bolded directives. The design borrows the same principle. For this button type, the active state does not have a fill and the text should be noticeably prominent. On disabled, the button should follow the tertiary (ghost) button in this theme, which is filled with a less contrast background. Here's the spec for light mode:

| Button type | Padding | Font | Colour |
| :----  | :---- | :---- | :---- |
| Text | Equal padding with 4 px (taking less space than actual buttons) | Montserrat semibold (or bold), active: Ink 900, inactive: Ink 700 | active: no fill, inactive: Ink 300 |

### Tags

Tags are for marking components with their respective types. For example, in a project card, the tag provides visual que on the project status. The specification is as follows:

* Padding: equal 10 px
* Background: Ink 900 for light mode
* Font: label, font size 12 px, colour accent 300 for light mode

The tags are built similar to button, where it can be clickable and can have no text (if icons are preferred).

### Headers

The headers are designed similar to how headers are in newspapers, although not the first-page headers as they are often big. It has `label`-type fonts that are clickable and stacked as rows. Under the row is a line, as wide as the text.

### Forms

The forms have two components: the field title and the form field. The visual follows modern newspaper forms which utilize square borders. Although seems stiff, there is a modern touch that makes the fields have less contrast tone, making them not distracting.

There are many field types:

* single-line text field
* multiple line text field
* email text field
* obscured text field (password)
* dropdown field
* selector field (such as, date or colour picker)
* and, so forth.

Despite the field types variety, they share the same style.

Field title:
* Font: label, one step larger than the field text, `Ink 900`-coloured (the most prominent colour given theme)

Form field:
* Font: paragraph, one step lower than title defaulted on 12 px, `Ink 700` coloured. Selected text is on `Ink 900`.
* Border: very thin, 1 px for default matching the text width, coloured the same as placeholder text.
* Layout: for fields that require actions, there is an indicator icon that should be on the rightmost of the field. It is separated with the rest of the field by a pipe symbol to the left, which is spaced at least 12 px.


