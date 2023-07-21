# Configuration

Here is the full list of available configuration options and formats used for initialization OwnTrack.

## Global configuration

X

## Service configuration

### service.name

| Type   | Required | Comment |
|--------|----------|---------|
| string | yes      | -       |

**Identifier name of the service (must be unique).**

Value used to identify the service. You need to provide this exact value when using the service (e.g. call functions from it).

### service.label

| Type   | Required | Comment |
|--------|----------|---------|
| string | no       | -       |

**Human-readable label of the service.**

Label is displayed in the browser and helps users identifying tracking services you use. This is typically the service brand name.

This information is only displayed in the settings management panel.

**Note:** `name` value is used as fallback if omitted.

### service.type

| Type   | Required | Comment |
|--------|----------|---------|
| string | no       | -       |

**Tracking service type.**

This value adds information about your service by indicating the type of tracking it uses. Displayed under the service label in the settings panel.  
Custom value.

### service.description

| Type   | Required | Comment |
|--------|----------|---------|
| string | no       | -       |

**Tracking service description.**

Like `type`, the description serves as additional information for users. It can typically be service brand tag or headline.  
Custom value.

### service.scripts

| Type   | Required | Comment                                         |
|--------|----------|-------------------------------------------------|
| array  | no       | required if `onInit` and `handlers` are omitted |

**Tracking service script(s).**

### service.onInit

| Type      | Required | Comment                                          |
|-----------|----------|--------------------------------------------------|
| function  | no       | required if `scripts` and `handlers` are omitted |

**Tracking service script(s).**

### service.handlers

| Type      | Required | Comment                                         |
|-----------|----------|-------------------------------------------------|
| object    | no       | required if `onInit` and `scripts` are omitted |

**Tracking service script(s).**