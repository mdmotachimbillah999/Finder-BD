-- Already required for Finderbd Profile Gmail field.
-- Run this in Supabase SQL Editor if not already done:
alter table public.profiles
add column if not exists email text;
