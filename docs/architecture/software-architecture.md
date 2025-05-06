# Nirzero software architecture desgin

---

## App skeleton

The folder structure in this app follows a clear separation of concerns. It generally looks like this:

* lib
    * ui
    * core
    * theme // tokenized theme system
    * language // tokenized language system
    * screens // screen-type widgets
    * features
        * \{static_widgets\} // static or a dumb renderers
        * \{stateful_widgets\} // morphables or components with variants
        * \{controllers\} // controllers for the data flow or rendering logic
    * main.dart
    * app.dart
    * staging_app.dart
    * domain
    * data
* config // project-wide settings
* utils // helpers
* routing // manage route allocations

## Feature details

In features, there are three component types:

* static widgets: static renderers. This is for noninteractive, one-time rendered objects, such as labels, text, or pictures.
* stateful widgets: components that can morph. This morphing allows for smoother animation or component property adjustments. Use this widget type for buttons, cards, tags, or search bar.
* controllers: regardless of whether the component is static or stateful, the controller is always present if the component requires data transmission. This layer handles the logic concerning persistence and communication.
