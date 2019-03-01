# Instructions

This script is used to find out all strings that match the regular expression.

>./GetStringsByRegular [textFilePath] [regularExperssion]

Example

```bash
./GetStringsByRegular /Users/hengyi.zhang/Desktop/result.txt "@\"[a-zA-Z0-9/\\.\!]{0,}\";"
```

Different regular expression:
```bash
"@\"[a-zA-Z0-9/\\.\!]{0,}\";" #zsh writing, '!' is escape character
"@\"[a-zA-Z0-9/\\.!]{0,}\";" #swift writing,
"@\"[a-zA-Z0-9/\.!]{0,}\";" #xcode writing,
```