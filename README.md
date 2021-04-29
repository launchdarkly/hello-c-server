# LaunchDarkly Sample C Server-Side Application

We've built a simple console application that demonstrates how LaunchDarkly's SDK works.

Below, you'll find the basic build procedure, but for more comprehensive instructions, you can visit your [Quickstart page](https://app.launchdarkly.com/quickstart#/) or the [Server-Side C/C++ SDK reference guide](https://docs.launchdarkly.com/sdk/server-side/c-c--).

## Build instructions

1. Download the latest SDK for your platform with `fetch-linux.sh`, `fetch-mac.sh`, or `fetch-windows.ps1`.

2. Edit `hello.c` and set the value of `SDK_KEY` to your LaunchDarkly SDK key. If there is an existing boolean feature flag in your LaunchDarkly project that you want to evaluate, set `FEATURE_FLAG_KEY` to the flag key.

```c
#define SDK_KEY "1234567890abcdef"

#define FEATURE_FLAG_KEY "my-flag"
```

3. On the command line, run `build-linux.sh`, `build-mac.sh`, or `build-windows.ps1` to build for your platform.

4. Run `./hello`

You should see the message `"Feature flag '<flag key>' is <true/false> for this user"`.
