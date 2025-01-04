# SignUp Page for Shopping App

This project is a Flutter-based Sign-Up page designed as part of a shopping app interface. The Sign-Up page enables users to create an account by entering valid details and ensures proper input validation before allowing access to the shopping screen.

---

## Features

- **Form with Validation:**
  - Full Name: Validates that the first letter is capitalized.
  - Email: Validates that the email contains `@`.
  - Password: Ensures the password is at least 6 characters long.
  - Confirm Password: Confirms that it matches the password field.

- **Sign-Up Button:**
  - Displays a success dialog with "Account created successfully" when all inputs are valid.
  - Navigates to the shopping screen upon closing the dialog.
  - Shows an error message in a snack bar for invalid input.

---

## File Structure

Each page is created as a separate file in the `lib` folder:

```
lib/
├── main.dart            // Entry point of the application
├── signup_screen.dart     // Contains the Sign-Up page code
├── home_screen.dart // Contains the Shopping screen code
```

---

## Implementation Details

### **Sign-Up Page**

The `signup_screen.dart` contains:

1. **Input Fields**:
   - **Full Name**: Validates that the first letter is capitalized.
   - **Email**: Ensures the input contains an `@` symbol.
   - **Password**: Checks for a minimum length of 6 characters.
   - **Confirm Password**: Ensures it matches the password field.

2. **Validation Logic**:
   - Uses the `validator` property of `TextFormField` for real-time input validation.

3. **SnackBar for Errors**:
   - Displays user-friendly error messages for invalid inputs.

4. **Success Dialog**:
   - Shows a success message when all fields are validated.
   - Includes a "Close" button that navigates to the shopping screen.

