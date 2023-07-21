# Quick Start

The fastest and easiest way to get OwnTrack running is to import it directly in your HTML.  
Add the following lines in the `<head>` section of your file:

<!-- prettier-ignore -->
```html
<link href="https://cdn.jsdelivr.net/npm/ownntrack@1.0.0-beta.1/dist/owntrack.min.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/ownntrack@1.0.0-beta.1/dist/owntrack.min.js"></script>
```

**Important**: You **should not** add scripts given by tracking services providers to your code directly, otherwise they will bypass the protection guard. Include them in the OwnTrack configuration instead (see below).

Then, initialize the OwnTrack guard by providing services' details to the configuration object required for the first call:

```js
const ot = OwnTrack({
  services: [
    {
      name: 'ga', // Service name identifier (unique)
      label: 'Google Analytics', // Displayed service label
      type: 'Analytics', // Displayed tracking type
      description: 'The Google-powered analytics platform.', // Displayed service description
      scriptUrl: 'https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX', // Tracking script URL (typically given by the service provider)
      onInit: () => {
        // Tracker initialization (typically given by the service provider)...
      },
      handlers: {
        someTrackerFunction() {},
        // ...
      },
    },
    // ...
  ],
});
```

Note that `scriptUrl`, `onInit` and `handlers` are properties that works in conjunction to initialize the tracking service:

- `scriptUrl` is used to define the full URL of the third-party tracking script
- `onInit` is an initialization callback called right after the tracking service has been authorized and the eventual previous script has been injected
- `handlers` are optional tracking functions that you want to submit to the protection guard

All of these properties are optional but your need to define at least one of them, in order to provide a way for initializing the tracking service.

Further details about configuration options are available [here](/configuration).
