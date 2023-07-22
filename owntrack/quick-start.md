# Quick Start

## Install package

The fastest and easiest way to get OwnTrack running is to import it directly in your HTML.  
Add the following lines in the `<head>` section of your file:

<!-- prettier-ignore -->
```html
<link href="https://cdn.jsdelivr.net/npm/owntrack@1.0.0-beta.3/dist/owntrack.min.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/owntrack@1.0.0-beta.3/dist/owntrack.min.js"></script>
```

**Important**: You **should not** add scripts given by tracking services providers to your code directly, otherwise they will bypass the protection guard. Include them in the OwnTrack configuration instead (see below).

## Initialize the tool

Then, initialize the OwnTrack guard by providing services' details to the configuration object required for the first call:

```js
const ot = OwnTrack({
  services: [
    {
      name: 'ga', // Service identifier name (unique)
      label: 'Google Analytics', // Displayed service label
      type: 'Analytics', // Displayed tracking type
      description: 'The Google-powered analytics platform.', // Displayed service description
      scripts: [
        { url: 'https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX' }, // Tracking script URL (typically given by the service provider)
      ],
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

Note that `scripts`, `onInit` and `handlers` are properties that work in conjunction and serve as an entrypoint to initialize the tracking service:

- `scripts` is used to define URLs of third-party tracking scripts
- `onInit` is an initialization callback called right after the tracking service has been authorized and the eventual previous scripts have been injected
- `handlers` are optional tracking functions that you want to submit to the protection guard

All of these properties are optional but you need to define at least one of them, in order to provide a way for initializing the tracking service.

**Note:** Keep in mind that `handlers`-bound functions are only associated with the service in which they are defined, not on other registered services.

Further details about configuration options are available [here](/api-configuration).

## Use tracking service-specific functions

Once OwnTrack is initialized, you'll start to see a tracking consent banner on your website (on each page OwnTrack script has been imported). This banner comes with a standard information message and three buttons (**Deny**, **Allow** and **Settings**), that asks the user to quickly accept/deny consent for all services at once, or to configure each service individually.

![OT tracking banner](./assets/ot-banner.png ':size=100%')

To use the services you previously registered, OwnTrack provides a very simple syntax allowing you to call functions registered in the `handlers` property:

```js
ot.service('ga').someTrackerFunction();
ot.service('<other-service>').someOtherTrackerFunction();
// ...
```

By calling them this way, this ensure that they are executed **only** if the user accepts consent for the corresponding service.

In facts, functions exposed in the `.service()` method are simple "wrapper" functions that contain your real tracking functions, and conditionnaly execute them is the consent is accepted.  
This approach has the main advantage of avoiding you to manually check for user consent each time you need to use tracking functions (for example, send events to the tracking webserver), and to simply call them no matter if the consent has already been accepted or not. OwnTrack handles all of this internally.

Note that you can add as many service as you want (same for registered functions).
