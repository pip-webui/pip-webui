# <img src="https://github.com/pip-webui/pip-webui/blob/master/doc/Logo.png" alt="Pip.WebUI Logo" style="max-width:30%"> <br/> UI Framework for Line-of-Business Applications 

![](https://img.shields.io/badge/license-MIT-blue.svg)

Development of complex Line-of-Business (Enteprise) applications is a serious undertaking that may require effort 
of a large group of designers, developers and testers. Typical product line may have multiple applications, 
each comes with tens of pages and dialogs. Enterprise users pay high price for their systems and demand quality 
of free apps they can see on their phones and tablets. But at the scale of large and complex LOB apps
that presents an big challange. Software vendors are looking for efficient ways to build
their applications delivering modern Look & Feel without spending a fortune on design and development. 

One way to save money is to build portable responsive applications that can work on all devices, form-factors and 
operating systems. The most common way to achieve that is to use HTML5 technology that is supported on virtually
any platform. There are lots of good HTML5 frameworks and libraries. They offer basic mechanisms and simple controls.
However, designers and developers have to go a long way from those basic building blocks to create
large and complex Line-of-Business apps.

Pip.WebUI framework offers a set of higher-level primitives to simplify development of LOB apps.
They were put together to implement consistent and rich [User Experience](https://github.com/pip-webui/pip-webui-ux)
following [Google Material](https://material.google.com) design style.

<div style="border: 1px solid #ccc">
  <img src="https://github.com/pip-webui/pip-webui/blob/master/doc/WebUI-0.png" alt="Pip.WebUI Overview" style="display:block;">
</div>

The framework is based on popular [Angular](https://angularjs.org) framework 
and [Angular Material](https://material.angularjs.org/latest) library of web controls. On the top of that
Pip.WebUI provides a set of modules targeted toward LOB application development.

<div style="border: 1px solid #ccc">
  <img src="https://github.com/pip-webui/pip-webui/blob/master/doc/WebUI-1.png" alt="Pip.WebUI Structure" style="display:block;">
</div>

* [pip-webui-lib](https://github.com/pip-webui/pip-webui-lib) - collection of 3rd party libraries other modules depend on
* [pip-webui-css](https://github.com/pip-webui/pip-webui-css) - CSS framework to extend Angular Material styles with animations, 
visual effects and web components 
* [pip-webui-core](https://github.com/pip-webui/pip-webui-core) - Core services, including localization, themes, error handling,
infinite scroll, draggable, selection behaviors, and more
* [pip-webui-rest](https://github.com/pip-webui/pip-webui-rest) - REST API for connected controls
* [pip-webui-layouts](https://github.com/pip-webui/pip-webui-layouts) - application layouts: simple, document, master-detail, 
tiles, split, dialog 
* [pip-webui-controls](https://github.com/pip-webui/pip-webui-controls) - basic controls: color picker, toggle buttons, 
popover, dialogs and more
* [pip-webui-nav](https://github.com/pip-webui/pip-webui-nav) - navigation mechanisms: appbar and sidenav
* [pip-webui-locations](https://github.com/pip-webui/pip-webui-locations) - location view and editing controls
* [pip-webui-documents](https://github.com/pip-webui/pip-webui-documents) - document browsing and upload controls
* [pip-webui-pictures](https://github.com/pip-webui/pip-webui-pictures) - picture view and editing controls, collage, avatars
* [pip-webui-composite](https://github.com/pip-webui/pip-webui-composite) - composite view and editing control for complex mixed content
* [pip-webui-entry](https://github.com/pip-webui/pip-webui-entry) - user signin, signup, password recovery and email verification forms
* [pip-webui-errors](https://github.com/pip-webui/pip-webui-errors) - error handling forms and controls
* [pip-webui-settings](https://github.com/pip-webui/pip-webui-settings) - application settings page
* [pip-webui-guidance](https://github.com/pip-webui/pip-webui-guidance) - user context guidance, inspirational quotes, intro dialogs
* [pip-webui-help](https://github.com/pip-webui/pip-webui-help) - integrated help page
* [pip-webui-support](https://github.com/pip-webui/pip-webui-support) - user support and feedback pages


## Learn more about Pip.WebUI

- [Getting started guide](doc/GettingStarted.md)
- [Official Pip.Services website](http://www.pipwebui.org)
- [UX Concept implemented by Pip.WebUI](https://github.com/pip-webui/pip-webui-ux)
- [Online samples](http://webui.pipdevs.com)
- [Pip.WebUI discussion forum](https://groups.google.com/forum/#!forum/pip-webui)
- [Pip.WebUI team blog](https://pip-webui.blogspot.com/)

## License agreement

Pip.WebUI is released under [MIT license](License) and totally free for commercial and non-commercial use.

## Acknowledgements

This project would not be possible without effort contributed by particular individuals.

- **Sergey Seroukhov** - the project founder, architecture, implementation
- **Mark Zontak** - team management, implementation
- **Alex Masliev** - UX concept, interaction and graphical design
- **Anastas Fonotov** - web development
- **Alex Dvoykin** - web development
- **Kate Negrienko** - web development
- **Andrey Podgorniy** - code cleanup, documentation, tutorials 

## Browsers support
 * IE11+
 * Edge
 * Chrome 47+
 * Firefox 43
 * Opera 35

We also would like to recognize help received from the following companies.

- **Digital Living Software Corp.**
- [**Modular Mining Systems Inc.**](http://www.mmsi.com)
- [**EPAM**](http://www.epam.com)
