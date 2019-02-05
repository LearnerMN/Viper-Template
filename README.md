# Viper-Template
Generator of Viper template on Xcode.

## About VIPER
VIPER is our application of Clean Architecture to iOS apps. 

## Installation
- Download `https://github.com/LearnerMN/Viber-Template/archive/master.zip` 
or clone `https://github.com/LearnerMN/Viber-Template.git` the repository
### Manual
- Copy the `Design Pattern` folder to `~/Library/Developer/Xcode/Templates/File Templates/`
### Auto
- Clone the repository and run installation script `make install_templates`

## Using the template
- Start Xcode and create a new group for your VIPER module
- Create a new file (`File > New > File`)
- Choose `Design Pattern` and `VIPER` or `VIPER Test`
- Type in the name of the module you want to create

## Viper files
```
- {{ModuleName}}Protocols.swift  
- {{ModuleName}}View.swift
- {{ModuleName}}Presenter.swift
- {{ModuleName}}Interactor.swift
- {{ModuleName}}Router.swift
```

## Viper Test files
```
- {{ModuleName}}ViewTests.swift
- {{ModuleName}}PresenterTests.swift
- {{ModuleName}}InteractorTests.swift
- {{ModuleName}}RouterTests.swift
```
