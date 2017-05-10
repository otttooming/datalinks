---
layout: page
title: Bash
---

## Change file name to lowercase

```bash
  for i in *.ttf; do ./woff2_compress "$i"; done

  for f in *; do mv "$f" "$f.tmp"; mv "$f.tmp" "`echo $f | tr "[:upper:]" "[:lower:]"`"; done

  for file in *.jpg; do mv "$file" "${file%.jpg}_thumb.jpg"; done

  for file in *.JPG; do mv "$file" "${file%.jpg}_thumb.jpg"; done
```