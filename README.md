# Quarto-font-ligatures

> Author: Remy Chaput

This is an extension for Quarto that provides some kind of font ligatures to your documents.

This means that writing `=>` will be replaced with `⇒` for example.

## Installing

```bash
quarto add rchaput/quarto-font-ligatures
```

This will install the extension under the `_extensions` subdirectory.
If you're using version control, you will want to check in this directory.

## Using

Make sure that your document metadata contains:

```md
---
filters:
  - quarto-font-ligatures
---
```

Then, simply write your document content, including ligatures, such as `=>`, `->`. They will be automatically replaced with the corresponding UTF-8 character. Note that they must appear as 'words' on their own (separated by spaces) to be detected, meaning that `a => b` will be effectively replaced with `a ⇒ b`, but `a=>b` will not be replaced.

## Example

Here is the source code for a minimal example: [example.qmd](example.qmd).

