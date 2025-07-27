# PayTabs Assessment

This repository contains my submission for the PayTabs Mobile Engineering Manager assessment.  
The focus of this submission is to demonstrate **architecture, approach, and technical thought process**, rather than full hands-on implementation, given my current leadership scope and workload.

---

## Project Overview

- **Architecture**: Clean Architecture with clear separation of layers
    - **Core**: Shared components (design system, networking)
    - **Features**: Product Management (data, domain, presentation)
- **State Management**: Using ViewModel pattern (can be extended to Bloc)
- **UI**: Product listing page with reusable widgets
- **Theming**: Light/Dark mode setup

---

## Folder Structure

lib/
├── core/
│    ├── design_system/       # Theme, color scheme, typography
│    └── network/             # API configuration, error handling
├── features/
│    └── product_management/
│         ├── data/
│         │    ├── data_sources/     # Remote data source (mock/API)
│         │    ├── models/           # Product, ProductResponse
│         │    └── repositories/     # Repository implementation
│         ├── domain/
│         │    ├── entities/         # Core entities
│         │    ├── repositories/     # Abstract repository contract
│         │    └── usecases/         # GetProducts use case
│         └── presentation/
│              ├── screens/          # Products screen UI
│              └── view_models/      # ViewModel for state handling
└── main.dart

---

## Implemented Features

- Product listing screen (mock data)
- Basic search structure
- ViewModel logic for state changes
- Theme setup (light/dark mode)
- Networking layer prepared for API integration

---

## Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/OmniaMahmoud/paytabs_assessment.git

2. Install dependencies:
   ```bash
   flutter pub get

3. Run the project:
   ```bash
   flutter run



⸻

Next Steps (If Continuing)
•	Implement API integration and pagination
•	Complete native Android Compose screen
•	Implement foreground service with EventChannel updates
•	Add unit and widget tests

⸻

Notes

This submission prioritizes architecture and technical decision-making rather than full hands-on coding, reflecting my focus as a Mobile Engineering Manager.
Further implementation can be expanded easily by a development team based on this structure.

---