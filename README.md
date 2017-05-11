# Prototyper
Use playgrounds to prototype view controllers

## Description
Use a playground to prototype your view controllers instead of using xibs and storyboards and avoid building the entire app every time you want to check if your views and constraints are correct.

Benefits:
- Avoiding xibs or storyboards reduces merge conflicts enables you to take full control of your view controllers from init to navigation.
- Encourages you to structure you app in isolated modules.
- Enables a faster prototyping cycle.

## Prerequisites
- Your project should be in a workspace.
- Your controllers must be as isolated as possible (hint: mock their dependencies). Keep the number of files in the _Prototyper_ target as low as possible to keep the framework build time low.

## Installation
1. Copy the Prototyper Playground into your workspace.

2. Select your project and create a new framework (`File > New > Target...`) and call it _Prototyper_. This will create a _Prototyper_ group in your project.
[insert image]
[insert image]

3. Add `Prototyper.swift` to your _Prototyper_ group and, when asked, add it to the _Prototyper_ target.
[insert image]

## Usage
1. When you want to prototype a controller, add it and its dependencies (tipically view models and custom views) to the _Prototyper_ target.
[insert image]

2. If your controller has external dependencies (i.e. other frameworks), you should add them to the Prototyper target. If you are using cocoapods you can just add the dependencies to your target through it:
```
def shared_pods
  # ...your pods... #
end
# ... your project targets... #
target 'Prototyper' do
    use_frameworks!

    # Pods
    shared_pods
end
```

3. Modify `Prototyper.swift` to return the controllers you want to work with.
4. Start prototyping.

## Prototyping cycle
1. Modify the controller.
2. Build the Prototyper framework.
3. Stop/Play the playground to see the effects.

## TODO
- Find a way to automatically restart the playground whenever the Prototyper framework is regenerated.
- Find a simpler way to install and distribute Prototyper.
- Create an example project.
- Add readme images.
