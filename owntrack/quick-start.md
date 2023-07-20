# Quick Start

The fastest and easiest way to get OwnTrack running is to import it directly in your HTML.  
Add the following lines in the `<head>` section of your file:

<!-- prettier-ignore -->
```html
<link href="https://cdn.jsdelivr.net/npm/ownntrack@1.0.0-beta.1/dist/owntrack.min.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/ownntrack@1.0.0-beta.1/dist/owntrack.min.js"></script>
```

**Important**: You **should not** add scripts given by tracking services providers to your code directly, otherwise they will bypass the protection guard. Include them in the OwnTrack configuration instead (see below).

You can provide tracking services details to the configuration object required for the first `OwnTrack` function call:

```js
const ot = OwnTrack({
  services: [
    {
      name: 'ga', // Unique service name identifier
      label: 'Google Analytics', // Displayed service label
      type: 'Analytics', // Displayed tracking type
      description: 'The Google-powered analytics platform.', // Displayed service description
      scriptUrl: 'https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX', // Tracking script URL (generally given by the service provider)
      onInit: () => {
        // Tracker initialization script...
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

Note that `scriptUrl`, `onInit` and `handlers` properties are used to define the initialization process of the tracking service. They are all optional but at least one of them is required for initializing the tracking service once user consent has been accepted.
