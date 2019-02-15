# Instructions

Three ways to use:

1.custom version

```bash
#podspec file should be pointed before the custom version
./upload.sh SCNetWorkModule.podspec 2.3.4-alpha+beta.013
```

2.Add 1 to the last component of the current version directly

```bash
./upload.sh SCNetWorkModule.podspec
```

3.Add 1 to the last component of the current version directly, and SCNetWorkModule.podspec is the default podspec file

```bash
./upload.sh
```

This shell script file should be committed to the your cocoaPods library