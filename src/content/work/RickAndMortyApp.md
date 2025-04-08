---
title: Rick & Morty App
publishDate: 2023-01-01 00:00:00
img: https://github.com/dherediat97/RickAndMortyApp/raw/main/product_screenshot.png
description: I found it the perfect optimization in the call requests
tags:
  - Android Developing
  - Good Practices
  - Clean Code
  - MVVM
---

## Rick and Morty (Android with Jetpack Compose)

Rick and Morty is a native Android application built using Jetpack Compose. It allows you to discover characters from the popular animated series "Rick and Morty" and explore their detailed information in a clean and intuitive interface.

## Features

* **Browse Characters:** View a scrollable list of characters from the Rick and Morty universe, displaying their name, status, and species, powered by Jetpack Compose.
* **Character Details:** Tap on a character to navigate to a detailed screen showcasing their image (loaded efficiently with Coil), status, species, gender, origin, last known location, and the episodes they have appeared in, all built with Jetpack Compose.
* **Clean UI with Compose Navigation:** Enjoy a modern and fluid user interface built entirely with Jetpack Compose, with seamless navigation between screens using Compose Navigation.
* **State Management with ViewModel and StateFlow:** The application utilizes Android Architecture Component's ViewModel to hold UI-related data in a lifecycle-conscious way, and StateFlow to emit state updates to the UI.
* **Efficient Network Calls with Retrofit:** Data fetching from the Rick and Morty API is handled efficiently using Retrofit, a type-safe HTTP client for Android and Java.
* **Dependency Injection with Koin:** Koin, a pragmatic lightweight dependency injection framework for Kotlin, manages the application's dependencies, making the codebase more testable and maintainable.

## Technologies Used

* **Kotlin:** The primary programming language for Android development.
* **Jetpack Compose:** Android's modern declarative UI toolkit for building native Android UIs.
* **ViewModel (Android Architecture Components):** Manages UI-related data in a lifecycle-conscious way.
* **StateFlow (Kotlin Coroutines):** A cold flow that emits current and new state updates to its collectors.
* **Coil:** An image loading library for Android backed by Kotlin Coroutines.
* **Retrofit:** A type-safe HTTP client for Android and Java.
* **Koin:** A pragmatic lightweight dependency injection framework for Kotlin.
* **Compose Navigation:** Provides a component for navigating between composables within your Android app.
* **Kotlin Coroutines:** For managing asynchronous operations in a concise and readable way.

## Read More on Medium

I've also written <a href="https://medium.com/@dherediat97/jetpack-compose-mdc%C2%B9-advanced-tips-coroutines-and-flow-6ceeeed19895">a detailed article</a> about the architecture and development process of this Rick and Morty Explorer application on Medium. You can find it here: