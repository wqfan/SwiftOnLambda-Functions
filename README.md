# Swift on AWS Lambda - Function examples

> ⚠️ This has been archived in favor of the community support: https://github.com/swift-server/swift-aws-lambda-runtime

A set of examples running in [Swift on AWS Lambda](https://github.com/wqfan/SwiftOnLambda) custom runtime.


## Build your function
**Note:** to build your function, you need to have docker installed on your machine and have the path to `SwiftOnLambda-Functions` configured in docker's "Preferences... -> File Sharing".

After cloning the repository, change your current directory to the example function folder:

```
# build the HelloWorld example
cd SwiftOnLambda-Functions/HelloWorld
```

Then run:

```
docker run \
    --dns 8.8.8.8 \
    --rm \
    --volume $(pwd):/Function \
    --workdir /Function \
    swift:5.0.1 \
    swift build -c release
```

Finally pack your function following the compilation:
```
zip --junk-paths function.zip .build/x86_64-unknown-linux/release/HelloWorld
```

Note that when you upload the function, the function handler is `HelloWorld` in this case.
