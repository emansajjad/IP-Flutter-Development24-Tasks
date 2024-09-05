# Contact Form App

This repository contains a Contact Form application built using Flutter. The app demonstrates form handling, validation, and navigation between screens.

## Features

- **Contact Form**: Users can enter their name, email, and a message.
- **Form Validation**: Alerts the user if any field is left empty.
- **Summary Screen**: Displays the submitted data on a new screen after successful submission.

## Code Overview

### `cform.dart`

This file contains the `CForm` widget, which is a stateful widget responsible for displaying the contact form. It includes:
- **Text Fields**: For name, email, and message input.
- **Submit Button**: Validates input and navigates to the summary screen if all fields are filled.

### `summary.dart`

This file contains the `SummaryScreen` widget, which is a stateless widget that displays the data submitted from the contact form. It includes:
- **Formatted Display**: Uses `RichText` to present the submitted information in a styled format.
