Finderbd User App - Phone OTP + Gmail Profile

এই ZIP-এ Finderbd User App-এর Account/Profile অংশ আপডেট করা হয়েছে।

যা করা হয়েছে:
1. Phone OTP Register/Login flow রাখা হয়েছে।
2. Login-এ নতুন user auto-create না করার চেষ্টা করা হয়েছে।
3. Register -> OTP -> Profile Setup flow রাখা হয়েছে।
4. Profile-এ required Gmail field রাখা হয়েছে; Gmail verification নেই।
5. Gmail এখন public.profiles.email column-এ save হবে।
6. Existing Finderbd design এবং Home/Search/Booking structure অক্ষুণ্ণ রাখা হয়েছে।
7. Profile load করলে saved Gmail আবার দেখাবে।
8. config.js-এ কোনো secret/service_role key নেই।

Supabase SQL:
SETUP_SQL.sql ফাইলটি শুধু নিশ্চিত করার জন্য রাখা হয়েছে।
প্রয়োজন হলে SQL Editor-এ চালান:
alter table public.profiles add column if not exists email text;

Phone OTP-এর জন্য Supabase Auth > Providers > Phone এবং Twilio Verify চালু থাকতে হবে।
