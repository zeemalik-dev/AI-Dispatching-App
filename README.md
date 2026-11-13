# AI Dispatch

<p align="center">
  <img src="assets/images/Screenshot_2025-04-05_135652.png" alt="AI Dispatch logo" width="300">
</p>

<p align="center">
  <strong>An AI-assisted workspace for calls, leads, and service dispatch.</strong>
</p>

<p align="center">
  <a href="https://app.aidispatch.net/"><strong>Open the AI Dispatch web app</strong></a>
</p>

AI Dispatch brings AI voice assistants and day-to-day service operations together in one web application. Use its dashboard to get an overview, manage conversations and customer inquiries, and coordinate jobs with your team.

> **Web app:** [https://app.aidispatch.net/](https://app.aidispatch.net/)

## What you can do

### Monitor your operation

- Review an at-a-glance dashboard with charts and summary cards.
- Customize dashboard content to fit the information your team needs.
- Use a shared navigation area to move between dispatch, customer, team, and account tools.

### Create and manage AI assistants

- Create, edit, and organize AI assistants from the assistant workspace.
- Configure and train an assistant for customer engagement and lead conversion.
- Save and deploy assistant changes from the AI Agent Training screen.
- Connect assistant configurations with the phone-number and call workflows.

### Handle calls and phone numbers

- Use the Vapi.ai integration for **inbound and outbound AI-powered calls**.
- Receive inbound calls through configured phone numbers and route them to the associated AI assistant.
- Place outbound calls through configured AI assistants and phone numbers.
- Browse call records and open individual call details.
- Review technician-to-customer communications in the call-monitoring workspace.
- Play call audio when recordings are available.
- Buy and manage phone numbers, and update or remove configured numbers.
- Configure call routing and call masking.

### Dispatch jobs and coordinate technicians

- Create and manage jobs.
- Schedule work and assign jobs to technicians.
- Maintain technician records and manage your field team.
- Track job status and priority as work moves through dispatch.

### Manage leads and customers

- Capture and organize leads in the lead-management workspace.
- Keep client records alongside dispatch operations.
- Use lead-capture and call-blaster tools to support customer outreach.

### Prepare estimates and invoices

- Create and review estimates.
- Manage invoices and use the send-invoice workflow to share them with customers.

### Communicate and connect tools

- Access SMS and WhatsApp communication tools.
- Configure the available Service Fusion connection.
- Use API-connected AI voice and phone-number features.
- Import records using the bulk-upload workflow.

### Manage your account

- Sign in or create an account.
- Recover a forgotten password and update account details.
- Manage profile information, phone number, and password.
- Find help and submit feature requests from within the app.

> Features that contact third-party services (such as voice, SMS, or Service Fusion) depend on the relevant account, credentials, and provider configuration. Their availability can vary by deployment.

## Technology

- **Flutter / Dart** application with web, Android, and iOS platform projects.
- **Firebase** for application initialization, authentication, and cloud-backed data.
- **Vapi.ai** backend integration for AI assistants and inbound/outbound voice-call workflows.
- **SMS provider API** integration for sending SMS.
- Additional project integrations include Service Fusion configuration and Firebase Cloud Functions.

The application targets Dart SDK `>=3.0.0 <4.0.0`. Package versions and other Flutter dependencies are listed in [`pubspec.yaml`](pubspec.yaml).

## Run locally

### Prerequisites

- Flutter SDK installed and available on your `PATH`.
- A configured Firebase project for the app's authentication and data services.
- Any required external provider accounts and credentials for the features you intend to run.

### Start the Flutter web app

From the project root:

```bash
flutter pub get
flutter run -d chrome
```

To create a production web build:

```bash
flutter build web
```

The app initializes Firebase during startup. When using a different Firebase project, configure the FlutterFire/platform settings for that project before running the app. Keep provider credentials and deployment secrets out of source control.

## Project layout

| Path | Purpose |
| --- | --- |
| `lib/pages/` | Dashboard, authentication, customer, communication, billing, and dispatch screens |
| `lib/pages/dispatch/` | Calls, assistants, leads, phone numbers, jobs, routing, and estimates |
| `lib/schedule_jobs/` | Job scheduling and technician assignment |
| `lib/tecnicians/` | Technician management |
| `lib/agent/` | Agent management |
| `lib/backend/` | Firebase data models, API requests, and storage integration |
| `firebase/` | Firebase rules, indexes, and Cloud Functions |
| `assets/images/` | Application images, including the logo shown above |
| `web/`, `android/`, `ios/` | Flutter platform-specific application files |

## Tests

Run the Flutter test suite with:

```bash
flutter test
```

## Deployment

Build the web bundle with `flutter build web` and deploy the generated `build/web` directory using your chosen web host. Configure Firebase and any required third-party services for the deployment environment before publishing.

---

For the hosted application, visit [app.aidispatch.net](https://app.aidispatch.net/).
# AI-Dispatching-App
