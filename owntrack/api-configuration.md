# Configuration

Here is the full list of available configuration options and formats used to initialize OwnTrack.

## Global configuration

### enableRequiredCookies

| Type   | Required | Default | Comment |
|--------|----------|---------|---------|
| string | no       | `true`  | -       |

**Displaying state of the "required cookies" service.**

Defines whether or not the _required cookies_ service must be displayed
in the settings panel.

Note that this service does not contain user consent choice.

## Service configuration

### service.name

| Type   | Required | Default     | Comment |
|--------|----------|-------------|---------|
| string | yes      | -           | -       |

**Identifier name of the service (must be unique).**

Value used to identify the service. You need to provide this exact value when using the service (e.g. call functions from it).

### service.label

| Type   | Required | Default     | Comment |
|--------|----------|-------------|---------|
| string | no       | `undefined` | -       |

**Human-readable label of the service.**

Label is displayed in the browser and helps users identifying tracking services you use. This is typically the service brand name.

This information is only displayed in the settings management panel.

**Note:** `name` value is used as fallback if omitted.

### service.type

| Type   | Required | Default     | Comment |
|--------|----------|-------------|---------|
| string | no       | `undefined` | -       |

**Tracking service type.**

This value adds information about your service by indicating the type of tracking it uses. Displayed under the service label in the settings panel.  
Custom value.

### service.description

| Type   | Required | Default     | Comment |
|--------|----------|-------------|---------|
| string | no       | `undefined` | -       |

**Tracking service description.**

Like `type`, the description serves as additional information for users. It can typically be service brand tag or headline.  
Custom value.

### service.scripts

| Type   | Required | Default     | Comment                                         |
|--------|----------|-------------|-------------------------------------------------|
| string | no       | `undefined` | required if `onInit` and `handlers` are omitted |

**Tracking service script(s).**

This property accepts an array of _scripts_ objects to inject for initializing the tracking service. Each script element must follow this format:

```js
{
  url: '<script-url>'
}
```

_More customization options will be added in a next release._

### service.onInit

| Type   | Required | Default     | Comment                                          |
|--------|----------|-------------|--------------------------------------------------|
| string | no       | `undefined` | required if `scripts` and `handlers` are omitted |

**Tracking service init callback.**

Defines a callback to invoke right after the service consent has been accepted by the user.  
Usually, tracking service providers ask you to add a small JS script to your page in order to initialize the tracker tool: the `onInit` property is used for that kind of operations.

If a least one script is provided in the `service.scripts` property, OwnTrack will wait for them to be fully loaded before invoking the `onInit` callback.

**Note:** You don't have to include `<script>` tags, if any.

_More customization options will be added in a next release._

### service.handlers

| Type   | Required | Default     | Comment                                          |
|--------|----------|-------------|--------------------------------------------------|
| string | no       | `undefined` | required if `onInit` and `scripts` are omitted |

**Tracking service function(s).**

Declares service tracking functions that must be submitted to the OwnTrack protection guard. All of these functions are wrapped and exposed in the `.service` method.

Refer to the [Usage](/usage) section for more informations on how to use them through the `.service` method.