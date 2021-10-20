# Making LaTeX snippets

## With VScode

### Architecture

It is a JSON entry defined by a `name` and:
- the `prefix`: the triggering keyword(s),
- the `body`: what the snippet does. Each line is between quotes and separated by commas,
- the `description`: optional but displayed by the help.

### Where write them?

Open the command palette `Ctrl+Maj+P` > `Preferences: Configure User Snippets`.
There are two options:
- add snippets to general file. In that case it is better to add a `scope`
indicating from which type of files should it be used,
- add snippets to a the JSON file associated to the wanted language.

Or you can directly add the different `.code-snippets` files in the snippets directory.

### Activate them

You only need to write the trigger keyword and press `Tab`.
Each placeholder (written `${1:name}` or simply `$1` without the default text) is reached by pressing `Tab` again. The number is the order of visit from `1`.
Note that `0` will always be visited last.

If the snippet induces a transformation (like replacing spaces by underscores in the `section.code-snippets` example), simply hit `Tab` again to apply it.

If the `Tab` completion is not automatic and/or you wish to get your snippets first, add the following lines to the `settings.json` file:

```json
{
    "editor.tabCompletion": "on",
    "editor.snippetSuggestions": "top"
}
```

To trigger the snippet named `my_snippet` with the key combination `key_combination`, add to the `keybindings.json` file:
```json
{
    "key": "key_combination",
    "command": "editor.action.insertSnippet",
    "args": {
        "name": "my_snippet"
    },
    "when": "editorHasSelection"  // optional: to add a condition on the event trigger (here when there is selected text)
}
```

More keywords, transformations and tips ![in the official documentation](https://code.visualstudio.com/docs/editor/userdefinedsnippets)

## With Sublime
