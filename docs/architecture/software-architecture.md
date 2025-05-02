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

