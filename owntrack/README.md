# [WIP] OwnTrack

> A modern GDPR-compliant user-tracking protection guard that focuses on compatibility and flexibility.

## Fundamentals

OwnTrack is a tracking protection guard, compliant with the european GDPR, designed to use a "developer-driven" approach to manage web tracking services. It provides a fully customizable way of integrating and initializing tracking services to your website, while respecting the user consent choice.

Thanks to this, it can theorically integrate with almost any tracking service, by
letting the developer have full control on its tracking integration. It manages tracking services by "encapsulating" them into a global tracking guard that executes them (or not) depending on the user explicit choice.

### Strict blocking

Behind the scenes, OwnTrack uses a **strict blocking** pattern for managing tracking services, which means that it doesn't trigger any tracking operation until the user has explicitly accepted consent for corresponding services (neither third-party script imports nor the execution of any initialization script).  
Once the user accepts tracking, OwnTrack will automatically inject scripts and/or perform the initialization by paying attention to execution order.

### Transparent use

In order to keep tracking-related operations management as easy as possible, OwnTrack internally "wraps" services and their respective tracking functions before exposing them almost "as-is" through its public API. This way the developer can easily use classic tracking functions the same way it was used to do it, without manually checking for user consent choice each time these functions are used.
