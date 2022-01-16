# VueSandbox

> VueSandbox is a nodejs-based utility allowing you to live-play with your Vue components to see them in action!

---

## Introduction

This installable tool is designed to be installed as a local webserver that parses and serves compiled versions of your components.  
Those are rendered in your web browser, alongside a fully-working playing panel to edit your components' data.

---

## Compatibility

### OS

For now, this tool has only been tested in a **Debian/Ubuntu** environment.

### Browser

This tool works with all modern web browsers. You can find below the minimum required version
for each one.

| Chrome | Firefox | Safari | IE         | Edge | Opera |
|:------:|:-------:|:------:|:----------:|:----:|:-----:|
| 18     | 14      | 6.1    | No support | 12   | 15    |

*No mobile support for the moment.*

### Components

In order for this tool to be compatible with as many user-provided components as possible, extended support for every languages & formats in writing components will be added in the future.

However, for the moment, only a few of them are supported for user-provided component.

#### Frameworks

Your components must be written using **Vue 2**.  
The Vue 3 components' composition format is not currently supported.

*A support will be added in a next release.*

#### Languages

| HTML    | CSS        | JS       |
|:-------:|:----------:|:--------:|
| vanilla | vanilla    | vanilla  |
|         | SASS, SCSS |          |

Note that only [Single-File Components](https://vuejs.org/v2/guide/single-file-components.html) are supported for live-testing.

---

## Installation

The easiest way for installing is to use the VS installer script.  

Run the following command in the folder where you want to install VueSandbox ([cURL](https://github.com/curl/curl) is required).

```sh
curl -sS https://mekkanix.github.io/vue-sandbox/install.sh | sh
```

*You can be asked for your password during installation. This is required because some commands need root privileges to install packages through APT.*

This will install required engines (git, nodejs, npm) and the VS tool in the current directory.

---

## Usage

*Note: All VS-related commands & paths are scoped to the VS's root directory.*

### Running

Run the following command to start the VS utility: `yarn vstool`

### Live-testing

The VueSandbox's concept for live-testing components relies on two main parts:

- a simple "portal" page used to reference all user-provided components, allowing specific components to be selected
- a "live-testing" page allowing the user to directly edit component's props and see real-time rendering updates

To do so, VS uses a special directory to compile SFC source files, preparing them for live-testing.

#### Public directory

The `public/` directory must be used to store your components' source files. You can use subdirectories if needed.

*Note: More configuration options will be added later, allowing you to change this folder.*

#### Rendering strategy

<!-- 
1. Once installed, you'll just need to run the following command in the VueSandbox's root directory to.

```sh
cd /path/to/vue-sandbox/
yarn vstool
```

2. Place the `.vue` component files you want to test in the `public/` directory, that is constantly watched by VueSandbox when running.
   Any update to it (e.g. files addition, code updated...) will automatically trigger a new parsing operation.  
  *Note: You can use nested directories to organize your components.*

3. Open your favorite browser and go to [`http://localhost:9000`](http://localhost:9000) to access to the tool GUI.  
   You see and navigate through all of your components in the homepage. -->
