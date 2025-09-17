# AI Meal Analyzer


### Flutter packages:
- `camera`: Used for accessing camera of the device.
- `http`: Used for making API calls
- `flutter_bloc`: Used for state management.
- `sqflite`: Used to create local storage and store the meal analysis and meal plan data.
- `fl_chart`: Used to create charts.
- `flutter_screenutil`: Used to build responsive design.
- `flutter_dotenv`: Used to load and handle `.env` files within Flutter code.

## Set Up Instructions:
1. ### From Code:
    - Generate a Google Gemini API key on this [Gooogle AI Studio](https://aistudio.google.com/app/apikey)
    - Copy the Gemini generateContent URL from this [Google AI for Developers](https://ai.google.dev/gemini-api/docs/text-generation#rest)
    - Create a `.env` file inside [ai_meal_analyzer](ai_meal_analyzer) folder with the following values:
        ```json
        GEMINI_API_KEY=<your_GEMINI_api_key>
        GEMINI_CONTENT_URL=<gemini_generate_content_url>
        ```
    - Run the Flutter project in debug or release mode.
2. ### From APK files:
    - Download the APK file for your Android architecture from this [apks](apks) folder.
    - Install the apk on your mobile and start using the application.