Finderbd User App

Authentication:
- Register: Mobile number + Password + Confirm Password
- Login: Mobile number + Password
- No OTP / Twilio is used by this app.

Supabase setup:
1. Keep Authentication > Providers > Phone enabled.
2. Disable phone confirmation if you want registration/login without OTP.
3. Password authentication is handled by Supabase Auth.
4. Do not put a service_role/secret key in the app.

config.js contains the Supabase URL and publishable key.
