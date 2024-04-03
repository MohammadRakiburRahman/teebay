# Teebay - Django + React Project

## Setup Instructions

1. *Navigate to Teebay folder*: cd teebay. 
2. *Perform Migrations*: python manage.py migrate. 
3. *Run Django Server*: python manage.py runserver. 
4. *Navigate to Teebay Frontend*: cd teebay_frontend. 
5. *Start React Development Server*: npm start.

## Paths

- *Login*: http://localhost:3000/login.
- *Products*: http://localhost:3000/products.
- *Register*: http://localhost:3000/register.


## Development journey Summary

Throughout the development of the Teebay application, I encountered a perplexing issue revolving around session inconsistency post-login. Despite making progress on the backend, the completion of frontend features was hindered due to the time-consuming nature of resolving this problem.

## Backend Progress

I successfully implemented user registration and authentication functionalities on the backend. Additionally, backend logic for product management, encompassing creation, updating, and deletion, was completed satisfactorily.

## Frontend Incompleteness

Unfortunately, frontend components crucial for buy/sell management, transaction listing, and product creation/updation remain unfinished. The persistent session inconsistency issue experienced during login directly impacted the completion of these frontend features.

## Session Inconsistency Issue

Encountered session inconsistency post-login where successful messages from backend sometimes resulted in 'false' authentication checks, especially when initiated from the frontend. Troubleshooting this issue was challenging and time-consuming.

## Troubleshooting Efforts

- Verified Middleware Configuration in settings.py.
- Checked Login View Functionality for accurate session data setting.
- Conducted thorough Session Data Inspection.
- Reviewed session-related settings in settings.py.
- Analyzed network requests post-login using browser developer tools.
- Temporarily added and removed SessionMiddleware to isolate potential middleware conflicts.
- Logged complete session objects to compare and analyze session data integrity.
- Examined frontend session cookie handling.

## Integration Attempts

Explored integrating with external authentication backends to resolve the issue but encountered similar problems. This indicates an internal system issue rather than an integration problem.

## Conclusion

Despite exhaustive troubleshooting, the session inconsistency issue persisted, hindering the completion of critical frontend features. Further investigation and exploration of alternative session management solutions are necessary to overcome this obstacle.

Apology: Due to the time limit, I regretfully couldn't resolve this issue within the given timeframe. I apologize for any inconvenience caused.

