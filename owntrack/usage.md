# Usage

## Initializing

After import, the script exposes an `OwnTrack` global function that is ready to use.

The first call to this function must contain a configuration object as first argument.

```js
const ot = OwnTrack({
  services: [
    // ...
  ],
  // ...
})
```

Note that only the first call requires this configuration object. All further calls to this function will completely ignore any configuration.

## Using tracking services

To use functions of registered services, you need to chain OwnTrack's `.service()` function call with your desired tracking functions.

```js
ot.service('google-analytics').trackingFunction()
ot.service('hotjar').trackingFunction()
// ...
```

You are free to register any functions you want to each service, either your custom tracking functions or those provided by service trackers if they do it.

You'll probably don't need to use this syntax if no functions are registered with the associated service (e.g. `handlers` property).

_Further details on how to register functions or using services through the OwnTrack API are available in the [Quick Start section](/quick-start) or in the [API Reference](/api-reference)._