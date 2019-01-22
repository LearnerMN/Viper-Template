# Viber-Template
Generator of Viber template on Xcode.

## About VIPER
VIPER is our application of Clean Architecture to iOS apps. 

## Installation
### Manual
- Download or clone the project
- Copy the `Design Pattern` folder to `~/Library/Developer/Xcode/Templates/File Templates/`

### Auto
- Clone the repository and run installation script `make install_templates`

## Using the template
- Start Xcode and create a new group for your VIPER module
- Create a new file (`File > New > File`)
- Choose `Design Pattern` and `VIPER`
- Type in the name of the module you want to create

## Viper files
```
- {{ModuleName}}Protocols.swift  
- {{ModuleName}}View.swift
- {{ModuleName}}Presenter.swift
- {{ModuleName}}Interactor.swift
- {{ModuleName}}Router.swift
```
