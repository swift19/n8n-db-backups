SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict EF4d5Lr3w57WnqmyZANT0Xg6eT66XIR04z5QCDTfpwEnCdLYOdqvpkJytDSJDci

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") FROM stdin;
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") FROM stdin;
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") FROM stdin;
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."instances" ("id", "uuid", "raw_base_config", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_clients" ("id", "client_secret_hash", "registration_type", "redirect_uris", "grant_types", "client_name", "client_uri", "logo_uri", "created_at", "updated_at", "deleted_at", "client_type") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag", "oauth_client_id", "refresh_token_hmac_key", "refresh_token_counter", "scopes") FROM stdin;
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret", "phone", "last_challenged_at", "web_authn_credential", "web_authn_aaguid", "last_webauthn_challenge_data") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address", "otp_code", "web_authn_session_data") FROM stdin;
\.


--
-- Data for Name: oauth_authorizations; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_authorizations" ("id", "authorization_id", "client_id", "user_id", "redirect_uri", "scope", "state", "resource", "code_challenge", "code_challenge_method", "response_type", "status", "authorization_code", "created_at", "expires_at", "approved_at", "nonce") FROM stdin;
\.


--
-- Data for Name: oauth_client_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_client_states" ("id", "provider_type", "code_verifier", "created_at") FROM stdin;
\.


--
-- Data for Name: oauth_consents; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_consents" ("id", "user_id", "client_id", "scopes", "granted_at", "revoked_at") FROM stdin;
\.


--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") FROM stdin;
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_providers" ("id", "resource_id", "created_at", "updated_at", "disabled") FROM stdin;
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_providers" ("id", "sso_provider_id", "entity_id", "metadata_xml", "metadata_url", "attribute_mapping", "created_at", "updated_at", "name_id_format") FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_relay_states" ("id", "sso_provider_id", "request_id", "for_email", "redirect_to", "created_at", "updated_at", "flow_state_id") FROM stdin;
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_domains" ("id", "sso_provider_id", "domain", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: annotation_tag_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."annotation_tag_entity" ("id", "name", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."role" ("slug", "displayName", "description", "roleType", "systemRole", "createdAt", "updatedAt") FROM stdin;
global:chatUser	Chat User	Chat User	global	t	2026-01-09 01:12:45.741+00	2026-01-09 01:12:45.741+00
global:owner	Owner	Owner	global	t	2026-01-09 01:11:22.132+00	2026-01-09 01:12:45.85+00
global:admin	Admin	Admin	global	t	2026-01-09 01:11:22.132+00	2026-01-09 01:12:45.85+00
global:member	Member	Member	global	t	2026-01-09 01:11:22.132+00	2026-01-09 01:12:45.85+00
project:admin	Project Admin	Full control of settings, members, workflows, credentials and executions	project	t	2026-01-09 01:11:22.132+00	2026-01-09 01:12:48.147+00
project:personalOwner	Project Owner	Project Owner	project	t	2026-01-09 01:11:22.132+00	2026-01-09 01:12:48.147+00
project:editor	Project Editor	Create, edit, and delete workflows, credentials, and executions	project	t	2026-01-09 01:11:22.132+00	2026-01-09 01:12:48.147+00
project:viewer	Project Viewer	Read-only access to workflows, credentials, and executions	project	t	2026-01-09 01:11:22.132+00	2026-01-09 01:12:48.147+00
project:chatUser	Project Chat User	Chat-only access to chatting with workflows that have n8n Chat enabled	project	t	2026-01-09 01:11:22.132+00	2026-01-09 01:12:48.147+00
credential:owner	Credential Owner	Credential Owner	credential	t	2026-01-09 01:12:50.262+00	2026-01-09 01:12:50.262+00
credential:user	Credential User	Credential User	credential	t	2026-01-09 01:12:50.262+00	2026-01-09 01:12:50.262+00
workflow:owner	Workflow Owner	Workflow Owner	workflow	t	2026-01-09 01:12:51.593+00	2026-01-09 01:12:51.593+00
workflow:editor	Workflow Editor	Workflow Editor	workflow	t	2026-01-09 01:12:51.593+00	2026-01-09 01:12:51.593+00
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user" ("id", "email", "firstName", "lastName", "password", "personalizationAnswers", "createdAt", "updatedAt", "settings", "disabled", "mfaEnabled", "mfaSecret", "mfaRecoveryCodes", "lastActiveAt", "roleSlug") FROM stdin;
c1a15235-ed35-4bec-8083-b6e3be1644d5	geraldbathan24@gmail.com	Geraldo	Bathan	$2a$10$gF/YnvMn.0wXKLaY0dxW1uuP5UVhvhPaHzFbFsXWc2PZEW5OyJV7.	{"version":"v4","personalization_survey_submitted_at":"2026-01-09T01:48:59.303Z","personalization_survey_n8n_version":"2.2.5","automationGoalDevops":["monitoring-alerting","data-syncing"],"companySize":"personalUser","companyType":"education","role":"it","reportedSource":"youtube"}	2026-01-09 01:07:00.566+00	2026-01-09 13:10:40.93+00	{"userActivated":false,"easyAIWorkflowOnboarded":true}	f	f	\N	\N	2026-01-09	global:owner
\.


--
-- Data for Name: auth_identity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."auth_identity" ("userId", "providerId", "providerType", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: auth_provider_sync_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."auth_provider_sync_history" ("id", "providerType", "runMode", "status", "startedAt", "endedAt", "scanned", "created", "updated", "disabled", "error") FROM stdin;
\.


--
-- Data for Name: binary_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."binary_data" ("fileId", "sourceType", "sourceId", "data", "mimeType", "fileName", "fileSize", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: dynamic_credential_resolver; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."dynamic_credential_resolver" ("id", "name", "type", "config", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: credentials_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."credentials_entity" ("name", "data", "type", "createdAt", "updatedAt", "id", "isManaged", "isGlobal", "isResolvable", "resolvableAllowFallback", "resolverId") FROM stdin;
Google Gemini(PaLM) Api account	U2FsdGVkX18Z1SiO0bdZg3LSIo7ikYQwtQzJlWSHSc+he1A1vo78vmU1kwHhRk5ol7xCklYEJoT7GLUaLslpXhH6E6+ZeZEMss4KAGMteHA=	googlePalmApi	2026-01-09 02:40:15.906+00	2026-01-09 02:40:15.575+00	B5Wm4iIJlAdZYfwY	f	f	f	f	\N
JWT Auth account	U2FsdGVkX18nnr34VsSUAC3PPYkzv6yEpKPGHDFXeG1ROBGobKk92jJqD9zoCXJHaIeWVc7soa8qj9IboiOUNrs20iXCwtNadlHukTC3H25o9RwnCyKkTnp4Vn0h9xO7WjUEuvFjZTLU/bWfFurAF8J3CWy6qIgFXq14a2KxEFCaLHWq90PDbIdjmop3jRqyVGn6qb6PARyUM8LFZTQDdAfmwKBauEqTY2NIKip7kEyYouUFpLJmkKSNJI/nW9URRk3O9rpxmsRwkKZ7QO5hAOjnBnB1OxUjpaw/YzO+aW/4qWMFe7s0fEVsPw6QOBK8sqbV2NfmXh6blZmyhgsiPIx2ISYoZ6DmRzgX5/W6Fvo6oZAxozmsuBEenJWkdgfpSEoLjjLIyCBeq0j4zgoviiLAcdFTMubbRAOF7JF8HLQfJjhiVCagy538vZZ7tkE29N9rluHRLeLAcAZDHpWCpmA7oh1zrRMWv9hhtH2pY8+UO635q+MQyzamJmqFQn1/VoPgo1y40MMmaVX4kZQgB9jnjcTDkAG3s03WKbfzjkIRv/f9LSzQg4gPqMSCYfylzaB//RQM2VD+v/BkxX7dio1fcOyk2KGmw4dOBoIBUh1Rr57j0EOlKy80zpP81EnrSRjpgtHctKhcVodqCsAmFoFlFE1bo3UuPITF1uAaKLbwuF1tYetRRAmZaggrx7W6f7Kd+4q66JgE5YOqtBmuZ2fhqiBgj3ln0KaJFdbTWfMW/2vUmKRt0iaYw2ejSj3a/94oI1OwTSShBgB3CYD5l/w4lnc5V1/KW8DjbIJk25CPIgEjz/ijBI+vFWkOKZDHw6bqJGe0TqdNKY7q76BBJsRb98o4lR9j62TVNO6HKJLDejwDYJA/cLgl9hAs6CHala35ejvUiHF4TR5RTeoiO1uUg+D7ZVAABSK+iTKl5oGIuEhBP67pEmvA1YryqGQPqCgGDqu8pp1ayDujpw4nzDU64xXnM6Qch1Nafq0zTiQSfmgMuaq48P+B7jIghoHfQ8tgRAbfjmxSjsI/yHK77aHijG0t4MD6/Yw9J4l7vem9D1mDrfhE58N1GQ9r0zwR6SAYDWwWz+fJysEYnehZu2//4L0W4VEuGhsrnELdvRpJpQQdLFcOOOEWx7QL2WJ7wPtzYodNyLCzANNZLYDqfmRQKLHrPJoOdpeuL4BZHwqJFSR3J5xRI1CgB88FxHo2Pu5kcjxBiAnmqMO60ZzR1fIH/z441h6+l/z9bLrF1KXc3hdGEfsg3DolbzdGz5EmRKWsJlXLt7JVr/aGUYbgZn136BY/9/GNpjvIEu7zYfSrrmr9Ra7gEq57oTGU3ot3ddVBQA3+5j+pfx61a9ZZ53nelCx1IhHY1NL1/hZGi1NvzYOX+uM1DLRQAPGVPc+V7qV5gr2g3nhOq/38RKgx7qfwpOmO/9BSEuUNl1ijwJ8n3+OBHRi0sX0ZedWg1vcBl12tXH+7hhMxaYTZkf2xHlf82pCrbtM0ZZg847/kupsC71UpBX05FJ8JGomFMqnApkBb3bv0k7tAqgZDZ0NmqeblfHUXL1gRsdYuSCRG6yoPb8X9I+dzPJm7nyQn6wo9uIShCKqiKPjLPRtDZrVI5MX2eIDGPsya5v7E5jzg6s5+JsG5h/4FmkCTlKt5A0Y1N8k7nlAKXzfKQPvIcvJ7wfeRp+UlUAWpwTVXw8AdDRszBGEYqQk0LUKKRUDErt1HWsUWRyLcYTRqJ6nACdr856XjuBd2rxKvElA+5igAnFtaVsm+nkacF1wiQXZE3lKmVoMWIFW3xdY+UOUqcErnBHHPmkG4ec5BkNFUCGeWyFMVqqth1XrrRcOiFM35DtSYmadwBdZa2c643eCmy3zqcOPnPpJ/qzTSobmdsD5vgQge9PLQe5C/KMH+r2zPzuNjn1pLOAc7xx1inC7byVhsGT/bYQlH5b1You+1lXqXHcnCJwF7QUsxjzTPbHhF9WRBMG78BELqOK/3HrWDNFJ4HhOxa0aMRxr/dCtQC+XIhaYLMzBlNkWc+MLWPLSfewK7Pri5Cxj1AcQtVPEhUlSBiFv/WQrkQDTerdZzZ3nX5VdzYMDqc3HvzVxG6gVbb1cy+Fg7VWZlC+OLSxeBlMq6dRmQ0eMXobUwbNx8mEtsxrrTRXvvBTZd66q/P9z5+mhTmV5MTMhKWw99DFzonwe4z5gFgHrOUA1GXc3DkpPIS/5MGtIQkAATwvgUK6A3vjNUVoIZEnHOfEND+7c0fUVOcDdWROHWr9HrqQymmyruGbOLKsJtnqkFj/kaNAWKyesFOHzCzRcVYa3jhTy7hlxpwyTNJj3dARnDdwZRMwp5cJ2mybj06hNMUoVvQKy1DiTkxw8lAY5L1Fu6Y9KPPcBZst62kZqqzL4wST9ezCmXIyM5fatMlUZ5PkgMjkCn/asg8Lq/QRXRJ2ZBgS1LLrzw3w==	jwtAuth	2026-01-09 13:38:15.888+00	2026-01-09 13:45:45.243+00	tjmNBhpI5x7qf11y	f	f	f	f	\N
\.


--
-- Data for Name: chat_hub_agents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_agents" ("id", "name", "description", "systemPrompt", "ownerId", "credentialId", "provider", "model", "createdAt", "updatedAt", "tools", "icon") FROM stdin;
\.


--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."project" ("id", "name", "type", "createdAt", "updatedAt", "icon", "description", "creatorId") FROM stdin;
vpvAXG1z7QM1scA9	Geraldo Bathan <geraldbathan24@gmail.com>	personal	2026-01-09 01:09:14.112+00	2026-01-09 01:47:25.167+00	\N	\N	c1a15235-ed35-4bec-8083-b6e3be1644d5
\.


--
-- Data for Name: folder; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."folder" ("id", "name", "parentFolderId", "projectId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: workflow_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_entity" ("name", "active", "nodes", "connections", "createdAt", "updatedAt", "settings", "staticData", "pinData", "versionId", "triggerCount", "id", "meta", "parentFolderId", "isArchived", "versionCounter", "description", "activeVersionId") FROM stdin;
ASMR video creator	f	[{"parameters":{"rule":{"interval":[{}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[0,0],"id":"a05d964a-34e6-4b64-94d1-71bfd238de82","name":"Schedule Trigger"},{"parameters":{"jsonSchemaExample":"{\\n\\"promp\\":\\"<insert generated promp here>\\",\\n\\"videoTitle\\":\\"<insert generated video title here>\\",\\n\\"videoDescription\\":\\"<insert generated video description here>\\"\\n}"},"type":"@n8n/n8n-nodes-langchain.outputParserStructured","typeVersion":1.3,"position":[352,208],"id":"754476f4-466e-4b4d-a813-d6e4d9f1f8e7","name":"Structured Output Parser"},{"parameters":{"options":{}},"type":"@n8n/n8n-nodes-langchain.lmChatGoogleGemini","typeVersion":1,"position":[96,208],"id":"4852dd1f-d5cb-475f-b0ee-017184d9824c","name":"Google Gemini Chat Model","credentials":{"googlePalmApi":{"id":"B5Wm4iIJlAdZYfwY","name":"Google Gemini(PaLM) Api account"}}},{"parameters":{"promptType":"define","text":"Generate ASMR","hasOutputParser":true,"messages":{"messageValues":[{"message":"=You are an expert at creating hyper-detailed, ASMR-style vertical video prompts for AI video generation tools (Runway, Kling, Luma, etc.).  Create ONE complete, ready-to-copy prompt for a vertical smartphone video (9:16 aspect ratio, physically shot in portrait mode — never simulate by cropping or rotating horizontal footage).  The subject must be: a whole, full-shaped [RANDOM FRUIT] made entirely of transparent jelly glass with a soft, light-colored outer hue that matches the real fruit's typical color but in a very pale, translucent version (for example: pale yellow-green for kiwi, gentle pinkish-red for dragon fruit, soft orange for persimmon, light purple for fig, etc.).  Rules that must stay exactly the same in every version: - The glass fruit is perfectly centered on a clean wooden cutting board - Studio lighting with subtle glowing highlights on the transparent jelly surface - A clearly visible human hand (neutral skin tone) holds a sharp stainless steel knife just above the fruit, poised to slice - Shot in ultra-sharp macro lens style with very shallow depth of field - Cinematic lighting, soft bokeh background, 4K quality, 30 FPS - In beautiful slow motion, the knife performs exactly two clean slices:   • First slice: front section breaks off cleanly with delicate jelly-crack and soft slicing ASMR sounds   • Immediately after: second slice cuts another smooth piece - A few tiny transparent jelly shards scatter lightly from both cuts - Only ASMR sounds: crisp jelly-glass cutting, subtle cracking, small shards falling — absolutely no talking, no voice, no background music, no other sound effects - Only the hand, knife, fruit and board are visible — nothing else enters the frame  Important: Choose a completely different realistic fruit for each prompt you generate (never repeat the same fruit — no Rambutan, and avoid repeating across generations). Examples of fruits to cycle through: kiwi, dragon fruit, persimmon, fig, lychee, passion fruit, starfruit, guava, pomegranate, apricot, plum, peach, mango, pear, strawberry (whole), etc.  At the end of each prompt you create, add these two extra lines:  Video Title: [Create a short, clickbait-attractive but clean English title that would work well for YouTube Shorts / TikTok / Instagram Reels — 5–10 words max]  Caption: [Create a short, engaging 1–2 sentence English caption that would be pasted under the video on social media, including 2–4 relevant hashtags]  Output only the single full prompt + the title + the caption — nothing else. Do not explain or add commentary.\\n\\nMake your output in json format:\\n{\\n\\"promp\\":\\"<insert generated promp here>\\",\\n\\"videoTitle\\":\\"<insert generated video title here>\\",\\n\\"videoDescription\\":\\"<insert generated video description here>\\"\\n}"}]},"batching":{}},"type":"@n8n/n8n-nodes-langchain.chainLlm","typeVersion":1.9,"position":[208,0],"id":"e82e512d-549c-4523-9c2d-438c0bcec11b","name":"Generate Prompt"},{"parameters":{"jsCode":"return [\\n  {\\n  \\"type\\": \\"service_account\\",\\n  \\"project_id\\": \\"my-project-asmr-483803\\",\\n  \\"private_key_id\\": \\"60ac25a662328559cf71ebccce126c2047739e8f\\",\\n  \\"client_email\\": \\"asmr-video-creator-service-acc@my-project-asmr-483803.iam.gserviceaccount.com\\",\\n  \\"client_id\\": \\"100032661901089471171\\",\\n  \\"auth_uri\\": \\"https://accounts.google.com/o/oauth2/auth\\",\\n  \\"token_uri\\": \\"https://oauth2.googleapis.com/token\\",\\n  \\"auth_provider_x509_cert_url\\": \\"https://www.googleapis.com/oauth2/v1/certs\\",\\n  \\"client_x509_cert_url\\": \\"https://www.googleapis.com/robot/v1/metadata/x509/asmr-video-creator-service-acc%40my-project-asmr-483803.iam.gserviceaccount.com\\",\\n  \\"universe_domain\\": \\"googleapis.com\\"\\n}\\n]"},"type":"n8n-nodes-base.code","typeVersion":2,"position":[560,0],"id":"1e10c6f9-f3df-4c97-9f0c-a5aa95c9d5db","name":"Secret Payload"},{"parameters":{"useJson":true,"claimsJson":"={\\n  \\"iss\\": \\"{{ $json.client_email }}\\",\\n  \\"scope\\": \\"https://www.googleapis.com/auth/cloud...\\",\\n  \\"aud\\": \\"https://oauth2.googleapis.com/token\\",\\n  \\"iat\\": {{ Math.floor($now.toSeconds()) }},\\n  \\"exp\\": {{ Math.floor($now.plus({ seconds: 3600 }).toSeconds()) }}\\n}","options":{}},"type":"n8n-nodes-base.jwt","typeVersion":1,"position":[768,0],"id":"d196a1d6-ccc8-4670-bb16-526ab6ae3d02","name":"JWT","credentials":{"jwtAuth":{"id":"tjmNBhpI5x7qf11y","name":"JWT Auth account"}}},{"parameters":{"method":"POST","url":"https://oauth2.googleapis.com/token","sendBody":true,"contentType":"form-urlencoded","bodyParameters":{"parameters":[{"name":"grant_type","value":"urn:ietf:params:oauth:grant-type:jwt-bearer"},{"name":"assertion","value":"={{ $json.token }}"}]},"options":{}},"type":"n8n-nodes-base.httpRequest","typeVersion":4.3,"position":[976,0],"id":"38b6c48d-bc96-4517-856b-f7b1b447b9ad","name":"HTTP Request"}]	{"Schedule Trigger":{"main":[[{"node":"Generate Prompt","type":"main","index":0}]]},"Structured Output Parser":{"ai_outputParser":[[{"node":"Generate Prompt","type":"ai_outputParser","index":0}]]},"Google Gemini Chat Model":{"ai_languageModel":[[{"node":"Generate Prompt","type":"ai_languageModel","index":0}]]},"Generate Prompt":{"main":[[{"node":"Secret Payload","type":"main","index":0}]]},"Secret Payload":{"main":[[{"node":"JWT","type":"main","index":0}]]},"JWT":{"main":[[{"node":"HTTP Request","type":"main","index":0}]]}}	2026-01-09 02:23:33.627+00	2026-01-09 13:52:38.503+00	{"executionOrder":"v1","availableInMCP":false}	\N	{}	480d834d-1a8f-4f14-bb88-73ea30850717	0	LeagmHK_nal3-d2hiaOIn	{"templateCredsSetupCompleted":true}	\N	f	5	\N	\N
\.


--
-- Data for Name: chat_hub_sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_sessions" ("id", "title", "ownerId", "lastMessageAt", "credentialId", "provider", "model", "workflowId", "createdAt", "updatedAt", "agentId", "agentName", "tools") FROM stdin;
\.


--
-- Data for Name: execution_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_entity" ("id", "finished", "mode", "retryOf", "retrySuccessId", "startedAt", "stoppedAt", "waitTill", "status", "workflowId", "deletedAt", "createdAt") FROM stdin;
1	t	manual	\N	\N	2026-01-09 02:24:07.165+00	2026-01-09 02:24:07.712+00	\N	success	LeagmHK_nal3-d2hiaOIn	\N	2026-01-09 02:24:04.938+00
2	t	manual	\N	\N	2026-01-09 03:00:13.38+00	2026-01-09 03:00:36.311+00	\N	success	LeagmHK_nal3-d2hiaOIn	\N	2026-01-09 03:00:11.508+00
3	t	manual	\N	\N	2026-01-09 13:34:28.692+00	2026-01-09 13:34:29.642+00	\N	success	LeagmHK_nal3-d2hiaOIn	\N	2026-01-09 13:34:25.738+00
4	f	manual	\N	\N	2026-01-09 13:40:18.914+00	2026-01-09 13:40:19.746+00	\N	error	LeagmHK_nal3-d2hiaOIn	\N	2026-01-09 13:40:17.805+00
5	t	manual	\N	\N	2026-01-09 13:42:01.583+00	2026-01-09 13:42:28.541+00	\N	success	LeagmHK_nal3-d2hiaOIn	\N	2026-01-09 13:42:00.461+00
6	f	manual	\N	\N	2026-01-09 13:42:39.555+00	2026-01-09 13:42:40.009+00	\N	error	LeagmHK_nal3-d2hiaOIn	\N	2026-01-09 13:42:38.424+00
7	t	manual	\N	\N	2026-01-09 13:43:17.511+00	2026-01-09 13:43:25.049+00	\N	success	LeagmHK_nal3-d2hiaOIn	\N	2026-01-09 13:43:16.394+00
8	f	manual	\N	\N	2026-01-09 13:44:35.855+00	2026-01-09 13:44:38.049+00	\N	error	LeagmHK_nal3-d2hiaOIn	\N	2026-01-09 13:44:34.74+00
9	t	manual	\N	\N	2026-01-09 13:46:00.768+00	2026-01-09 13:46:01.677+00	\N	success	LeagmHK_nal3-d2hiaOIn	\N	2026-01-09 13:45:59.641+00
10	t	manual	\N	\N	2026-01-09 13:52:28.387+00	2026-01-09 13:52:28.96+00	\N	success	LeagmHK_nal3-d2hiaOIn	\N	2026-01-09 13:52:27.191+00
\.


--
-- Data for Name: chat_hub_messages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_messages" ("id", "sessionId", "previousMessageId", "revisionOfMessageId", "retryOfMessageId", "type", "name", "content", "provider", "model", "workflowId", "executionId", "createdAt", "updatedAt", "agentId", "status", "attachments") FROM stdin;
\.


--
-- Data for Name: data_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."data_table" ("id", "name", "projectId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: data_table_column; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."data_table_column" ("id", "name", "type", "index", "dataTableId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: dynamic_credential_entry; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."dynamic_credential_entry" ("credential_id", "subject_id", "resolver_id", "data", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: event_destinations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."event_destinations" ("id", "destination", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: execution_annotations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_annotations" ("id", "executionId", "vote", "note", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: execution_annotation_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_annotation_tags" ("annotationId", "tagId") FROM stdin;
\.


--
-- Data for Name: execution_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_data" ("executionId", "workflowData", "data", "workflowVersionId") FROM stdin;
1	{"id":"LeagmHK_nal3-d2hiaOIn","name":"ASMR video creator","active":false,"activeVersionId":null,"nodes":[{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[0,0],"id":"a05d964a-34e6-4b64-94d1-71bfd238de82","name":"Schedule Trigger"}],"connections":{},"settings":{"executionOrder":"v1","availableInMCP":false},"pinData":{}}	[{"version":1,"startData":"1","resultData":"2","executionData":"3"},{"destinationNode":"4","runNodeFilter":"5"},{"runData":"6","pinData":"7","lastNodeExecuted":"8"},{"contextData":"9","nodeExecutionStack":"10","metadata":"11","waitingExecution":"12","waitingExecutionSource":"13","runtimeData":"14"},{"nodeName":"8","mode":"15"},["8"],{"Schedule Trigger":"16"},{},"Schedule Trigger",{},[],{},{},{},{"version":1,"establishedAt":1767925447613,"source":"17","triggerNode":"18"},"inclusive",["19"],"manual",{"name":"8","type":"20"},{"startTime":1767925447615,"executionIndex":0,"source":"21","hints":"22","executionTime":96,"executionStatus":"23","data":"24"},"n8n-nodes-base.scheduleTrigger",[],[],"success",{"main":"25"},["26"],["27"],{"json":"28","pairedItem":"29"},{"timestamp":"30","Readable date":"31","Readable time":"32","Day of week":"33","Year":"34","Month":"35","Day of month":"36","Hour":"37","Minute":"38","Second":"39","Timezone":"40"},{"item":0},"2026-01-08T21:24:07.619-05:00","January 8th 2026, 9:24:07 pm","9:24:07 pm","Thursday","2026","January","08","21","24","07","America/New_York (UTC-05:00)"]	e8ec1b4e-3166-412b-bca0-57d3a8de594a
2	{"id":"LeagmHK_nal3-d2hiaOIn","name":"ASMR video creator","active":false,"activeVersionId":null,"nodes":[{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[0,0],"id":"a05d964a-34e6-4b64-94d1-71bfd238de82","name":"Schedule Trigger"},{"parameters":{"notice":"","schemaType":"fromJson","jsonSchemaExample":"{\\n\\"promp\\":\\"<insert generated promp here>\\",\\n\\"videoTitle\\":\\"<insert generated video title here>\\",\\n\\"videoDescription\\":\\"<insert generated video description here>\\"\\n}","autoFix":false},"type":"@n8n/n8n-nodes-langchain.outputParserStructured","typeVersion":1.3,"position":[352,208],"id":"754476f4-466e-4b4d-a813-d6e4d9f1f8e7","name":"Structured Output Parser"},{"parameters":{"notice":"","modelName":"models/gemini-2.5-flash","options":{}},"type":"@n8n/n8n-nodes-langchain.lmChatGoogleGemini","typeVersion":1,"position":[96,208],"id":"4852dd1f-d5cb-475f-b0ee-017184d9824c","name":"Google Gemini Chat Model","credentials":{"googlePalmApi":{"id":"B5Wm4iIJlAdZYfwY","name":"Google Gemini(PaLM) Api account"}}},{"parameters":{"notice":"","promptType":"define","text":"Generate ASMR","hasOutputParser":true,"needsFallback":false,"messages":{"messageValues":[{"type":"SystemMessagePromptTemplate","message":"=You are an expert at creating hyper-detailed, ASMR-style vertical video prompts for AI video generation tools (Runway, Kling, Luma, etc.).  Create ONE complete, ready-to-copy prompt for a vertical smartphone video (9:16 aspect ratio, physically shot in portrait mode — never simulate by cropping or rotating horizontal footage).  The subject must be: a whole, full-shaped [RANDOM FRUIT] made entirely of transparent jelly glass with a soft, light-colored outer hue that matches the real fruit's typical color but in a very pale, translucent version (for example: pale yellow-green for kiwi, gentle pinkish-red for dragon fruit, soft orange for persimmon, light purple for fig, etc.).  Rules that must stay exactly the same in every version: - The glass fruit is perfectly centered on a clean wooden cutting board - Studio lighting with subtle glowing highlights on the transparent jelly surface - A clearly visible human hand (neutral skin tone) holds a sharp stainless steel knife just above the fruit, poised to slice - Shot in ultra-sharp macro lens style with very shallow depth of field - Cinematic lighting, soft bokeh background, 4K quality, 30 FPS - In beautiful slow motion, the knife performs exactly two clean slices:   • First slice: front section breaks off cleanly with delicate jelly-crack and soft slicing ASMR sounds   • Immediately after: second slice cuts another smooth piece - A few tiny transparent jelly shards scatter lightly from both cuts - Only ASMR sounds: crisp jelly-glass cutting, subtle cracking, small shards falling — absolutely no talking, no voice, no background music, no other sound effects - Only the hand, knife, fruit and board are visible — nothing else enters the frame  Important: Choose a completely different realistic fruit for each prompt you generate (never repeat the same fruit — no Rambutan, and avoid repeating across generations). Examples of fruits to cycle through: kiwi, dragon fruit, persimmon, fig, lychee, passion fruit, starfruit, guava, pomegranate, apricot, plum, peach, mango, pear, strawberry (whole), etc.  At the end of each prompt you create, add these two extra lines:  Video Title: [Create a short, clickbait-attractive but clean English title that would work well for YouTube Shorts / TikTok / Instagram Reels — 5–10 words max]  Caption: [Create a short, engaging 1–2 sentence English caption that would be pasted under the video on social media, including 2–4 relevant hashtags]  Output only the single full prompt + the title + the caption — nothing else. Do not explain or add commentary.\\n\\nMake your output in json format:\\n{\\n\\"promp\\":\\"<insert generated promp here>\\",\\n\\"videoTitle\\":\\"<insert generated video title here>\\",\\n\\"videoDescription\\":\\"<insert generated video description here>\\"\\n}"}]},"batching":{}},"type":"@n8n/n8n-nodes-langchain.chainLlm","typeVersion":1.9,"position":[208,0],"id":"e82e512d-549c-4523-9c2d-438c0bcec11b","name":"Generate Prompt"}],"connections":{"Schedule Trigger":{"main":[[{"node":"Generate Prompt","type":"main","index":0}]]},"Structured Output Parser":{"ai_outputParser":[[{"node":"Generate Prompt","type":"ai_outputParser","index":0}]]},"Google Gemini Chat Model":{"ai_languageModel":[[{"node":"Generate Prompt","type":"ai_languageModel","index":0}]]}},"settings":{"executionOrder":"v1","availableInMCP":false},"pinData":{}}	[{"version":1,"startData":"1","resultData":"2","executionData":"3"},{},{"runData":"4","pinData":"5","lastNodeExecuted":"6"},{"contextData":"7","nodeExecutionStack":"8","metadata":"9","waitingExecution":"10","waitingExecutionSource":"11","runtimeData":"12"},{"Schedule Trigger":"13","Google Gemini Chat Model":"14","Structured Output Parser":"15","Generate Prompt":"16"},{},"Generate Prompt",{},[],{"Google Gemini Chat Model":"17","Structured Output Parser":"18"},{},{},{"version":1,"establishedAt":1767927613829,"source":"19","triggerNode":"20"},["21"],["22"],["23"],["24"],["25"],["26"],"manual",{"name":"27","type":"28"},{"startTime":1767927613831,"executionIndex":0,"source":"29","hints":"30","executionTime":1,"executionStatus":"31","data":"32"},{"startTime":1767927631311,"executionTime":4940,"executionIndex":2,"executionStatus":"31","source":"33","data":"34","inputOverride":"35","metadata":"36"},{"startTime":1767927636308,"executionTime":1,"executionIndex":3,"executionStatus":"31","source":"37","data":"38","inputOverride":"39","metadata":"40"},{"startTime":1767927613833,"executionIndex":1,"source":"41","hints":"42","executionTime":22477,"executionStatus":"31","data":"43"},{"subRun":"44"},{"subRun":"45"},"Schedule Trigger","n8n-nodes-base.scheduleTrigger",[],[],"success",{"main":"46"},["47"],{"ai_languageModel":"48"},{"ai_languageModel":"49"},{"subRun":"44"},["50"],{"ai_outputParser":"51"},{"ai_outputParser":"52"},{"subRun":"45"},["53"],[],{"main":"54"},["55"],["56"],["57"],{"previousNode":"6","previousNodeRun":0},["58"],["59"],{"previousNode":"6","previousNodeRun":0},["60"],["61"],{"previousNode":"27"},["62"],{"node":"63","runIndex":0},{"node":"64","runIndex":0},["65"],["66"],["67"],["68"],["69"],["70"],"Google Gemini Chat Model","Structured Output Parser",{"json":"71","pairedItem":"72"},{"json":"73"},{"json":"74"},{"json":"75"},{"json":"76"},{"json":"77","pairedItem":"78"},{"timestamp":"79","Readable date":"80","Readable time":"81","Day of week":"82","Year":"83","Month":"84","Day of month":"85","Hour":"86","Minute":"87","Second":"88","Timezone":"89"},{"item":0},{"response":"90","tokenUsage":"91"},{"messages":"92","estimatedTokens":942,"options":"93"},{"action":"94","response":"77"},{"action":"94","text":"95"},{"output":"96"},{"item":0},"2026-01-08T22:00:13.832-05:00","January 8th 2026, 10:00:13 pm","10:00:13 pm","Thursday","2026","January","08","22","00","13","America/New_York (UTC-05:00)",{"generations":"97"},{"completionTokens":306,"promptTokens":952,"totalTokens":1258},["98"],{"google_api_key":"99","base_url":"100","model":"101"},"parse","```json\\n{\\n\\"output\\": {\\n\\"promp\\": \\"Vertical smartphone video (9:16 aspect ratio), physically shot in portrait mode. A whole, full-shaped starfruit made entirely of transparent jelly glass with a soft, pale translucent yellow-green outer hue. The glass starfruit is perfectly centered on a clean wooden cutting board. Studio lighting with subtle glowing highlights on the transparent jelly surface. A clearly visible human hand (neutral skin tone) holds a sharp stainless steel knife just above the fruit, poised to slice. Shot in ultra-sharp macro lens style with very shallow depth of field. Cinematic lighting, soft bokeh background, 4K quality, 30 FPS. In beautiful slow motion, the knife performs exactly two clean slices: First slice, a front section breaks off cleanly with delicate jelly-crack and soft slicing ASMR sounds. Immediately after, a second slice cuts another smooth piece. A few tiny transparent jelly shards scatter lightly from both cuts. Only ASMR sounds: crisp jelly-glass cutting, subtle cracking, small shards falling — absolutely no talking, no voice, no background music, no other sound effects. Only the hand, knife, fruit and board are visible — nothing else enters the frame.\\",\\n\\"videoTitle\\": \\"Glass Starfruit ASMR Slices!\\",\\n\\"videoDescription\\": \\"Watch this mesmerizing starfruit made of glass get sliced! The sounds are so satisfying. #ASMR #GlassArt #Starfruit #Satisfying\\"\\n}\\n}\\n```",{"promp":"102","videoTitle":"103","videoDescription":"104"},["105"],"System: You are an expert at creating hyper-detailed, ASMR-style vertical video prompts for AI video generation tools (Runway, Kling, Luma, etc.).  Create ONE complete, ready-to-copy prompt for a vertical smartphone video (9:16 aspect ratio, physically shot in portrait mode — never simulate by cropping or rotating horizontal footage).  The subject must be: a whole, full-shaped [RANDOM FRUIT] made entirely of transparent jelly glass with a soft, light-colored outer hue that matches the real fruit's typical color but in a very pale, translucent version (for example: pale yellow-green for kiwi, gentle pinkish-red for dragon fruit, soft orange for persimmon, light purple for fig, etc.).  Rules that must stay exactly the same in every version: - The glass fruit is perfectly centered on a clean wooden cutting board - Studio lighting with subtle glowing highlights on the transparent jelly surface - A clearly visible human hand (neutral skin tone) holds a sharp stainless steel knife just above the fruit, poised to slice - Shot in ultra-sharp macro lens style with very shallow depth of field - Cinematic lighting, soft bokeh background, 4K quality, 30 FPS - In beautiful slow motion, the knife performs exactly two clean slices:   • First slice: front section breaks off cleanly with delicate jelly-crack and soft slicing ASMR sounds   • Immediately after: second slice cuts another smooth piece - A few tiny transparent jelly shards scatter lightly from both cuts - Only ASMR sounds: crisp jelly-glass cutting, subtle cracking, small shards falling — absolutely no talking, no voice, no background music, no other sound effects - Only the hand, knife, fruit and board are visible — nothing else enters the frame  Important: Choose a completely different realistic fruit for each prompt you generate (never repeat the same fruit — no Rambutan, and avoid repeating across generations). Examples of fruits to cycle through: kiwi, dragon fruit, persimmon, fig, lychee, passion fruit, starfruit, guava, pomegranate, apricot, plum, peach, mango, pear, strawberry (whole), etc.  At the end of each prompt you create, add these two extra lines:  Video Title: [Create a short, clickbait-attractive but clean English title that would work well for YouTube Shorts / TikTok / Instagram Reels — 5–10 words max]  Caption: [Create a short, engaging 1–2 sentence English caption that would be pasted under the video on social media, including 2–4 relevant hashtags]  Output only the single full prompt + the title + the caption — nothing else. Do not explain or add commentary.\\n\\nMake your output in json format:\\n{\\n\\"promp\\":\\"<insert generated promp here>\\",\\n\\"videoTitle\\":\\"<insert generated video title here>\\",\\n\\"videoDescription\\":\\"<insert generated video description here>\\"\\n}\\nHuman: Generate ASMR\\nYou must format your output as a JSON value that adheres to a given \\"JSON Schema\\" instance.\\n\\n\\"JSON Schema\\" is a declarative language that allows you to annotate and validate JSON documents.\\n\\nFor example, the example \\"JSON Schema\\" instance {{\\"properties\\": {{\\"foo\\": {{\\"description\\": \\"a list of test words\\", \\"type\\": \\"array\\", \\"items\\": {{\\"type\\": \\"string\\"}}}}}}, \\"required\\": [\\"foo\\"]}}}}\\nwould match an object with one required property, \\"foo\\". The \\"type\\" property specifies \\"foo\\" must be an \\"array\\", and the \\"description\\" property semantically describes it as \\"a list of test words\\". The items within \\"foo\\" must be strings.\\nThus, the object {{\\"foo\\": [\\"bar\\", \\"baz\\"]}} is a well-formatted instance of this example \\"JSON Schema\\". The object {{\\"properties\\": {{\\"foo\\": [\\"bar\\", \\"baz\\"]}}}} is not well-formatted.\\n\\nYour output will be parsed and type-checked according to the provided schema instance, so make sure all fields in your output match the schema exactly and there are no trailing commas!\\n\\nHere is the JSON Schema instance your output must adhere to. Include the enclosing markdown codeblock:\\n```json\\n{\\"type\\":\\"object\\",\\"properties\\":{\\"output\\":{\\"type\\":\\"object\\",\\"properties\\":{\\"promp\\":{\\"type\\":\\"string\\"},\\"videoTitle\\":{\\"type\\":\\"string\\"},\\"videoDescription\\":{\\"type\\":\\"string\\"}},\\"required\\":[\\"promp\\",\\"videoTitle\\",\\"videoDescription\\"],\\"additionalProperties\\":false}},\\"required\\":[\\"output\\"],\\"additionalProperties\\":false,\\"$schema\\":\\"http://json-schema.org/draft-07/schema#\\"}\\n```\\n",{"lc":1,"type":"106","id":"107"},"https://generativelanguage.googleapis.com","gemini-2.5-flash","Vertical smartphone video (9:16 aspect ratio), physically shot in portrait mode. A whole, full-shaped starfruit made entirely of transparent jelly glass with a soft, pale translucent yellow-green outer hue. The glass starfruit is perfectly centered on a clean wooden cutting board. Studio lighting with subtle glowing highlights on the transparent jelly surface. A clearly visible human hand (neutral skin tone) holds a sharp stainless steel knife just above the fruit, poised to slice. Shot in ultra-sharp macro lens style with very shallow depth of field. Cinematic lighting, soft bokeh background, 4K quality, 30 FPS. In beautiful slow motion, the knife performs exactly two clean slices: First slice, a front section breaks off cleanly with delicate jelly-crack and soft slicing ASMR sounds. Immediately after, a second slice cuts another smooth piece. A few tiny transparent jelly shards scatter lightly from both cuts. Only ASMR sounds: crisp jelly-glass cutting, subtle cracking, small shards falling — absolutely no talking, no voice, no background music, no other sound effects. Only the hand, knife, fruit and board are visible — nothing else enters the frame.","Glass Starfruit ASMR Slices!","Watch this mesmerizing starfruit made of glass get sliced! The sounds are so satisfying. #ASMR #GlassArt #Starfruit #Satisfying",["108"],"secret",["109"],{"text":"95","generationInfo":"110"},"GOOGLE_API_KEY",{"finishReason":"111","index":0},"STOP"]	e8ec1b4e-3166-412b-bca0-57d3a8de594a
3	{"id":"LeagmHK_nal3-d2hiaOIn","name":"ASMR video creator","active":false,"activeVersionId":null,"nodes":[{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[0,0],"id":"a05d964a-34e6-4b64-94d1-71bfd238de82","name":"Schedule Trigger"},{"parameters":{"notice":"","schemaType":"fromJson","jsonSchemaExample":"{\\n\\"promp\\":\\"<insert generated promp here>\\",\\n\\"videoTitle\\":\\"<insert generated video title here>\\",\\n\\"videoDescription\\":\\"<insert generated video description here>\\"\\n}","autoFix":false},"type":"@n8n/n8n-nodes-langchain.outputParserStructured","typeVersion":1.3,"position":[352,208],"id":"754476f4-466e-4b4d-a813-d6e4d9f1f8e7","name":"Structured Output Parser"},{"parameters":{"notice":"","modelName":"models/gemini-2.5-flash","options":{}},"type":"@n8n/n8n-nodes-langchain.lmChatGoogleGemini","typeVersion":1,"position":[96,208],"id":"4852dd1f-d5cb-475f-b0ee-017184d9824c","name":"Google Gemini Chat Model","credentials":{"googlePalmApi":{"id":"B5Wm4iIJlAdZYfwY","name":"Google Gemini(PaLM) Api account"}}},{"parameters":{"notice":"","promptType":"define","text":"Generate ASMR","hasOutputParser":true,"needsFallback":false,"messages":{"messageValues":[{"type":"SystemMessagePromptTemplate","message":"=You are an expert at creating hyper-detailed, ASMR-style vertical video prompts for AI video generation tools (Runway, Kling, Luma, etc.).  Create ONE complete, ready-to-copy prompt for a vertical smartphone video (9:16 aspect ratio, physically shot in portrait mode — never simulate by cropping or rotating horizontal footage).  The subject must be: a whole, full-shaped [RANDOM FRUIT] made entirely of transparent jelly glass with a soft, light-colored outer hue that matches the real fruit's typical color but in a very pale, translucent version (for example: pale yellow-green for kiwi, gentle pinkish-red for dragon fruit, soft orange for persimmon, light purple for fig, etc.).  Rules that must stay exactly the same in every version: - The glass fruit is perfectly centered on a clean wooden cutting board - Studio lighting with subtle glowing highlights on the transparent jelly surface - A clearly visible human hand (neutral skin tone) holds a sharp stainless steel knife just above the fruit, poised to slice - Shot in ultra-sharp macro lens style with very shallow depth of field - Cinematic lighting, soft bokeh background, 4K quality, 30 FPS - In beautiful slow motion, the knife performs exactly two clean slices:   • First slice: front section breaks off cleanly with delicate jelly-crack and soft slicing ASMR sounds   • Immediately after: second slice cuts another smooth piece - A few tiny transparent jelly shards scatter lightly from both cuts - Only ASMR sounds: crisp jelly-glass cutting, subtle cracking, small shards falling — absolutely no talking, no voice, no background music, no other sound effects - Only the hand, knife, fruit and board are visible — nothing else enters the frame  Important: Choose a completely different realistic fruit for each prompt you generate (never repeat the same fruit — no Rambutan, and avoid repeating across generations). Examples of fruits to cycle through: kiwi, dragon fruit, persimmon, fig, lychee, passion fruit, starfruit, guava, pomegranate, apricot, plum, peach, mango, pear, strawberry (whole), etc.  At the end of each prompt you create, add these two extra lines:  Video Title: [Create a short, clickbait-attractive but clean English title that would work well for YouTube Shorts / TikTok / Instagram Reels — 5–10 words max]  Caption: [Create a short, engaging 1–2 sentence English caption that would be pasted under the video on social media, including 2–4 relevant hashtags]  Output only the single full prompt + the title + the caption — nothing else. Do not explain or add commentary.\\n\\nMake your output in json format:\\n{\\n\\"promp\\":\\"<insert generated promp here>\\",\\n\\"videoTitle\\":\\"<insert generated video title here>\\",\\n\\"videoDescription\\":\\"<insert generated video description here>\\"\\n}"}]},"batching":{}},"type":"@n8n/n8n-nodes-langchain.chainLlm","typeVersion":1.9,"position":[208,0],"id":"e82e512d-549c-4523-9c2d-438c0bcec11b","name":"Generate Prompt"},{"parameters":{"mode":"runOnceForAllItems","language":"javaScript","jsCode":"return [\\n  {\\n  \\"type\\": \\"service_account\\",\\n  \\"project_id\\": \\"my-project-asmr-483803\\",\\n  \\"private_key_id\\": \\"60ac25a662328559cf71ebccce126c2047739e8f\\",\\n  \\"client_email\\": \\"asmr-video-creator-service-acc@my-project-asmr-483803.iam.gserviceaccount.com\\",\\n  \\"client_id\\": \\"100032661901089471171\\",\\n  \\"auth_uri\\": \\"https://accounts.google.com/o/oauth2/auth\\",\\n  \\"token_uri\\": \\"https://oauth2.googleapis.com/token\\",\\n  \\"auth_provider_x509_cert_url\\": \\"https://www.googleapis.com/oauth2/v1/certs\\",\\n  \\"client_x509_cert_url\\": \\"https://www.googleapis.com/robot/v1/metadata/x509/asmr-video-creator-service-acc%40my-project-asmr-483803.iam.gserviceaccount.com\\",\\n  \\"universe_domain\\": \\"googleapis.com\\"\\n}\\n]","notice":""},"type":"n8n-nodes-base.code","typeVersion":2,"position":[560,0],"id":"1e10c6f9-f3df-4c97-9f0c-a5aa95c9d5db","name":"Code in JavaScript"}],"connections":{"Schedule Trigger":{"main":[[{"node":"Generate Prompt","type":"main","index":0}]]},"Structured Output Parser":{"ai_outputParser":[[{"node":"Generate Prompt","type":"ai_outputParser","index":0}]]},"Google Gemini Chat Model":{"ai_languageModel":[[{"node":"Generate Prompt","type":"ai_languageModel","index":0}]]},"Generate Prompt":{"main":[[{"node":"Code in JavaScript","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","availableInMCP":false},"pinData":{}}	[{"version":1,"startData":"1","resultData":"2","executionData":"3"},{"destinationNode":"4","runNodeFilter":"5"},{"runData":"6","pinData":"7","lastNodeExecuted":"8"},{"contextData":"9","nodeExecutionStack":"10","metadata":"11","waitingExecution":"12","waitingExecutionSource":"13","runtimeData":"14"},{"nodeName":"8","mode":"15"},["16","17","8","18","19"],{"Schedule Trigger":"20","Generate Prompt":"21","Code in JavaScript":"22"},{},"Code in JavaScript",{},[],{},{},{},{"version":1,"establishedAt":1767965669149,"source":"23","triggerNode":"24"},"inclusive","Schedule Trigger","Generate Prompt","Structured Output Parser","Google Gemini Chat Model",["25"],["26"],["27"],"manual",{"name":"8","type":"28"},{"startTime":1767927613831,"executionIndex":0,"source":"29","hints":"30","executionTime":1,"executionStatus":"31","data":"32"},{"startTime":1767927613833,"executionIndex":1,"source":"33","hints":"34","executionTime":22477,"executionStatus":"31","data":"35"},{"startTime":1767965669152,"executionIndex":2,"source":"36","hints":"37","executionTime":489,"executionStatus":"31","data":"38"},"n8n-nodes-base.code",[],[],"success",{"main":"39"},["40"],[],{"main":"41"},["42"],[],{"main":"43"},["44"],{"previousNode":"16"},["45"],{"previousNode":"17","previousNodeOutput":0,"previousNodeRun":0},["46"],["47"],["48"],["49"],{"json":"50","pairedItem":"51"},{"json":"52","pairedItem":"53"},{"json":"54","pairedItem":"55"},{"timestamp":"56","Readable date":"57","Readable time":"58","Day of week":"59","Year":"60","Month":"61","Day of month":"62","Hour":"63","Minute":"64","Second":"65","Timezone":"66"},{"item":0},{"output":"67"},{"item":0},{"type":"68","project_id":"69","private_key_id":"70","client_email":"71","client_id":"72","auth_uri":"73","token_uri":"74","auth_provider_x509_cert_url":"75","client_x509_cert_url":"76","universe_domain":"77"},{"item":0},"2026-01-08T22:00:13.832-05:00","January 8th 2026, 10:00:13 pm","10:00:13 pm","Thursday","2026","January","08","22","00","13","America/New_York (UTC-05:00)",{"promp":"78","videoTitle":"79","videoDescription":"80"},"service_account","my-project-asmr-483803","60ac25a662328559cf71ebccce126c2047739e8f","asmr-video-creator-service-acc@my-project-asmr-483803.iam.gserviceaccount.com","100032661901089471171","https://accounts.google.com/o/oauth2/auth","https://oauth2.googleapis.com/token","https://www.googleapis.com/oauth2/v1/certs","https://www.googleapis.com/robot/v1/metadata/x509/asmr-video-creator-service-acc%40my-project-asmr-483803.iam.gserviceaccount.com","googleapis.com","Vertical smartphone video (9:16 aspect ratio), physically shot in portrait mode. A whole, full-shaped starfruit made entirely of transparent jelly glass with a soft, pale translucent yellow-green outer hue. The glass starfruit is perfectly centered on a clean wooden cutting board. Studio lighting with subtle glowing highlights on the transparent jelly surface. A clearly visible human hand (neutral skin tone) holds a sharp stainless steel knife just above the fruit, poised to slice. Shot in ultra-sharp macro lens style with very shallow depth of field. Cinematic lighting, soft bokeh background, 4K quality, 30 FPS. In beautiful slow motion, the knife performs exactly two clean slices: First slice, a front section breaks off cleanly with delicate jelly-crack and soft slicing ASMR sounds. Immediately after, a second slice cuts another smooth piece. A few tiny transparent jelly shards scatter lightly from both cuts. Only ASMR sounds: crisp jelly-glass cutting, subtle cracking, small shards falling — absolutely no talking, no voice, no background music, no other sound effects. Only the hand, knife, fruit and board are visible — nothing else enters the frame.","Glass Starfruit ASMR Slices!","Watch this mesmerizing starfruit made of glass get sliced! The sounds are so satisfying. #ASMR #GlassArt #Starfruit #Satisfying"]	d5a47481-4418-4953-bb61-e2b95f895e1e
4	{"id":"LeagmHK_nal3-d2hiaOIn","name":"ASMR video creator","active":false,"activeVersionId":null,"nodes":[{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[0,0],"id":"a05d964a-34e6-4b64-94d1-71bfd238de82","name":"Schedule Trigger"},{"parameters":{"notice":"","schemaType":"fromJson","jsonSchemaExample":"{\\n\\"promp\\":\\"<insert generated promp here>\\",\\n\\"videoTitle\\":\\"<insert generated video title here>\\",\\n\\"videoDescription\\":\\"<insert generated video description here>\\"\\n}","autoFix":false},"type":"@n8n/n8n-nodes-langchain.outputParserStructured","typeVersion":1.3,"position":[352,208],"id":"754476f4-466e-4b4d-a813-d6e4d9f1f8e7","name":"Structured Output Parser"},{"parameters":{"notice":"","modelName":"models/gemini-2.5-flash","options":{}},"type":"@n8n/n8n-nodes-langchain.lmChatGoogleGemini","typeVersion":1,"position":[96,208],"id":"4852dd1f-d5cb-475f-b0ee-017184d9824c","name":"Google Gemini Chat Model","credentials":{"googlePalmApi":{"id":"B5Wm4iIJlAdZYfwY","name":"Google Gemini(PaLM) Api account"}}},{"parameters":{"notice":"","promptType":"define","text":"Generate ASMR","hasOutputParser":true,"needsFallback":false,"messages":{"messageValues":[{"type":"SystemMessagePromptTemplate","message":"=You are an expert at creating hyper-detailed, ASMR-style vertical video prompts for AI video generation tools (Runway, Kling, Luma, etc.).  Create ONE complete, ready-to-copy prompt for a vertical smartphone video (9:16 aspect ratio, physically shot in portrait mode — never simulate by cropping or rotating horizontal footage).  The subject must be: a whole, full-shaped [RANDOM FRUIT] made entirely of transparent jelly glass with a soft, light-colored outer hue that matches the real fruit's typical color but in a very pale, translucent version (for example: pale yellow-green for kiwi, gentle pinkish-red for dragon fruit, soft orange for persimmon, light purple for fig, etc.).  Rules that must stay exactly the same in every version: - The glass fruit is perfectly centered on a clean wooden cutting board - Studio lighting with subtle glowing highlights on the transparent jelly surface - A clearly visible human hand (neutral skin tone) holds a sharp stainless steel knife just above the fruit, poised to slice - Shot in ultra-sharp macro lens style with very shallow depth of field - Cinematic lighting, soft bokeh background, 4K quality, 30 FPS - In beautiful slow motion, the knife performs exactly two clean slices:   • First slice: front section breaks off cleanly with delicate jelly-crack and soft slicing ASMR sounds   • Immediately after: second slice cuts another smooth piece - A few tiny transparent jelly shards scatter lightly from both cuts - Only ASMR sounds: crisp jelly-glass cutting, subtle cracking, small shards falling — absolutely no talking, no voice, no background music, no other sound effects - Only the hand, knife, fruit and board are visible — nothing else enters the frame  Important: Choose a completely different realistic fruit for each prompt you generate (never repeat the same fruit — no Rambutan, and avoid repeating across generations). Examples of fruits to cycle through: kiwi, dragon fruit, persimmon, fig, lychee, passion fruit, starfruit, guava, pomegranate, apricot, plum, peach, mango, pear, strawberry (whole), etc.  At the end of each prompt you create, add these two extra lines:  Video Title: [Create a short, clickbait-attractive but clean English title that would work well for YouTube Shorts / TikTok / Instagram Reels — 5–10 words max]  Caption: [Create a short, engaging 1–2 sentence English caption that would be pasted under the video on social media, including 2–4 relevant hashtags]  Output only the single full prompt + the title + the caption — nothing else. Do not explain or add commentary.\\n\\nMake your output in json format:\\n{\\n\\"promp\\":\\"<insert generated promp here>\\",\\n\\"videoTitle\\":\\"<insert generated video title here>\\",\\n\\"videoDescription\\":\\"<insert generated video description here>\\"\\n}"}]},"batching":{}},"type":"@n8n/n8n-nodes-langchain.chainLlm","typeVersion":1.9,"position":[208,0],"id":"e82e512d-549c-4523-9c2d-438c0bcec11b","name":"Generate Prompt"},{"parameters":{"mode":"runOnceForAllItems","language":"javaScript","jsCode":"return [\\n  {\\n  \\"type\\": \\"service_account\\",\\n  \\"project_id\\": \\"my-project-asmr-483803\\",\\n  \\"private_key_id\\": \\"60ac25a662328559cf71ebccce126c2047739e8f\\",\\n  \\"client_email\\": \\"asmr-video-creator-service-acc@my-project-asmr-483803.iam.gserviceaccount.com\\",\\n  \\"client_id\\": \\"100032661901089471171\\",\\n  \\"auth_uri\\": \\"https://accounts.google.com/o/oauth2/auth\\",\\n  \\"token_uri\\": \\"https://oauth2.googleapis.com/token\\",\\n  \\"auth_provider_x509_cert_url\\": \\"https://www.googleapis.com/oauth2/v1/certs\\",\\n  \\"client_x509_cert_url\\": \\"https://www.googleapis.com/robot/v1/metadata/x509/asmr-video-creator-service-acc%40my-project-asmr-483803.iam.gserviceaccount.com\\",\\n  \\"universe_domain\\": \\"googleapis.com\\"\\n}\\n]","notice":""},"type":"n8n-nodes-base.code","typeVersion":2,"position":[560,0],"id":"1e10c6f9-f3df-4c97-9f0c-a5aa95c9d5db","name":"Secret Payload"},{"parameters":{"operation":"sign","useJson":true,"claimsJson":"{\\n  \\"iss\\": \\"{{ $json.client_email }}\\",\\n  \\"scope\\": \\"https://www.googleapis.com/auth/cloud...\\",\\n  \\"aud\\": \\"https://oauth2.googleapis.com/token\\",\\n  \\"iat\\": {{ Math.floor($now.toSeconds()) }},\\n  \\"exp\\": {{ Math.floor($now.plus({ seconds: 3600 }).toSeconds()) }}\\n}","options":{}},"type":"n8n-nodes-base.jwt","typeVersion":1,"position":[768,0],"id":"d196a1d6-ccc8-4670-bb16-526ab6ae3d02","name":"JWT","credentials":{"jwtAuth":{"id":"tjmNBhpI5x7qf11y","name":"JWT Auth account"}}}],"connections":{"Schedule Trigger":{"main":[[{"node":"Generate Prompt","type":"main","index":0}]]},"Structured Output Parser":{"ai_outputParser":[[{"node":"Generate Prompt","type":"ai_outputParser","index":0}]]},"Google Gemini Chat Model":{"ai_languageModel":[[{"node":"Generate Prompt","type":"ai_languageModel","index":0}]]},"Generate Prompt":{"main":[[{"node":"Secret Payload","type":"main","index":0}]]},"Secret Payload":{"main":[[{"node":"JWT","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","availableInMCP":false},"pinData":{}}	[{"version":1,"startData":"1","resultData":"2","executionData":"3"},{},{"error":"4","runData":"5"},{"contextData":"6","nodeExecutionStack":"7","metadata":"8","waitingExecution":"9","waitingExecutionSource":"10"},{"level":"11","tags":"12","timestamp":1767966019363,"context":"13","functionality":"14","name":"15","message":"16","stack":"17"},{},{},[],{},{},{},"warning",{},{},"regular","WorkflowHasIssuesError","The workflow has issues and cannot be executed for that reason. Please fix them first.","WorkflowHasIssuesError: The workflow has issues and cannot be executed for that reason. Please fix them first.\\n    at WorkflowExecute.checkForWorkflowIssues (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+sdk-trace-base@1.30_ec37920eb95917b28efaa783206b20f3/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1328:10)\\n    at WorkflowExecute.processRunExecutionData (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+sdk-trace-base@1.30_ec37920eb95917b28efaa783206b20f3/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1407:8)\\n    at WorkflowExecute.runPartialWorkflow2 (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+sdk-trace-base@1.30_ec37920eb95917b28efaa783206b20f3/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:282:15)\\n    at ManualExecutionService.runManually (/usr/local/lib/node_modules/n8n/src/manual-execution.service.ts:176:27)\\n    at WorkflowRunner.runMainProcess (/usr/local/lib/node_modules/n8n/src/workflow-runner.ts:300:53)\\n    at processTicksAndRejections (node:internal/process/task_queues:105:5)\\n    at WorkflowRunner.run (/usr/local/lib/node_modules/n8n/src/workflow-runner.ts:176:4)\\n    at WorkflowExecutionService.executeManually (/usr/local/lib/node_modules/n8n/src/workflows/workflow-execution.service.ts:242:24)\\n    at WorkflowsController.runManually (/usr/local/lib/node_modules/n8n/src/workflows/workflows.controller.ts:606:10)\\n    at handler (/usr/local/lib/node_modules/n8n/src/controller.registry.ts:95:12)"]	e00dad2a-d538-44c6-a8fb-b9405de2f854
5	{"id":"LeagmHK_nal3-d2hiaOIn","name":"ASMR video creator","active":false,"activeVersionId":null,"nodes":[{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[0,0],"id":"a05d964a-34e6-4b64-94d1-71bfd238de82","name":"Schedule Trigger"},{"parameters":{"notice":"","schemaType":"fromJson","jsonSchemaExample":"{\\n\\"promp\\":\\"<insert generated promp here>\\",\\n\\"videoTitle\\":\\"<insert generated video title here>\\",\\n\\"videoDescription\\":\\"<insert generated video description here>\\"\\n}","autoFix":false},"type":"@n8n/n8n-nodes-langchain.outputParserStructured","typeVersion":1.3,"position":[352,208],"id":"754476f4-466e-4b4d-a813-d6e4d9f1f8e7","name":"Structured Output Parser"},{"parameters":{"notice":"","modelName":"models/gemini-2.5-flash","options":{}},"type":"@n8n/n8n-nodes-langchain.lmChatGoogleGemini","typeVersion":1,"position":[96,208],"id":"4852dd1f-d5cb-475f-b0ee-017184d9824c","name":"Google Gemini Chat Model","credentials":{"googlePalmApi":{"id":"B5Wm4iIJlAdZYfwY","name":"Google Gemini(PaLM) Api account"}}},{"parameters":{"notice":"","promptType":"define","text":"Generate ASMR","hasOutputParser":true,"needsFallback":false,"messages":{"messageValues":[{"type":"SystemMessagePromptTemplate","message":"=You are an expert at creating hyper-detailed, ASMR-style vertical video prompts for AI video generation tools (Runway, Kling, Luma, etc.).  Create ONE complete, ready-to-copy prompt for a vertical smartphone video (9:16 aspect ratio, physically shot in portrait mode — never simulate by cropping or rotating horizontal footage).  The subject must be: a whole, full-shaped [RANDOM FRUIT] made entirely of transparent jelly glass with a soft, light-colored outer hue that matches the real fruit's typical color but in a very pale, translucent version (for example: pale yellow-green for kiwi, gentle pinkish-red for dragon fruit, soft orange for persimmon, light purple for fig, etc.).  Rules that must stay exactly the same in every version: - The glass fruit is perfectly centered on a clean wooden cutting board - Studio lighting with subtle glowing highlights on the transparent jelly surface - A clearly visible human hand (neutral skin tone) holds a sharp stainless steel knife just above the fruit, poised to slice - Shot in ultra-sharp macro lens style with very shallow depth of field - Cinematic lighting, soft bokeh background, 4K quality, 30 FPS - In beautiful slow motion, the knife performs exactly two clean slices:   • First slice: front section breaks off cleanly with delicate jelly-crack and soft slicing ASMR sounds   • Immediately after: second slice cuts another smooth piece - A few tiny transparent jelly shards scatter lightly from both cuts - Only ASMR sounds: crisp jelly-glass cutting, subtle cracking, small shards falling — absolutely no talking, no voice, no background music, no other sound effects - Only the hand, knife, fruit and board are visible — nothing else enters the frame  Important: Choose a completely different realistic fruit for each prompt you generate (never repeat the same fruit — no Rambutan, and avoid repeating across generations). Examples of fruits to cycle through: kiwi, dragon fruit, persimmon, fig, lychee, passion fruit, starfruit, guava, pomegranate, apricot, plum, peach, mango, pear, strawberry (whole), etc.  At the end of each prompt you create, add these two extra lines:  Video Title: [Create a short, clickbait-attractive but clean English title that would work well for YouTube Shorts / TikTok / Instagram Reels — 5–10 words max]  Caption: [Create a short, engaging 1–2 sentence English caption that would be pasted under the video on social media, including 2–4 relevant hashtags]  Output only the single full prompt + the title + the caption — nothing else. Do not explain or add commentary.\\n\\nMake your output in json format:\\n{\\n\\"promp\\":\\"<insert generated promp here>\\",\\n\\"videoTitle\\":\\"<insert generated video title here>\\",\\n\\"videoDescription\\":\\"<insert generated video description here>\\"\\n}"}]},"batching":{}},"type":"@n8n/n8n-nodes-langchain.chainLlm","typeVersion":1.9,"position":[208,0],"id":"e82e512d-549c-4523-9c2d-438c0bcec11b","name":"Generate Prompt"},{"parameters":{"mode":"runOnceForAllItems","language":"javaScript","jsCode":"return [\\n  {\\n  \\"type\\": \\"service_account\\",\\n  \\"project_id\\": \\"my-project-asmr-483803\\",\\n  \\"private_key_id\\": \\"60ac25a662328559cf71ebccce126c2047739e8f\\",\\n  \\"client_email\\": \\"asmr-video-creator-service-acc@my-project-asmr-483803.iam.gserviceaccount.com\\",\\n  \\"client_id\\": \\"100032661901089471171\\",\\n  \\"auth_uri\\": \\"https://accounts.google.com/o/oauth2/auth\\",\\n  \\"token_uri\\": \\"https://oauth2.googleapis.com/token\\",\\n  \\"auth_provider_x509_cert_url\\": \\"https://www.googleapis.com/oauth2/v1/certs\\",\\n  \\"client_x509_cert_url\\": \\"https://www.googleapis.com/robot/v1/metadata/x509/asmr-video-creator-service-acc%40my-project-asmr-483803.iam.gserviceaccount.com\\",\\n  \\"universe_domain\\": \\"googleapis.com\\"\\n}\\n]","notice":""},"type":"n8n-nodes-base.code","typeVersion":2,"position":[560,0],"id":"1e10c6f9-f3df-4c97-9f0c-a5aa95c9d5db","name":"Secret Payload"},{"parameters":{"operation":"sign","useJson":true,"claimsJson":"{\\n  \\"iss\\": \\"{{ $json.client_email }}\\",\\n  \\"scope\\": \\"https://www.googleapis.com/auth/cloud...\\",\\n  \\"aud\\": \\"https://oauth2.googleapis.com/token\\",\\n  \\"iat\\": {{ Math.floor($now.toSeconds()) }},\\n  \\"exp\\": {{ Math.floor($now.plus({ seconds: 3600 }).toSeconds()) }}\\n}","options":{}},"type":"n8n-nodes-base.jwt","typeVersion":1,"position":[768,0],"id":"d196a1d6-ccc8-4670-bb16-526ab6ae3d02","name":"JWT","credentials":{"jwtAuth":{"id":"tjmNBhpI5x7qf11y","name":"JWT Auth account"}}}],"connections":{"Schedule Trigger":{"main":[[{"node":"Generate Prompt","type":"main","index":0}]]},"Structured Output Parser":{"ai_outputParser":[[{"node":"Generate Prompt","type":"ai_outputParser","index":0}]]},"Google Gemini Chat Model":{"ai_languageModel":[[{"node":"Generate Prompt","type":"ai_languageModel","index":0}]]},"Generate Prompt":{"main":[[{"node":"Secret Payload","type":"main","index":0}]]},"Secret Payload":{"main":[[{"node":"JWT","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","availableInMCP":false},"pinData":{}}	[{"version":1,"startData":"1","resultData":"2","executionData":"3"},{"destinationNode":"4","runNodeFilter":"5"},{"runData":"6","pinData":"7","lastNodeExecuted":"8"},{"contextData":"9","nodeExecutionStack":"10","metadata":"11","waitingExecution":"12","waitingExecutionSource":"13","runtimeData":"14"},{"nodeName":"15","mode":"16"},["17","18","8"],{"Schedule Trigger":"19","Google Gemini Chat Model":"20","Structured Output Parser":"21","Generate Prompt":"22","Secret Payload":"23"},{},"Secret Payload",{},[],{"Google Gemini Chat Model":"24","Structured Output Parser":"25"},{},{},{"version":1,"establishedAt":1767966122031,"source":"26","triggerNode":"27"},"JWT","exclusive","Schedule Trigger","Generate Prompt",["28"],["29"],["30"],["31"],["32"],["33"],["34"],"manual",{"name":"17","type":"35"},{"startTime":1767966122033,"executionIndex":0,"source":"36","hints":"37","executionTime":13,"executionStatus":"38","data":"39"},{"startTime":1767966142244,"executionTime":6189,"executionIndex":2,"executionStatus":"38","source":"40","data":"41","inputOverride":"42","metadata":"43"},{"startTime":1767966148441,"executionTime":1,"executionIndex":3,"executionStatus":"38","source":"44","data":"45","inputOverride":"46","metadata":"47"},{"startTime":1767966122053,"executionIndex":1,"source":"48","hints":"49","executionTime":26390,"executionStatus":"38","data":"50"},{"startTime":1767966148444,"executionIndex":4,"source":"51","hints":"52","executionTime":96,"executionStatus":"38","data":"53"},{"subRun":"54"},{"subRun":"55"},"n8n-nodes-base.scheduleTrigger",[],[],"success",{"main":"56"},["57"],{"ai_languageModel":"58"},{"ai_languageModel":"59"},{"subRun":"54"},["60"],{"ai_outputParser":"61"},{"ai_outputParser":"62"},{"subRun":"55"},["63"],[],{"main":"64"},["65"],[],{"main":"66"},["67"],["68"],["69"],{"previousNode":"18","previousNodeRun":0},["70"],["71"],{"previousNode":"18","previousNodeRun":0},["72"],["73"],{"previousNode":"17"},["74"],{"previousNode":"18"},["75"],{"node":"76","runIndex":0},{"node":"77","runIndex":0},["78"],["79"],["80"],["81"],["82"],["83"],["84"],"Google Gemini Chat Model","Structured Output Parser",{"json":"85","pairedItem":"86"},{"json":"87"},{"json":"88"},{"json":"89"},{"json":"90"},{"json":"91","pairedItem":"92"},{"json":"93","pairedItem":"94"},{"timestamp":"95","Readable date":"96","Readable time":"97","Day of week":"98","Year":"99","Month":"100","Day of month":"101","Hour":"102","Minute":"103","Second":"104","Timezone":"105"},{"item":0},{"response":"106","tokenUsage":"107"},{"messages":"108","estimatedTokens":942,"options":"109"},{"action":"110","response":"91"},{"action":"110","text":"111"},{"output":"112"},{"item":0},{"type":"113","project_id":"114","private_key_id":"115","client_email":"116","client_id":"117","auth_uri":"118","token_uri":"119","auth_provider_x509_cert_url":"120","client_x509_cert_url":"121","universe_domain":"122"},{"item":0},"2026-01-09T08:42:02.037-05:00","January 9th 2026, 8:42:02 am","8:42:02 am","Friday","2026","January","09","08","42","02","America/New_York (UTC-05:00)",{"generations":"123"},{"completionTokens":335,"promptTokens":952,"totalTokens":1287},["124"],{"google_api_key":"125","base_url":"126","model":"127"},"parse","```json\\n{\\n\\"output\\": {\\n\\"promp\\": \\"Vertical smartphone video, 9:16 portrait aspect ratio. Ultra-sharp macro lens style, very shallow depth of field, soft bokeh background, cinematic lighting, 4K quality, 30 FPS. Beautiful slow motion. A whole, full-shaped starfruit, made entirely of transparent jelly glass with a soft, pale yellow-green outer hue, is perfectly centered on a clean wooden cutting board. Studio lighting casts subtle glowing highlights across the transparent jelly surface of the starfruit. A clearly visible human hand, with a neutral skin tone, holds a sharp stainless steel knife just above the starfruit, poised to slice. The knife performs exactly two clean slices. First, the front section of the jelly starfruit breaks off cleanly with a delicate jelly-crack and soft slicing ASMR sound. Immediately after, the second slice cuts another smooth piece from the starfruit. A few tiny transparent jelly shards scatter lightly from both cuts. Only ASMR sounds: crisp jelly-glass cutting, subtle cracking, small shards falling. Absolutely no talking, no voice, no background music, no other sound effects. Only the human hand, the knife, the jelly starfruit, and the wooden cutting board are visible within the frame; nothing else enters or exits the shot.\\",\\n\\"videoTitle\\": \\"Hypnotizing Jelly Starfruit Cut ASMR\\",\\n\\"videoDescription\\": \\"Prepare for pure satisfaction! This transparent jelly starfruit is cut into perfect, mesmerizing slices with incredible ASMR sounds. ✨ #JellyFruit #ASMR #Starfruit #Satisfying\\"\\n}\\n}\\n```",{"promp":"128","videoTitle":"129","videoDescription":"130"},"service_account","my-project-asmr-483803","60ac25a662328559cf71ebccce126c2047739e8f","asmr-video-creator-service-acc@my-project-asmr-483803.iam.gserviceaccount.com","100032661901089471171","https://accounts.google.com/o/oauth2/auth","https://oauth2.googleapis.com/token","https://www.googleapis.com/oauth2/v1/certs","https://www.googleapis.com/robot/v1/metadata/x509/asmr-video-creator-service-acc%40my-project-asmr-483803.iam.gserviceaccount.com","googleapis.com",["131"],"System: You are an expert at creating hyper-detailed, ASMR-style vertical video prompts for AI video generation tools (Runway, Kling, Luma, etc.).  Create ONE complete, ready-to-copy prompt for a vertical smartphone video (9:16 aspect ratio, physically shot in portrait mode — never simulate by cropping or rotating horizontal footage).  The subject must be: a whole, full-shaped [RANDOM FRUIT] made entirely of transparent jelly glass with a soft, light-colored outer hue that matches the real fruit's typical color but in a very pale, translucent version (for example: pale yellow-green for kiwi, gentle pinkish-red for dragon fruit, soft orange for persimmon, light purple for fig, etc.).  Rules that must stay exactly the same in every version: - The glass fruit is perfectly centered on a clean wooden cutting board - Studio lighting with subtle glowing highlights on the transparent jelly surface - A clearly visible human hand (neutral skin tone) holds a sharp stainless steel knife just above the fruit, poised to slice - Shot in ultra-sharp macro lens style with very shallow depth of field - Cinematic lighting, soft bokeh background, 4K quality, 30 FPS - In beautiful slow motion, the knife performs exactly two clean slices:   • First slice: front section breaks off cleanly with delicate jelly-crack and soft slicing ASMR sounds   • Immediately after: second slice cuts another smooth piece - A few tiny transparent jelly shards scatter lightly from both cuts - Only ASMR sounds: crisp jelly-glass cutting, subtle cracking, small shards falling — absolutely no talking, no voice, no background music, no other sound effects - Only the hand, knife, fruit and board are visible — nothing else enters the frame  Important: Choose a completely different realistic fruit for each prompt you generate (never repeat the same fruit — no Rambutan, and avoid repeating across generations). Examples of fruits to cycle through: kiwi, dragon fruit, persimmon, fig, lychee, passion fruit, starfruit, guava, pomegranate, apricot, plum, peach, mango, pear, strawberry (whole), etc.  At the end of each prompt you create, add these two extra lines:  Video Title: [Create a short, clickbait-attractive but clean English title that would work well for YouTube Shorts / TikTok / Instagram Reels — 5–10 words max]  Caption: [Create a short, engaging 1–2 sentence English caption that would be pasted under the video on social media, including 2–4 relevant hashtags]  Output only the single full prompt + the title + the caption — nothing else. Do not explain or add commentary.\\n\\nMake your output in json format:\\n{\\n\\"promp\\":\\"<insert generated promp here>\\",\\n\\"videoTitle\\":\\"<insert generated video title here>\\",\\n\\"videoDescription\\":\\"<insert generated video description here>\\"\\n}\\nHuman: Generate ASMR\\nYou must format your output as a JSON value that adheres to a given \\"JSON Schema\\" instance.\\n\\n\\"JSON Schema\\" is a declarative language that allows you to annotate and validate JSON documents.\\n\\nFor example, the example \\"JSON Schema\\" instance {{\\"properties\\": {{\\"foo\\": {{\\"description\\": \\"a list of test words\\", \\"type\\": \\"array\\", \\"items\\": {{\\"type\\": \\"string\\"}}}}}}, \\"required\\": [\\"foo\\"]}}}}\\nwould match an object with one required property, \\"foo\\". The \\"type\\" property specifies \\"foo\\" must be an \\"array\\", and the \\"description\\" property semantically describes it as \\"a list of test words\\". The items within \\"foo\\" must be strings.\\nThus, the object {{\\"foo\\": [\\"bar\\", \\"baz\\"]}} is a well-formatted instance of this example \\"JSON Schema\\". The object {{\\"properties\\": {{\\"foo\\": [\\"bar\\", \\"baz\\"]}}}} is not well-formatted.\\n\\nYour output will be parsed and type-checked according to the provided schema instance, so make sure all fields in your output match the schema exactly and there are no trailing commas!\\n\\nHere is the JSON Schema instance your output must adhere to. Include the enclosing markdown codeblock:\\n```json\\n{\\"type\\":\\"object\\",\\"properties\\":{\\"output\\":{\\"type\\":\\"object\\",\\"properties\\":{\\"promp\\":{\\"type\\":\\"string\\"},\\"videoTitle\\":{\\"type\\":\\"string\\"},\\"videoDescription\\":{\\"type\\":\\"string\\"}},\\"required\\":[\\"promp\\",\\"videoTitle\\",\\"videoDescription\\"],\\"additionalProperties\\":false}},\\"required\\":[\\"output\\"],\\"additionalProperties\\":false,\\"$schema\\":\\"http://json-schema.org/draft-07/schema#\\"}\\n```\\n",{"lc":1,"type":"132","id":"133"},"https://generativelanguage.googleapis.com","gemini-2.5-flash","Vertical smartphone video, 9:16 portrait aspect ratio. Ultra-sharp macro lens style, very shallow depth of field, soft bokeh background, cinematic lighting, 4K quality, 30 FPS. Beautiful slow motion. A whole, full-shaped starfruit, made entirely of transparent jelly glass with a soft, pale yellow-green outer hue, is perfectly centered on a clean wooden cutting board. Studio lighting casts subtle glowing highlights across the transparent jelly surface of the starfruit. A clearly visible human hand, with a neutral skin tone, holds a sharp stainless steel knife just above the starfruit, poised to slice. The knife performs exactly two clean slices. First, the front section of the jelly starfruit breaks off cleanly with a delicate jelly-crack and soft slicing ASMR sound. Immediately after, the second slice cuts another smooth piece from the starfruit. A few tiny transparent jelly shards scatter lightly from both cuts. Only ASMR sounds: crisp jelly-glass cutting, subtle cracking, small shards falling. Absolutely no talking, no voice, no background music, no other sound effects. Only the human hand, the knife, the jelly starfruit, and the wooden cutting board are visible within the frame; nothing else enters or exits the shot.","Hypnotizing Jelly Starfruit Cut ASMR","Prepare for pure satisfaction! This transparent jelly starfruit is cut into perfect, mesmerizing slices with incredible ASMR sounds. ✨ #JellyFruit #ASMR #Starfruit #Satisfying",["134"],"secret",["135"],{"text":"111","generationInfo":"136"},"GOOGLE_API_KEY",{"finishReason":"137","index":0},"STOP"]	e00dad2a-d538-44c6-a8fb-b9405de2f854
6	{"id":"LeagmHK_nal3-d2hiaOIn","name":"ASMR video creator","active":false,"activeVersionId":null,"nodes":[{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[0,0],"id":"a05d964a-34e6-4b64-94d1-71bfd238de82","name":"Schedule Trigger"},{"parameters":{"notice":"","schemaType":"fromJson","jsonSchemaExample":"{\\n\\"promp\\":\\"<insert generated promp here>\\",\\n\\"videoTitle\\":\\"<insert generated video title here>\\",\\n\\"videoDescription\\":\\"<insert generated video description here>\\"\\n}","autoFix":false},"type":"@n8n/n8n-nodes-langchain.outputParserStructured","typeVersion":1.3,"position":[352,208],"id":"754476f4-466e-4b4d-a813-d6e4d9f1f8e7","name":"Structured Output Parser"},{"parameters":{"notice":"","modelName":"models/gemini-2.5-flash","options":{}},"type":"@n8n/n8n-nodes-langchain.lmChatGoogleGemini","typeVersion":1,"position":[96,208],"id":"4852dd1f-d5cb-475f-b0ee-017184d9824c","name":"Google Gemini Chat Model","credentials":{"googlePalmApi":{"id":"B5Wm4iIJlAdZYfwY","name":"Google Gemini(PaLM) Api account"}}},{"parameters":{"notice":"","promptType":"define","text":"Generate ASMR","hasOutputParser":true,"needsFallback":false,"messages":{"messageValues":[{"type":"SystemMessagePromptTemplate","message":"=You are an expert at creating hyper-detailed, ASMR-style vertical video prompts for AI video generation tools (Runway, Kling, Luma, etc.).  Create ONE complete, ready-to-copy prompt for a vertical smartphone video (9:16 aspect ratio, physically shot in portrait mode — never simulate by cropping or rotating horizontal footage).  The subject must be: a whole, full-shaped [RANDOM FRUIT] made entirely of transparent jelly glass with a soft, light-colored outer hue that matches the real fruit's typical color but in a very pale, translucent version (for example: pale yellow-green for kiwi, gentle pinkish-red for dragon fruit, soft orange for persimmon, light purple for fig, etc.).  Rules that must stay exactly the same in every version: - The glass fruit is perfectly centered on a clean wooden cutting board - Studio lighting with subtle glowing highlights on the transparent jelly surface - A clearly visible human hand (neutral skin tone) holds a sharp stainless steel knife just above the fruit, poised to slice - Shot in ultra-sharp macro lens style with very shallow depth of field - Cinematic lighting, soft bokeh background, 4K quality, 30 FPS - In beautiful slow motion, the knife performs exactly two clean slices:   • First slice: front section breaks off cleanly with delicate jelly-crack and soft slicing ASMR sounds   • Immediately after: second slice cuts another smooth piece - A few tiny transparent jelly shards scatter lightly from both cuts - Only ASMR sounds: crisp jelly-glass cutting, subtle cracking, small shards falling — absolutely no talking, no voice, no background music, no other sound effects - Only the hand, knife, fruit and board are visible — nothing else enters the frame  Important: Choose a completely different realistic fruit for each prompt you generate (never repeat the same fruit — no Rambutan, and avoid repeating across generations). Examples of fruits to cycle through: kiwi, dragon fruit, persimmon, fig, lychee, passion fruit, starfruit, guava, pomegranate, apricot, plum, peach, mango, pear, strawberry (whole), etc.  At the end of each prompt you create, add these two extra lines:  Video Title: [Create a short, clickbait-attractive but clean English title that would work well for YouTube Shorts / TikTok / Instagram Reels — 5–10 words max]  Caption: [Create a short, engaging 1–2 sentence English caption that would be pasted under the video on social media, including 2–4 relevant hashtags]  Output only the single full prompt + the title + the caption — nothing else. Do not explain or add commentary.\\n\\nMake your output in json format:\\n{\\n\\"promp\\":\\"<insert generated promp here>\\",\\n\\"videoTitle\\":\\"<insert generated video title here>\\",\\n\\"videoDescription\\":\\"<insert generated video description here>\\"\\n}"}]},"batching":{}},"type":"@n8n/n8n-nodes-langchain.chainLlm","typeVersion":1.9,"position":[208,0],"id":"e82e512d-549c-4523-9c2d-438c0bcec11b","name":"Generate Prompt"},{"parameters":{"mode":"runOnceForAllItems","language":"javaScript","jsCode":"return [\\n  {\\n  \\"type\\": \\"service_account\\",\\n  \\"project_id\\": \\"my-project-asmr-483803\\",\\n  \\"private_key_id\\": \\"60ac25a662328559cf71ebccce126c2047739e8f\\",\\n  \\"client_email\\": \\"asmr-video-creator-service-acc@my-project-asmr-483803.iam.gserviceaccount.com\\",\\n  \\"client_id\\": \\"100032661901089471171\\",\\n  \\"auth_uri\\": \\"https://accounts.google.com/o/oauth2/auth\\",\\n  \\"token_uri\\": \\"https://oauth2.googleapis.com/token\\",\\n  \\"auth_provider_x509_cert_url\\": \\"https://www.googleapis.com/oauth2/v1/certs\\",\\n  \\"client_x509_cert_url\\": \\"https://www.googleapis.com/robot/v1/metadata/x509/asmr-video-creator-service-acc%40my-project-asmr-483803.iam.gserviceaccount.com\\",\\n  \\"universe_domain\\": \\"googleapis.com\\"\\n}\\n]","notice":""},"type":"n8n-nodes-base.code","typeVersion":2,"position":[560,0],"id":"1e10c6f9-f3df-4c97-9f0c-a5aa95c9d5db","name":"Secret Payload"},{"parameters":{"operation":"sign","useJson":true,"claimsJson":"{\\n  \\"iss\\": \\"{{ $json.client_email }}\\",\\n  \\"scope\\": \\"https://www.googleapis.com/auth/cloud...\\",\\n  \\"aud\\": \\"https://oauth2.googleapis.com/token\\",\\n  \\"iat\\": {{ Math.floor($now.toSeconds()) }},\\n  \\"exp\\": {{ Math.floor($now.plus({ seconds: 3600 }).toSeconds()) }}\\n}","options":{}},"type":"n8n-nodes-base.jwt","typeVersion":1,"position":[768,0],"id":"d196a1d6-ccc8-4670-bb16-526ab6ae3d02","name":"JWT","credentials":{"jwtAuth":{"id":"tjmNBhpI5x7qf11y","name":"JWT Auth account"}}}],"connections":{"Schedule Trigger":{"main":[[{"node":"Generate Prompt","type":"main","index":0}]]},"Structured Output Parser":{"ai_outputParser":[[{"node":"Generate Prompt","type":"ai_outputParser","index":0}]]},"Google Gemini Chat Model":{"ai_languageModel":[[{"node":"Generate Prompt","type":"ai_languageModel","index":0}]]},"Generate Prompt":{"main":[[{"node":"Secret Payload","type":"main","index":0}]]},"Secret Payload":{"main":[[{"node":"JWT","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","availableInMCP":false},"pinData":{}}	[{"version":1,"startData":"1","resultData":"2","executionData":"3"},{},{"error":"4","runData":"5"},{"contextData":"6","nodeExecutionStack":"7","metadata":"8","waitingExecution":"9","waitingExecutionSource":"10"},{"level":"11","tags":"12","timestamp":1767966160008,"context":"13","functionality":"14","name":"15","message":"16","stack":"17"},{},{},[],{},{},{},"warning",{},{},"regular","WorkflowHasIssuesError","The workflow has issues and cannot be executed for that reason. Please fix them first.","WorkflowHasIssuesError: The workflow has issues and cannot be executed for that reason. Please fix them first.\\n    at WorkflowExecute.checkForWorkflowIssues (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+sdk-trace-base@1.30_ec37920eb95917b28efaa783206b20f3/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1328:10)\\n    at WorkflowExecute.processRunExecutionData (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+sdk-trace-base@1.30_ec37920eb95917b28efaa783206b20f3/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1407:8)\\n    at WorkflowExecute.runPartialWorkflow2 (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+sdk-trace-base@1.30_ec37920eb95917b28efaa783206b20f3/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:282:15)\\n    at ManualExecutionService.runManually (/usr/local/lib/node_modules/n8n/src/manual-execution.service.ts:176:27)\\n    at WorkflowRunner.runMainProcess (/usr/local/lib/node_modules/n8n/src/workflow-runner.ts:300:53)\\n    at processTicksAndRejections (node:internal/process/task_queues:105:5)\\n    at WorkflowRunner.run (/usr/local/lib/node_modules/n8n/src/workflow-runner.ts:176:4)\\n    at WorkflowExecutionService.executeManually (/usr/local/lib/node_modules/n8n/src/workflows/workflow-execution.service.ts:242:24)\\n    at WorkflowsController.runManually (/usr/local/lib/node_modules/n8n/src/workflows/workflows.controller.ts:606:10)\\n    at handler (/usr/local/lib/node_modules/n8n/src/controller.registry.ts:95:12)"]	e00dad2a-d538-44c6-a8fb-b9405de2f854
7	{"id":"LeagmHK_nal3-d2hiaOIn","name":"ASMR video creator","active":false,"activeVersionId":null,"nodes":[{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[0,0],"id":"a05d964a-34e6-4b64-94d1-71bfd238de82","name":"Schedule Trigger"},{"parameters":{"notice":"","schemaType":"fromJson","jsonSchemaExample":"{\\n\\"promp\\":\\"<insert generated promp here>\\",\\n\\"videoTitle\\":\\"<insert generated video title here>\\",\\n\\"videoDescription\\":\\"<insert generated video description here>\\"\\n}","autoFix":false},"type":"@n8n/n8n-nodes-langchain.outputParserStructured","typeVersion":1.3,"position":[352,208],"id":"754476f4-466e-4b4d-a813-d6e4d9f1f8e7","name":"Structured Output Parser"},{"parameters":{"notice":"","modelName":"models/gemini-2.5-flash","options":{}},"type":"@n8n/n8n-nodes-langchain.lmChatGoogleGemini","typeVersion":1,"position":[96,208],"id":"4852dd1f-d5cb-475f-b0ee-017184d9824c","name":"Google Gemini Chat Model","credentials":{"googlePalmApi":{"id":"B5Wm4iIJlAdZYfwY","name":"Google Gemini(PaLM) Api account"}}},{"parameters":{"notice":"","promptType":"define","text":"Generate ASMR","hasOutputParser":true,"needsFallback":false,"messages":{"messageValues":[{"type":"SystemMessagePromptTemplate","message":"=You are an expert at creating hyper-detailed, ASMR-style vertical video prompts for AI video generation tools (Runway, Kling, Luma, etc.).  Create ONE complete, ready-to-copy prompt for a vertical smartphone video (9:16 aspect ratio, physically shot in portrait mode — never simulate by cropping or rotating horizontal footage).  The subject must be: a whole, full-shaped [RANDOM FRUIT] made entirely of transparent jelly glass with a soft, light-colored outer hue that matches the real fruit's typical color but in a very pale, translucent version (for example: pale yellow-green for kiwi, gentle pinkish-red for dragon fruit, soft orange for persimmon, light purple for fig, etc.).  Rules that must stay exactly the same in every version: - The glass fruit is perfectly centered on a clean wooden cutting board - Studio lighting with subtle glowing highlights on the transparent jelly surface - A clearly visible human hand (neutral skin tone) holds a sharp stainless steel knife just above the fruit, poised to slice - Shot in ultra-sharp macro lens style with very shallow depth of field - Cinematic lighting, soft bokeh background, 4K quality, 30 FPS - In beautiful slow motion, the knife performs exactly two clean slices:   • First slice: front section breaks off cleanly with delicate jelly-crack and soft slicing ASMR sounds   • Immediately after: second slice cuts another smooth piece - A few tiny transparent jelly shards scatter lightly from both cuts - Only ASMR sounds: crisp jelly-glass cutting, subtle cracking, small shards falling — absolutely no talking, no voice, no background music, no other sound effects - Only the hand, knife, fruit and board are visible — nothing else enters the frame  Important: Choose a completely different realistic fruit for each prompt you generate (never repeat the same fruit — no Rambutan, and avoid repeating across generations). Examples of fruits to cycle through: kiwi, dragon fruit, persimmon, fig, lychee, passion fruit, starfruit, guava, pomegranate, apricot, plum, peach, mango, pear, strawberry (whole), etc.  At the end of each prompt you create, add these two extra lines:  Video Title: [Create a short, clickbait-attractive but clean English title that would work well for YouTube Shorts / TikTok / Instagram Reels — 5–10 words max]  Caption: [Create a short, engaging 1–2 sentence English caption that would be pasted under the video on social media, including 2–4 relevant hashtags]  Output only the single full prompt + the title + the caption — nothing else. Do not explain or add commentary.\\n\\nMake your output in json format:\\n{\\n\\"promp\\":\\"<insert generated promp here>\\",\\n\\"videoTitle\\":\\"<insert generated video title here>\\",\\n\\"videoDescription\\":\\"<insert generated video description here>\\"\\n}"}]},"batching":{}},"type":"@n8n/n8n-nodes-langchain.chainLlm","typeVersion":1.9,"position":[208,0],"id":"e82e512d-549c-4523-9c2d-438c0bcec11b","name":"Generate Prompt"},{"parameters":{"mode":"runOnceForAllItems","language":"javaScript","jsCode":"return [\\n  {\\n  \\"type\\": \\"service_account\\",\\n  \\"project_id\\": \\"my-project-asmr-483803\\",\\n  \\"private_key_id\\": \\"60ac25a662328559cf71ebccce126c2047739e8f\\",\\n  \\"client_email\\": \\"asmr-video-creator-service-acc@my-project-asmr-483803.iam.gserviceaccount.com\\",\\n  \\"client_id\\": \\"100032661901089471171\\",\\n  \\"auth_uri\\": \\"https://accounts.google.com/o/oauth2/auth\\",\\n  \\"token_uri\\": \\"https://oauth2.googleapis.com/token\\",\\n  \\"auth_provider_x509_cert_url\\": \\"https://www.googleapis.com/oauth2/v1/certs\\",\\n  \\"client_x509_cert_url\\": \\"https://www.googleapis.com/robot/v1/metadata/x509/asmr-video-creator-service-acc%40my-project-asmr-483803.iam.gserviceaccount.com\\",\\n  \\"universe_domain\\": \\"googleapis.com\\"\\n}\\n]","notice":""},"type":"n8n-nodes-base.code","typeVersion":2,"position":[560,0],"id":"1e10c6f9-f3df-4c97-9f0c-a5aa95c9d5db","name":"Secret Payload"},{"parameters":{"operation":"sign","useJson":true,"claimsJson":"{\\n  \\"iss\\": \\"{{ $json.client_email }}\\",\\n  \\"scope\\": \\"https://www.googleapis.com/auth/cloud...\\",\\n  \\"aud\\": \\"https://oauth2.googleapis.com/token\\",\\n  \\"iat\\": {{ Math.floor($now.toSeconds()) }},\\n  \\"exp\\": {{ Math.floor($now.plus({ seconds: 3600 }).toSeconds()) }}\\n}","options":{}},"type":"n8n-nodes-base.jwt","typeVersion":1,"position":[768,0],"id":"d196a1d6-ccc8-4670-bb16-526ab6ae3d02","name":"JWT","credentials":{"jwtAuth":{"id":"tjmNBhpI5x7qf11y","name":"JWT Auth account"}}}],"connections":{"Schedule Trigger":{"main":[[{"node":"Generate Prompt","type":"main","index":0}]]},"Structured Output Parser":{"ai_outputParser":[[{"node":"Generate Prompt","type":"ai_outputParser","index":0}]]},"Google Gemini Chat Model":{"ai_languageModel":[[{"node":"Generate Prompt","type":"ai_languageModel","index":0}]]},"Generate Prompt":{"main":[[{"node":"Secret Payload","type":"main","index":0}]]},"Secret Payload":{"main":[[{"node":"JWT","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","availableInMCP":false},"pinData":{}}	[{"version":1,"startData":"1","resultData":"2","executionData":"3"},{"destinationNode":"4","runNodeFilter":"5"},{"runData":"6","pinData":"7","lastNodeExecuted":"8"},{"contextData":"9","nodeExecutionStack":"10","metadata":"11","waitingExecution":"12","waitingExecutionSource":"13","runtimeData":"14"},{"nodeName":"15","mode":"16"},["17","18","8"],{"Schedule Trigger":"19","Google Gemini Chat Model":"20","Structured Output Parser":"21","Generate Prompt":"22","Secret Payload":"23"},{},"Secret Payload",{},[],{"Google Gemini Chat Model":"24","Structured Output Parser":"25"},{},{},{"version":1,"establishedAt":1767966197957,"source":"26","triggerNode":"27"},"JWT","exclusive","Schedule Trigger","Generate Prompt",["28"],["29"],["30"],["31"],["32"],["33"],["34"],"manual",{"name":"17","type":"35"},{"startTime":1767966197959,"executionIndex":0,"source":"36","hints":"37","executionTime":5,"executionStatus":"38","data":"39"},{"startTime":1767966198546,"executionTime":6468,"executionIndex":2,"executionStatus":"38","source":"40","data":"41","inputOverride":"42","metadata":"43"},{"startTime":1767966205040,"executionTime":1,"executionIndex":3,"executionStatus":"38","source":"44","data":"45","inputOverride":"46","metadata":"47"},{"startTime":1767966197966,"executionIndex":1,"source":"48","hints":"49","executionTime":7076,"executionStatus":"38","data":"50"},{"startTime":1767966205042,"executionIndex":4,"source":"51","hints":"52","executionTime":6,"executionStatus":"38","data":"53"},{"subRun":"54"},{"subRun":"55"},"n8n-nodes-base.scheduleTrigger",[],[],"success",{"main":"56"},["57"],{"ai_languageModel":"58"},{"ai_languageModel":"59"},{"subRun":"54"},["60"],{"ai_outputParser":"61"},{"ai_outputParser":"62"},{"subRun":"55"},["63"],[],{"main":"64"},["65"],[],{"main":"66"},["67"],["68"],["69"],{"previousNode":"18","previousNodeRun":0},["70"],["71"],{"previousNode":"18","previousNodeRun":0},["72"],["73"],{"previousNode":"17"},["74"],{"previousNode":"18"},["75"],{"node":"76","runIndex":0},{"node":"77","runIndex":0},["78"],["79"],["80"],["81"],["82"],["83"],["84"],"Google Gemini Chat Model","Structured Output Parser",{"json":"85","pairedItem":"86"},{"json":"87"},{"json":"88"},{"json":"89"},{"json":"90"},{"json":"91","pairedItem":"92"},{"json":"93","pairedItem":"94"},{"timestamp":"95","Readable date":"96","Readable time":"97","Day of week":"98","Year":"99","Month":"100","Day of month":"101","Hour":"102","Minute":"103","Second":"104","Timezone":"105"},{"item":0},{"response":"106","tokenUsage":"107"},{"messages":"108","estimatedTokens":942,"options":"109"},{"action":"110","response":"91"},{"action":"110","text":"111"},{"output":"112"},{"item":0},{"type":"113","project_id":"114","private_key_id":"115","client_email":"116","client_id":"117","auth_uri":"118","token_uri":"119","auth_provider_x509_cert_url":"120","client_x509_cert_url":"121","universe_domain":"122"},{"item":0},"2026-01-09T08:43:17.962-05:00","January 9th 2026, 8:43:17 am","8:43:17 am","Friday","2026","January","09","08","43","17","America/New_York (UTC-05:00)",{"generations":"123"},{"completionTokens":295,"promptTokens":952,"totalTokens":1247},["124"],{"google_api_key":"125","base_url":"126","model":"127"},"parse","```json\\n{\\n  \\"output\\": {\\n    \\"promp\\": \\"Vertical video, 9:16 aspect ratio. Ultra-sharp macro lens style, very shallow depth of field, 4K, 30 FPS, beautiful slow motion. Cinematic studio lighting with soft bokeh background. A whole, full-shaped persimmon fruit, rendered entirely from transparent jelly glass with a soft, pale orange outer hue, is perfectly centered on a clean wooden cutting board. Subtle glowing highlights shimmer on the transparent jelly surface. A human hand with neutral skin tone holds a sharp stainless steel knife poised just above the persimmon. In slow motion, the knife executes the first clean slice: the front section breaks off cleanly with delicate jelly-crack and soft slicing ASMR sounds. Immediately after, the knife performs a second smooth slice, cutting another piece. A few tiny transparent jelly shards scatter lightly from both cuts. Only ASMR sounds are present: crisp jelly-glass cutting, subtle cracking, and small shards falling. No talking, no voice, no music, no other sound effects. Only the hand, knife, fruit, and board are visible within the frame.\\",\\n    \\"videoTitle\\": \\"Satisfying Jelly Persimmon Slice ASMR\\",\\n    \\"videoDescription\\": \\"Watch this mesmerizing jelly persimmon being perfectly sliced! The sounds are so relaxing. 🍊✨ #ASMR #JellyFruit #Satisfying\\"\\n  }\\n}\\n```",{"promp":"128","videoTitle":"129","videoDescription":"130"},"service_account","my-project-asmr-483803","60ac25a662328559cf71ebccce126c2047739e8f","asmr-video-creator-service-acc@my-project-asmr-483803.iam.gserviceaccount.com","100032661901089471171","https://accounts.google.com/o/oauth2/auth","https://oauth2.googleapis.com/token","https://www.googleapis.com/oauth2/v1/certs","https://www.googleapis.com/robot/v1/metadata/x509/asmr-video-creator-service-acc%40my-project-asmr-483803.iam.gserviceaccount.com","googleapis.com",["131"],"System: You are an expert at creating hyper-detailed, ASMR-style vertical video prompts for AI video generation tools (Runway, Kling, Luma, etc.).  Create ONE complete, ready-to-copy prompt for a vertical smartphone video (9:16 aspect ratio, physically shot in portrait mode — never simulate by cropping or rotating horizontal footage).  The subject must be: a whole, full-shaped [RANDOM FRUIT] made entirely of transparent jelly glass with a soft, light-colored outer hue that matches the real fruit's typical color but in a very pale, translucent version (for example: pale yellow-green for kiwi, gentle pinkish-red for dragon fruit, soft orange for persimmon, light purple for fig, etc.).  Rules that must stay exactly the same in every version: - The glass fruit is perfectly centered on a clean wooden cutting board - Studio lighting with subtle glowing highlights on the transparent jelly surface - A clearly visible human hand (neutral skin tone) holds a sharp stainless steel knife just above the fruit, poised to slice - Shot in ultra-sharp macro lens style with very shallow depth of field - Cinematic lighting, soft bokeh background, 4K quality, 30 FPS - In beautiful slow motion, the knife performs exactly two clean slices:   • First slice: front section breaks off cleanly with delicate jelly-crack and soft slicing ASMR sounds   • Immediately after: second slice cuts another smooth piece - A few tiny transparent jelly shards scatter lightly from both cuts - Only ASMR sounds: crisp jelly-glass cutting, subtle cracking, small shards falling — absolutely no talking, no voice, no background music, no other sound effects - Only the hand, knife, fruit and board are visible — nothing else enters the frame  Important: Choose a completely different realistic fruit for each prompt you generate (never repeat the same fruit — no Rambutan, and avoid repeating across generations). Examples of fruits to cycle through: kiwi, dragon fruit, persimmon, fig, lychee, passion fruit, starfruit, guava, pomegranate, apricot, plum, peach, mango, pear, strawberry (whole), etc.  At the end of each prompt you create, add these two extra lines:  Video Title: [Create a short, clickbait-attractive but clean English title that would work well for YouTube Shorts / TikTok / Instagram Reels — 5–10 words max]  Caption: [Create a short, engaging 1–2 sentence English caption that would be pasted under the video on social media, including 2–4 relevant hashtags]  Output only the single full prompt + the title + the caption — nothing else. Do not explain or add commentary.\\n\\nMake your output in json format:\\n{\\n\\"promp\\":\\"<insert generated promp here>\\",\\n\\"videoTitle\\":\\"<insert generated video title here>\\",\\n\\"videoDescription\\":\\"<insert generated video description here>\\"\\n}\\nHuman: Generate ASMR\\nYou must format your output as a JSON value that adheres to a given \\"JSON Schema\\" instance.\\n\\n\\"JSON Schema\\" is a declarative language that allows you to annotate and validate JSON documents.\\n\\nFor example, the example \\"JSON Schema\\" instance {{\\"properties\\": {{\\"foo\\": {{\\"description\\": \\"a list of test words\\", \\"type\\": \\"array\\", \\"items\\": {{\\"type\\": \\"string\\"}}}}}}, \\"required\\": [\\"foo\\"]}}}}\\nwould match an object with one required property, \\"foo\\". The \\"type\\" property specifies \\"foo\\" must be an \\"array\\", and the \\"description\\" property semantically describes it as \\"a list of test words\\". The items within \\"foo\\" must be strings.\\nThus, the object {{\\"foo\\": [\\"bar\\", \\"baz\\"]}} is a well-formatted instance of this example \\"JSON Schema\\". The object {{\\"properties\\": {{\\"foo\\": [\\"bar\\", \\"baz\\"]}}}} is not well-formatted.\\n\\nYour output will be parsed and type-checked according to the provided schema instance, so make sure all fields in your output match the schema exactly and there are no trailing commas!\\n\\nHere is the JSON Schema instance your output must adhere to. Include the enclosing markdown codeblock:\\n```json\\n{\\"type\\":\\"object\\",\\"properties\\":{\\"output\\":{\\"type\\":\\"object\\",\\"properties\\":{\\"promp\\":{\\"type\\":\\"string\\"},\\"videoTitle\\":{\\"type\\":\\"string\\"},\\"videoDescription\\":{\\"type\\":\\"string\\"}},\\"required\\":[\\"promp\\",\\"videoTitle\\",\\"videoDescription\\"],\\"additionalProperties\\":false}},\\"required\\":[\\"output\\"],\\"additionalProperties\\":false,\\"$schema\\":\\"http://json-schema.org/draft-07/schema#\\"}\\n```\\n",{"lc":1,"type":"132","id":"133"},"https://generativelanguage.googleapis.com","gemini-2.5-flash","Vertical video, 9:16 aspect ratio. Ultra-sharp macro lens style, very shallow depth of field, 4K, 30 FPS, beautiful slow motion. Cinematic studio lighting with soft bokeh background. A whole, full-shaped persimmon fruit, rendered entirely from transparent jelly glass with a soft, pale orange outer hue, is perfectly centered on a clean wooden cutting board. Subtle glowing highlights shimmer on the transparent jelly surface. A human hand with neutral skin tone holds a sharp stainless steel knife poised just above the persimmon. In slow motion, the knife executes the first clean slice: the front section breaks off cleanly with delicate jelly-crack and soft slicing ASMR sounds. Immediately after, the knife performs a second smooth slice, cutting another piece. A few tiny transparent jelly shards scatter lightly from both cuts. Only ASMR sounds are present: crisp jelly-glass cutting, subtle cracking, and small shards falling. No talking, no voice, no music, no other sound effects. Only the hand, knife, fruit, and board are visible within the frame.","Satisfying Jelly Persimmon Slice ASMR","Watch this mesmerizing jelly persimmon being perfectly sliced! The sounds are so relaxing. 🍊✨ #ASMR #JellyFruit #Satisfying",["134"],"secret",["135"],{"text":"111","generationInfo":"136"},"GOOGLE_API_KEY",{"finishReason":"137","index":0},"STOP"]	e00dad2a-d538-44c6-a8fb-b9405de2f854
8	{"id":"LeagmHK_nal3-d2hiaOIn","name":"ASMR video creator","active":false,"activeVersionId":null,"nodes":[{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[0,0],"id":"a05d964a-34e6-4b64-94d1-71bfd238de82","name":"Schedule Trigger"},{"parameters":{"notice":"","schemaType":"fromJson","jsonSchemaExample":"{\\n\\"promp\\":\\"<insert generated promp here>\\",\\n\\"videoTitle\\":\\"<insert generated video title here>\\",\\n\\"videoDescription\\":\\"<insert generated video description here>\\"\\n}","autoFix":false},"type":"@n8n/n8n-nodes-langchain.outputParserStructured","typeVersion":1.3,"position":[352,208],"id":"754476f4-466e-4b4d-a813-d6e4d9f1f8e7","name":"Structured Output Parser"},{"parameters":{"notice":"","modelName":"models/gemini-2.5-flash","options":{}},"type":"@n8n/n8n-nodes-langchain.lmChatGoogleGemini","typeVersion":1,"position":[96,208],"id":"4852dd1f-d5cb-475f-b0ee-017184d9824c","name":"Google Gemini Chat Model","credentials":{"googlePalmApi":{"id":"B5Wm4iIJlAdZYfwY","name":"Google Gemini(PaLM) Api account"}}},{"parameters":{"notice":"","promptType":"define","text":"Generate ASMR","hasOutputParser":true,"needsFallback":false,"messages":{"messageValues":[{"type":"SystemMessagePromptTemplate","message":"=You are an expert at creating hyper-detailed, ASMR-style vertical video prompts for AI video generation tools (Runway, Kling, Luma, etc.).  Create ONE complete, ready-to-copy prompt for a vertical smartphone video (9:16 aspect ratio, physically shot in portrait mode — never simulate by cropping or rotating horizontal footage).  The subject must be: a whole, full-shaped [RANDOM FRUIT] made entirely of transparent jelly glass with a soft, light-colored outer hue that matches the real fruit's typical color but in a very pale, translucent version (for example: pale yellow-green for kiwi, gentle pinkish-red for dragon fruit, soft orange for persimmon, light purple for fig, etc.).  Rules that must stay exactly the same in every version: - The glass fruit is perfectly centered on a clean wooden cutting board - Studio lighting with subtle glowing highlights on the transparent jelly surface - A clearly visible human hand (neutral skin tone) holds a sharp stainless steel knife just above the fruit, poised to slice - Shot in ultra-sharp macro lens style with very shallow depth of field - Cinematic lighting, soft bokeh background, 4K quality, 30 FPS - In beautiful slow motion, the knife performs exactly two clean slices:   • First slice: front section breaks off cleanly with delicate jelly-crack and soft slicing ASMR sounds   • Immediately after: second slice cuts another smooth piece - A few tiny transparent jelly shards scatter lightly from both cuts - Only ASMR sounds: crisp jelly-glass cutting, subtle cracking, small shards falling — absolutely no talking, no voice, no background music, no other sound effects - Only the hand, knife, fruit and board are visible — nothing else enters the frame  Important: Choose a completely different realistic fruit for each prompt you generate (never repeat the same fruit — no Rambutan, and avoid repeating across generations). Examples of fruits to cycle through: kiwi, dragon fruit, persimmon, fig, lychee, passion fruit, starfruit, guava, pomegranate, apricot, plum, peach, mango, pear, strawberry (whole), etc.  At the end of each prompt you create, add these two extra lines:  Video Title: [Create a short, clickbait-attractive but clean English title that would work well for YouTube Shorts / TikTok / Instagram Reels — 5–10 words max]  Caption: [Create a short, engaging 1–2 sentence English caption that would be pasted under the video on social media, including 2–4 relevant hashtags]  Output only the single full prompt + the title + the caption — nothing else. Do not explain or add commentary.\\n\\nMake your output in json format:\\n{\\n\\"promp\\":\\"<insert generated promp here>\\",\\n\\"videoTitle\\":\\"<insert generated video title here>\\",\\n\\"videoDescription\\":\\"<insert generated video description here>\\"\\n}"}]},"batching":{}},"type":"@n8n/n8n-nodes-langchain.chainLlm","typeVersion":1.9,"position":[208,0],"id":"e82e512d-549c-4523-9c2d-438c0bcec11b","name":"Generate Prompt"},{"parameters":{"mode":"runOnceForAllItems","language":"javaScript","jsCode":"return [\\n  {\\n  \\"type\\": \\"service_account\\",\\n  \\"project_id\\": \\"my-project-asmr-483803\\",\\n  \\"private_key_id\\": \\"60ac25a662328559cf71ebccce126c2047739e8f\\",\\n  \\"client_email\\": \\"asmr-video-creator-service-acc@my-project-asmr-483803.iam.gserviceaccount.com\\",\\n  \\"client_id\\": \\"100032661901089471171\\",\\n  \\"auth_uri\\": \\"https://accounts.google.com/o/oauth2/auth\\",\\n  \\"token_uri\\": \\"https://oauth2.googleapis.com/token\\",\\n  \\"auth_provider_x509_cert_url\\": \\"https://www.googleapis.com/oauth2/v1/certs\\",\\n  \\"client_x509_cert_url\\": \\"https://www.googleapis.com/robot/v1/metadata/x509/asmr-video-creator-service-acc%40my-project-asmr-483803.iam.gserviceaccount.com\\",\\n  \\"universe_domain\\": \\"googleapis.com\\"\\n}\\n]","notice":""},"type":"n8n-nodes-base.code","typeVersion":2,"position":[560,0],"id":"1e10c6f9-f3df-4c97-9f0c-a5aa95c9d5db","name":"Secret Payload"},{"parameters":{"operation":"sign","useJson":true,"claimsJson":"={\\n  \\"iss\\": \\"{{ $json.client_email }}\\",\\n  \\"scope\\": \\"https://www.googleapis.com/auth/cloud...\\",\\n  \\"aud\\": \\"https://oauth2.googleapis.com/token\\",\\n  \\"iat\\": {{ Math.floor($now.toSeconds()) }},\\n  \\"exp\\": {{ Math.floor($now.plus({ seconds: 3600 }).toSeconds()) }}\\n}","options":{}},"type":"n8n-nodes-base.jwt","typeVersion":1,"position":[768,0],"id":"d196a1d6-ccc8-4670-bb16-526ab6ae3d02","name":"JWT","credentials":{"jwtAuth":{"id":"tjmNBhpI5x7qf11y","name":"JWT Auth account"}}}],"connections":{"Schedule Trigger":{"main":[[{"node":"Generate Prompt","type":"main","index":0}]]},"Structured Output Parser":{"ai_outputParser":[[{"node":"Generate Prompt","type":"ai_outputParser","index":0}]]},"Google Gemini Chat Model":{"ai_languageModel":[[{"node":"Generate Prompt","type":"ai_languageModel","index":0}]]},"Generate Prompt":{"main":[[{"node":"Secret Payload","type":"main","index":0}]]},"Secret Payload":{"main":[[{"node":"JWT","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","availableInMCP":false},"pinData":{}}	[{"version":1,"startData":"1","resultData":"2","executionData":"3"},{"destinationNode":"4","runNodeFilter":"5"},{"error":"6","runData":"7","pinData":"8","lastNodeExecuted":"9"},{"contextData":"10","nodeExecutionStack":"11","metadata":"12","waitingExecution":"13","waitingExecutionSource":"14","runtimeData":"15"},{"nodeName":"9","mode":"16"},["17","18","9","19","20","21"],{"level":"22","tags":"23","timestamp":1767966278042,"context":"24","functionality":"25","name":"26","node":"27","messages":"28","message":"29","stack":"30"},{"Schedule Trigger":"31","Generate Prompt":"32","Secret Payload":"33","JWT":"34"},{},"JWT",{},["35"],{},{},{},{"version":1,"establishedAt":1767966276302,"source":"36","triggerNode":"37"},"inclusive","Schedule Trigger","Secret Payload","Generate Prompt","Structured Output Parser","Google Gemini Chat Model","warning",{},{"itemIndex":0},"regular","NodeOperationError",{"parameters":"38","type":"39","typeVersion":1,"position":"40","id":"41","name":"9","credentials":"42"},[],"secretOrPrivateKey must be an asymmetric key when using RS256","NodeOperationError: secretOrPrivateKey must be an asymmetric key when using RS256\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file+packages+nodes-base_@aws-sdk+credential-providers@3.808.0_asn1.js@5_8da18263ca0574b0db58d4fefd8173ce/node_modules/n8n-nodes-base/nodes/Jwt/Jwt.node.ts:467:11)\\n    at processTicksAndRejections (node:internal/process/task_queues:105:5)\\n    at WorkflowExecute.executeNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+sdk-trace-base@1.30_ec37920eb95917b28efaa783206b20f3/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1045:8)\\n    at WorkflowExecute.runNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+sdk-trace-base@1.30_ec37920eb95917b28efaa783206b20f3/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1226:11)\\n    at /usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+sdk-trace-base@1.30_ec37920eb95917b28efaa783206b20f3/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1662:27\\n    at /usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file+packages+core_@opentelemetry+api@1.9.0_@opentelemetry+sdk-trace-base@1.30_ec37920eb95917b28efaa783206b20f3/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:2297:11",["43"],["44"],["45"],["46"],{"node":"47","data":"48","source":"49"},"manual",{"name":"9","type":"39"},{"operation":"50","useJson":true,"claimsJson":"51","options":"52"},"n8n-nodes-base.jwt",[768,0],"d196a1d6-ccc8-4670-bb16-526ab6ae3d02",{"jwtAuth":"53"},{"startTime":1767966197959,"executionIndex":0,"source":"54","hints":"55","executionTime":5,"executionStatus":"56","data":"57"},{"startTime":1767966197966,"executionIndex":1,"source":"58","hints":"59","executionTime":7076,"executionStatus":"56","data":"60"},{"startTime":1767966205042,"executionIndex":4,"source":"61","hints":"62","executionTime":6,"executionStatus":"56","data":"63"},{"startTime":1767966276304,"executionIndex":5,"source":"64","hints":"65","executionTime":1744,"executionStatus":"66","error":"67"},{"parameters":"68","type":"39","typeVersion":1,"position":"69","id":"41","name":"9","credentials":"70"},{"main":"71"},{"main":"64"},"sign","={\\n  \\"iss\\": \\"{{ $json.client_email }}\\",\\n  \\"scope\\": \\"https://www.googleapis.com/auth/cloud...\\",\\n  \\"aud\\": \\"https://oauth2.googleapis.com/token\\",\\n  \\"iat\\": {{ Math.floor($now.toSeconds()) }},\\n  \\"exp\\": {{ Math.floor($now.plus({ seconds: 3600 }).toSeconds()) }}\\n}",{},{"id":"72","name":"73"},[],[],"success",{"main":"74"},["75"],[],{"main":"76"},["77"],[],{"main":"78"},["79"],[],"error",{"level":"22","tags":"23","timestamp":1767966278042,"context":"24","functionality":"25","name":"26","node":"27","messages":"28","message":"29","stack":"30"},{"operation":"50","useJson":true,"claimsJson":"51","options":"80"},[768,0],{"jwtAuth":"81"},["82"],"tjmNBhpI5x7qf11y","JWT Auth account",["83"],{"previousNode":"17"},["84"],{"previousNode":"19"},["85"],{"previousNode":"18","previousNodeOutput":0,"previousNodeRun":0},{},{"id":"72","name":"73"},["86"],["87"],["88"],["89"],{"json":"90","pairedItem":"91"},{"json":"92","pairedItem":"93"},{"json":"94","pairedItem":"95"},{"json":"90","pairedItem":"96"},{"type":"97","project_id":"98","private_key_id":"99","client_email":"100","client_id":"101","auth_uri":"102","token_uri":"103","auth_provider_x509_cert_url":"104","client_x509_cert_url":"105","universe_domain":"106"},{"item":0},{"timestamp":"107","Readable date":"108","Readable time":"109","Day of week":"110","Year":"111","Month":"112","Day of month":"113","Hour":"114","Minute":"115","Second":"116","Timezone":"117"},{"item":0},{"output":"118"},{"item":0},{"item":0},"service_account","my-project-asmr-483803","60ac25a662328559cf71ebccce126c2047739e8f","asmr-video-creator-service-acc@my-project-asmr-483803.iam.gserviceaccount.com","100032661901089471171","https://accounts.google.com/o/oauth2/auth","https://oauth2.googleapis.com/token","https://www.googleapis.com/oauth2/v1/certs","https://www.googleapis.com/robot/v1/metadata/x509/asmr-video-creator-service-acc%40my-project-asmr-483803.iam.gserviceaccount.com","googleapis.com","2026-01-09T08:43:17.962-05:00","January 9th 2026, 8:43:17 am","8:43:17 am","Friday","2026","January","09","08","43","17","America/New_York (UTC-05:00)",{"promp":"119","videoTitle":"120","videoDescription":"121"},"Vertical video, 9:16 aspect ratio. Ultra-sharp macro lens style, very shallow depth of field, 4K, 30 FPS, beautiful slow motion. Cinematic studio lighting with soft bokeh background. A whole, full-shaped persimmon fruit, rendered entirely from transparent jelly glass with a soft, pale orange outer hue, is perfectly centered on a clean wooden cutting board. Subtle glowing highlights shimmer on the transparent jelly surface. A human hand with neutral skin tone holds a sharp stainless steel knife poised just above the persimmon. In slow motion, the knife executes the first clean slice: the front section breaks off cleanly with delicate jelly-crack and soft slicing ASMR sounds. Immediately after, the knife performs a second smooth slice, cutting another piece. A few tiny transparent jelly shards scatter lightly from both cuts. Only ASMR sounds are present: crisp jelly-glass cutting, subtle cracking, and small shards falling. No talking, no voice, no music, no other sound effects. Only the hand, knife, fruit, and board are visible within the frame.","Satisfying Jelly Persimmon Slice ASMR","Watch this mesmerizing jelly persimmon being perfectly sliced! The sounds are so relaxing. 🍊✨ #ASMR #JellyFruit #Satisfying"]	e00dad2a-d538-44c6-a8fb-b9405de2f854
9	{"id":"LeagmHK_nal3-d2hiaOIn","name":"ASMR video creator","active":false,"activeVersionId":null,"nodes":[{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[0,0],"id":"a05d964a-34e6-4b64-94d1-71bfd238de82","name":"Schedule Trigger"},{"parameters":{"notice":"","schemaType":"fromJson","jsonSchemaExample":"{\\n\\"promp\\":\\"<insert generated promp here>\\",\\n\\"videoTitle\\":\\"<insert generated video title here>\\",\\n\\"videoDescription\\":\\"<insert generated video description here>\\"\\n}","autoFix":false},"type":"@n8n/n8n-nodes-langchain.outputParserStructured","typeVersion":1.3,"position":[352,208],"id":"754476f4-466e-4b4d-a813-d6e4d9f1f8e7","name":"Structured Output Parser"},{"parameters":{"notice":"","modelName":"models/gemini-2.5-flash","options":{}},"type":"@n8n/n8n-nodes-langchain.lmChatGoogleGemini","typeVersion":1,"position":[96,208],"id":"4852dd1f-d5cb-475f-b0ee-017184d9824c","name":"Google Gemini Chat Model","credentials":{"googlePalmApi":{"id":"B5Wm4iIJlAdZYfwY","name":"Google Gemini(PaLM) Api account"}}},{"parameters":{"notice":"","promptType":"define","text":"Generate ASMR","hasOutputParser":true,"needsFallback":false,"messages":{"messageValues":[{"type":"SystemMessagePromptTemplate","message":"=You are an expert at creating hyper-detailed, ASMR-style vertical video prompts for AI video generation tools (Runway, Kling, Luma, etc.).  Create ONE complete, ready-to-copy prompt for a vertical smartphone video (9:16 aspect ratio, physically shot in portrait mode — never simulate by cropping or rotating horizontal footage).  The subject must be: a whole, full-shaped [RANDOM FRUIT] made entirely of transparent jelly glass with a soft, light-colored outer hue that matches the real fruit's typical color but in a very pale, translucent version (for example: pale yellow-green for kiwi, gentle pinkish-red for dragon fruit, soft orange for persimmon, light purple for fig, etc.).  Rules that must stay exactly the same in every version: - The glass fruit is perfectly centered on a clean wooden cutting board - Studio lighting with subtle glowing highlights on the transparent jelly surface - A clearly visible human hand (neutral skin tone) holds a sharp stainless steel knife just above the fruit, poised to slice - Shot in ultra-sharp macro lens style with very shallow depth of field - Cinematic lighting, soft bokeh background, 4K quality, 30 FPS - In beautiful slow motion, the knife performs exactly two clean slices:   • First slice: front section breaks off cleanly with delicate jelly-crack and soft slicing ASMR sounds   • Immediately after: second slice cuts another smooth piece - A few tiny transparent jelly shards scatter lightly from both cuts - Only ASMR sounds: crisp jelly-glass cutting, subtle cracking, small shards falling — absolutely no talking, no voice, no background music, no other sound effects - Only the hand, knife, fruit and board are visible — nothing else enters the frame  Important: Choose a completely different realistic fruit for each prompt you generate (never repeat the same fruit — no Rambutan, and avoid repeating across generations). Examples of fruits to cycle through: kiwi, dragon fruit, persimmon, fig, lychee, passion fruit, starfruit, guava, pomegranate, apricot, plum, peach, mango, pear, strawberry (whole), etc.  At the end of each prompt you create, add these two extra lines:  Video Title: [Create a short, clickbait-attractive but clean English title that would work well for YouTube Shorts / TikTok / Instagram Reels — 5–10 words max]  Caption: [Create a short, engaging 1–2 sentence English caption that would be pasted under the video on social media, including 2–4 relevant hashtags]  Output only the single full prompt + the title + the caption — nothing else. Do not explain or add commentary.\\n\\nMake your output in json format:\\n{\\n\\"promp\\":\\"<insert generated promp here>\\",\\n\\"videoTitle\\":\\"<insert generated video title here>\\",\\n\\"videoDescription\\":\\"<insert generated video description here>\\"\\n}"}]},"batching":{}},"type":"@n8n/n8n-nodes-langchain.chainLlm","typeVersion":1.9,"position":[208,0],"id":"e82e512d-549c-4523-9c2d-438c0bcec11b","name":"Generate Prompt"},{"parameters":{"mode":"runOnceForAllItems","language":"javaScript","jsCode":"return [\\n  {\\n  \\"type\\": \\"service_account\\",\\n  \\"project_id\\": \\"my-project-asmr-483803\\",\\n  \\"private_key_id\\": \\"60ac25a662328559cf71ebccce126c2047739e8f\\",\\n  \\"client_email\\": \\"asmr-video-creator-service-acc@my-project-asmr-483803.iam.gserviceaccount.com\\",\\n  \\"client_id\\": \\"100032661901089471171\\",\\n  \\"auth_uri\\": \\"https://accounts.google.com/o/oauth2/auth\\",\\n  \\"token_uri\\": \\"https://oauth2.googleapis.com/token\\",\\n  \\"auth_provider_x509_cert_url\\": \\"https://www.googleapis.com/oauth2/v1/certs\\",\\n  \\"client_x509_cert_url\\": \\"https://www.googleapis.com/robot/v1/metadata/x509/asmr-video-creator-service-acc%40my-project-asmr-483803.iam.gserviceaccount.com\\",\\n  \\"universe_domain\\": \\"googleapis.com\\"\\n}\\n]","notice":""},"type":"n8n-nodes-base.code","typeVersion":2,"position":[560,0],"id":"1e10c6f9-f3df-4c97-9f0c-a5aa95c9d5db","name":"Secret Payload"},{"parameters":{"operation":"sign","useJson":true,"claimsJson":"={\\n  \\"iss\\": \\"{{ $json.client_email }}\\",\\n  \\"scope\\": \\"https://www.googleapis.com/auth/cloud...\\",\\n  \\"aud\\": \\"https://oauth2.googleapis.com/token\\",\\n  \\"iat\\": {{ Math.floor($now.toSeconds()) }},\\n  \\"exp\\": {{ Math.floor($now.plus({ seconds: 3600 }).toSeconds()) }}\\n}","options":{}},"type":"n8n-nodes-base.jwt","typeVersion":1,"position":[768,0],"id":"d196a1d6-ccc8-4670-bb16-526ab6ae3d02","name":"JWT","credentials":{"jwtAuth":{"id":"tjmNBhpI5x7qf11y","name":"JWT Auth account"}}}],"connections":{"Schedule Trigger":{"main":[[{"node":"Generate Prompt","type":"main","index":0}]]},"Structured Output Parser":{"ai_outputParser":[[{"node":"Generate Prompt","type":"ai_outputParser","index":0}]]},"Google Gemini Chat Model":{"ai_languageModel":[[{"node":"Generate Prompt","type":"ai_languageModel","index":0}]]},"Generate Prompt":{"main":[[{"node":"Secret Payload","type":"main","index":0}]]},"Secret Payload":{"main":[[{"node":"JWT","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","availableInMCP":false},"pinData":{}}	[{"version":1,"startData":"1","resultData":"2","executionData":"3"},{"destinationNode":"4","runNodeFilter":"5"},{"runData":"6","pinData":"7","lastNodeExecuted":"8"},{"contextData":"9","nodeExecutionStack":"10","metadata":"11","waitingExecution":"12","waitingExecutionSource":"13","runtimeData":"14"},{"nodeName":"8","mode":"15"},["16","17","8","18","19","20"],{"Schedule Trigger":"21","Generate Prompt":"22","Secret Payload":"23","JWT":"24"},{},"JWT",{},[],{},{},{},{"version":1,"establishedAt":1767966361220,"source":"25","triggerNode":"26"},"inclusive","Schedule Trigger","Secret Payload","Generate Prompt","Structured Output Parser","Google Gemini Chat Model",["27"],["28"],["29"],["30"],"manual",{"name":"8","type":"31"},{"startTime":1767966197959,"executionIndex":0,"source":"32","hints":"33","executionTime":5,"executionStatus":"34","data":"35"},{"startTime":1767966197966,"executionIndex":1,"source":"36","hints":"37","executionTime":7076,"executionStatus":"34","data":"38"},{"startTime":1767966205042,"executionIndex":4,"source":"39","hints":"40","executionTime":6,"executionStatus":"34","data":"41"},{"startTime":1767966361221,"executionIndex":5,"source":"42","hints":"43","executionTime":456,"executionStatus":"34","data":"44"},"n8n-nodes-base.jwt",[],[],"success",{"main":"45"},["46"],[],{"main":"47"},["48"],[],{"main":"49"},["50"],[],{"main":"51"},["52"],{"previousNode":"16"},["53"],{"previousNode":"18"},["54"],{"previousNode":"17","previousNodeOutput":0,"previousNodeRun":0},["55"],["56"],["57"],["58"],["59"],{"json":"60","pairedItem":"61"},{"json":"62","pairedItem":"63"},{"json":"64","pairedItem":"65"},{"json":"66","pairedItem":0},{"timestamp":"67","Readable date":"68","Readable time":"69","Day of week":"70","Year":"71","Month":"72","Day of month":"73","Hour":"74","Minute":"75","Second":"76","Timezone":"77"},{"item":0},{"output":"78"},{"item":0},{"type":"79","project_id":"80","private_key_id":"81","client_email":"82","client_id":"83","auth_uri":"84","token_uri":"85","auth_provider_x509_cert_url":"86","client_x509_cert_url":"87","universe_domain":"88"},{"item":0},{"token":"89"},"2026-01-09T08:43:17.962-05:00","January 9th 2026, 8:43:17 am","8:43:17 am","Friday","2026","January","09","08","43","17","America/New_York (UTC-05:00)",{"promp":"90","videoTitle":"91","videoDescription":"92"},"service_account","my-project-asmr-483803","60ac25a662328559cf71ebccce126c2047739e8f","asmr-video-creator-service-acc@my-project-asmr-483803.iam.gserviceaccount.com","100032661901089471171","https://accounts.google.com/o/oauth2/auth","https://oauth2.googleapis.com/token","https://www.googleapis.com/oauth2/v1/certs","https://www.googleapis.com/robot/v1/metadata/x509/asmr-video-creator-service-acc%40my-project-asmr-483803.iam.gserviceaccount.com","googleapis.com","eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhc21yLXZpZGVvLWNyZWF0b3Itc2VydmljZS1hY2NAbXktcHJvamVjdC1hc21yLTQ4MzgwMy5pYW0uZ3NlcnZpY2VhY2NvdW50LmNvbSIsInNjb3BlIjoiaHR0cHM6Ly93d3cuZ29vZ2xlYXBpcy5jb20vYXV0aC9jbG91ZC4uLiIsImF1ZCI6Imh0dHBzOi8vb2F1dGgyLmdvb2dsZWFwaXMuY29tL3Rva2VuIiwiaWF0IjoxNzY3OTY2MzYxLCJleHAiOjE3Njc5Njk5NjF9.Bk-cRuleW5BzAoK_DP6oN8hHtt51IIYNa1voLUIQa7ceuzzQB8FdE2u96xAOFP50a3-z1WIVJMcC1oROhhJDItXhUx2eQOIAl0YkuJ4jOi1rKvotZd02cRoAEuXOuDJu_vrhxNXwATvP_2EdLS968ZzS5v9p_53K7dhpYry252c2xX3_lhKf3hrmx-5f_dw7VUTtX__guDl3afjfe_pJrp7FTvNot7vjeH1zrvE31BlP0KBiX3NJYmfSrg-nF5jGA66k9mHvCQRAE71_4l0_S06_JAoEdQHfUt5A4r3BIf0fQ0ri1GsKHEs5Lbe9gZaq9llrTRVPN-DVxxcAVYfGzA","Vertical video, 9:16 aspect ratio. Ultra-sharp macro lens style, very shallow depth of field, 4K, 30 FPS, beautiful slow motion. Cinematic studio lighting with soft bokeh background. A whole, full-shaped persimmon fruit, rendered entirely from transparent jelly glass with a soft, pale orange outer hue, is perfectly centered on a clean wooden cutting board. Subtle glowing highlights shimmer on the transparent jelly surface. A human hand with neutral skin tone holds a sharp stainless steel knife poised just above the persimmon. In slow motion, the knife executes the first clean slice: the front section breaks off cleanly with delicate jelly-crack and soft slicing ASMR sounds. Immediately after, the knife performs a second smooth slice, cutting another piece. A few tiny transparent jelly shards scatter lightly from both cuts. Only ASMR sounds are present: crisp jelly-glass cutting, subtle cracking, and small shards falling. No talking, no voice, no music, no other sound effects. Only the hand, knife, fruit, and board are visible within the frame.","Satisfying Jelly Persimmon Slice ASMR","Watch this mesmerizing jelly persimmon being perfectly sliced! The sounds are so relaxing. 🍊✨ #ASMR #JellyFruit #Satisfying"]	e00dad2a-d538-44c6-a8fb-b9405de2f854
10	{"id":"LeagmHK_nal3-d2hiaOIn","name":"ASMR video creator","active":false,"activeVersionId":null,"nodes":[{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[0,0],"id":"a05d964a-34e6-4b64-94d1-71bfd238de82","name":"Schedule Trigger"},{"parameters":{"notice":"","schemaType":"fromJson","jsonSchemaExample":"{\\n\\"promp\\":\\"<insert generated promp here>\\",\\n\\"videoTitle\\":\\"<insert generated video title here>\\",\\n\\"videoDescription\\":\\"<insert generated video description here>\\"\\n}","autoFix":false},"type":"@n8n/n8n-nodes-langchain.outputParserStructured","typeVersion":1.3,"position":[352,208],"id":"754476f4-466e-4b4d-a813-d6e4d9f1f8e7","name":"Structured Output Parser"},{"parameters":{"notice":"","modelName":"models/gemini-2.5-flash","options":{}},"type":"@n8n/n8n-nodes-langchain.lmChatGoogleGemini","typeVersion":1,"position":[96,208],"id":"4852dd1f-d5cb-475f-b0ee-017184d9824c","name":"Google Gemini Chat Model","credentials":{"googlePalmApi":{"id":"B5Wm4iIJlAdZYfwY","name":"Google Gemini(PaLM) Api account"}}},{"parameters":{"notice":"","promptType":"define","text":"Generate ASMR","hasOutputParser":true,"needsFallback":false,"messages":{"messageValues":[{"type":"SystemMessagePromptTemplate","message":"=You are an expert at creating hyper-detailed, ASMR-style vertical video prompts for AI video generation tools (Runway, Kling, Luma, etc.).  Create ONE complete, ready-to-copy prompt for a vertical smartphone video (9:16 aspect ratio, physically shot in portrait mode — never simulate by cropping or rotating horizontal footage).  The subject must be: a whole, full-shaped [RANDOM FRUIT] made entirely of transparent jelly glass with a soft, light-colored outer hue that matches the real fruit's typical color but in a very pale, translucent version (for example: pale yellow-green for kiwi, gentle pinkish-red for dragon fruit, soft orange for persimmon, light purple for fig, etc.).  Rules that must stay exactly the same in every version: - The glass fruit is perfectly centered on a clean wooden cutting board - Studio lighting with subtle glowing highlights on the transparent jelly surface - A clearly visible human hand (neutral skin tone) holds a sharp stainless steel knife just above the fruit, poised to slice - Shot in ultra-sharp macro lens style with very shallow depth of field - Cinematic lighting, soft bokeh background, 4K quality, 30 FPS - In beautiful slow motion, the knife performs exactly two clean slices:   • First slice: front section breaks off cleanly with delicate jelly-crack and soft slicing ASMR sounds   • Immediately after: second slice cuts another smooth piece - A few tiny transparent jelly shards scatter lightly from both cuts - Only ASMR sounds: crisp jelly-glass cutting, subtle cracking, small shards falling — absolutely no talking, no voice, no background music, no other sound effects - Only the hand, knife, fruit and board are visible — nothing else enters the frame  Important: Choose a completely different realistic fruit for each prompt you generate (never repeat the same fruit — no Rambutan, and avoid repeating across generations). Examples of fruits to cycle through: kiwi, dragon fruit, persimmon, fig, lychee, passion fruit, starfruit, guava, pomegranate, apricot, plum, peach, mango, pear, strawberry (whole), etc.  At the end of each prompt you create, add these two extra lines:  Video Title: [Create a short, clickbait-attractive but clean English title that would work well for YouTube Shorts / TikTok / Instagram Reels — 5–10 words max]  Caption: [Create a short, engaging 1–2 sentence English caption that would be pasted under the video on social media, including 2–4 relevant hashtags]  Output only the single full prompt + the title + the caption — nothing else. Do not explain or add commentary.\\n\\nMake your output in json format:\\n{\\n\\"promp\\":\\"<insert generated promp here>\\",\\n\\"videoTitle\\":\\"<insert generated video title here>\\",\\n\\"videoDescription\\":\\"<insert generated video description here>\\"\\n}"}]},"batching":{}},"type":"@n8n/n8n-nodes-langchain.chainLlm","typeVersion":1.9,"position":[208,0],"id":"e82e512d-549c-4523-9c2d-438c0bcec11b","name":"Generate Prompt"},{"parameters":{"mode":"runOnceForAllItems","language":"javaScript","jsCode":"return [\\n  {\\n  \\"type\\": \\"service_account\\",\\n  \\"project_id\\": \\"my-project-asmr-483803\\",\\n  \\"private_key_id\\": \\"60ac25a662328559cf71ebccce126c2047739e8f\\",\\n  \\"client_email\\": \\"asmr-video-creator-service-acc@my-project-asmr-483803.iam.gserviceaccount.com\\",\\n  \\"client_id\\": \\"100032661901089471171\\",\\n  \\"auth_uri\\": \\"https://accounts.google.com/o/oauth2/auth\\",\\n  \\"token_uri\\": \\"https://oauth2.googleapis.com/token\\",\\n  \\"auth_provider_x509_cert_url\\": \\"https://www.googleapis.com/oauth2/v1/certs\\",\\n  \\"client_x509_cert_url\\": \\"https://www.googleapis.com/robot/v1/metadata/x509/asmr-video-creator-service-acc%40my-project-asmr-483803.iam.gserviceaccount.com\\",\\n  \\"universe_domain\\": \\"googleapis.com\\"\\n}\\n]","notice":""},"type":"n8n-nodes-base.code","typeVersion":2,"position":[560,0],"id":"1e10c6f9-f3df-4c97-9f0c-a5aa95c9d5db","name":"Secret Payload"},{"parameters":{"operation":"sign","useJson":true,"claimsJson":"={\\n  \\"iss\\": \\"{{ $json.client_email }}\\",\\n  \\"scope\\": \\"https://www.googleapis.com/auth/cloud...\\",\\n  \\"aud\\": \\"https://oauth2.googleapis.com/token\\",\\n  \\"iat\\": {{ Math.floor($now.toSeconds()) }},\\n  \\"exp\\": {{ Math.floor($now.plus({ seconds: 3600 }).toSeconds()) }}\\n}","options":{}},"type":"n8n-nodes-base.jwt","typeVersion":1,"position":[768,0],"id":"d196a1d6-ccc8-4670-bb16-526ab6ae3d02","name":"JWT","credentials":{"jwtAuth":{"id":"tjmNBhpI5x7qf11y","name":"JWT Auth account"}}},{"parameters":{"preBuiltAgentsCalloutHttpRequest":"","curlImport":"","method":"POST","url":"https://oauth2.googleapis.com/token","authentication":"none","provideSslCertificates":false,"sendQuery":false,"sendHeaders":false,"sendBody":true,"contentType":"form-urlencoded","specifyBody":"keypair","bodyParameters":{"parameters":[{"name":"grant_type","value":"urn:ietf:params:oauth:grant-type:jwt-bearer"},{"name":"assertion","value":"={{ $json.token }}"}]},"options":{},"infoMessage":""},"type":"n8n-nodes-base.httpRequest","typeVersion":4.3,"position":[976,0],"id":"38b6c48d-bc96-4517-856b-f7b1b447b9ad","name":"HTTP Request"}],"connections":{"Schedule Trigger":{"main":[[{"node":"Generate Prompt","type":"main","index":0}]]},"Structured Output Parser":{"ai_outputParser":[[{"node":"Generate Prompt","type":"ai_outputParser","index":0}]]},"Google Gemini Chat Model":{"ai_languageModel":[[{"node":"Generate Prompt","type":"ai_languageModel","index":0}]]},"Generate Prompt":{"main":[[{"node":"Secret Payload","type":"main","index":0}]]},"Secret Payload":{"main":[[{"node":"JWT","type":"main","index":0}]]},"JWT":{"main":[[{"node":"HTTP Request","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","availableInMCP":false},"pinData":{}}	[{"version":1,"startData":"1","resultData":"2","executionData":"3"},{"destinationNode":"4","runNodeFilter":"5"},{"runData":"6","pinData":"7","lastNodeExecuted":"8"},{"contextData":"9","nodeExecutionStack":"10","metadata":"11","waitingExecution":"12","waitingExecutionSource":"13","runtimeData":"14"},{"nodeName":"8","mode":"15"},["16","17","8","18","19","20","21"],{"Schedule Trigger":"22","Generate Prompt":"23","Secret Payload":"24","JWT":"25","HTTP Request":"26"},{},"HTTP Request",{"node:HTTP Request":"27"},[],{},{},{},{"version":1,"establishedAt":1767966748830,"source":"28","triggerNode":"29"},"inclusive","Schedule Trigger","JWT","Secret Payload","Generate Prompt","Structured Output Parser","Google Gemini Chat Model",["30"],["31"],["32"],["33"],["34"],{"response":"35"},"manual",{"name":"8","type":"36"},{"startTime":1767966197959,"executionIndex":0,"source":"37","hints":"38","executionTime":5,"executionStatus":"39","data":"40"},{"startTime":1767966197966,"executionIndex":1,"source":"41","hints":"42","executionTime":7076,"executionStatus":"39","data":"43"},{"startTime":1767966205042,"executionIndex":4,"source":"44","hints":"45","executionTime":6,"executionStatus":"39","data":"46"},{"startTime":1767966361221,"executionIndex":5,"source":"47","hints":"48","executionTime":456,"executionStatus":"39","data":"49"},{"startTime":1767966748831,"executionIndex":6,"source":"50","hints":"51","executionTime":128,"executionStatus":"39","data":"52"},{"body":"53"},"n8n-nodes-base.httpRequest",[],[],"success",{"main":"54"},["55"],[],{"main":"56"},["57"],[],{"main":"58"},["59"],[],{"main":"60"},["61"],[],{"main":"62"},{"id_token":"63"},["64"],{"previousNode":"16"},["65"],{"previousNode":"19"},["66"],{"previousNode":"18","previousNodeOutput":0,"previousNodeRun":0},["67"],{"previousNode":"17","previousNodeOutput":0,"previousNodeRun":0},["68"],"eyJhbGciOiJSUzI1NiIsImtpZCI6IjRiYTZlZmVmNWUxNzIxNDk5NzFhMmQzYWJiNWYzMzJlMGY3ODcxNjUiLCJ0eXAiOiJKV1QifQ.eyJhdWQiOiJodHRwczovL3d3dy5nb29nbGVhcGlzLmNvbS9hdXRoL2Nsb3VkLi4uIiwiYXpwIjoiYXNtci12aWRlby1jcmVhdG9yLXNlcnZpY2UtYWNjQG15LXByb2plY3QtYXNtci00ODM4MDMuaWFtLmdzZXJ2aWNlYWNjb3VudC5jb20iLCJlbWFpbCI6ImFzbXItdmlkZW8tY3JlYXRvci1zZXJ2aWNlLWFjY0BteS1wcm9qZWN0LWFzbXItNDgzODAzLmlhbS5nc2VydmljZWFjY291bnQuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImV4cCI6MTc2Nzk3MDM0OCwiaWF0IjoxNzY3OTY2NzQ4LCJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJzdWIiOiIxMDAwMzI2NjE5MDEwODk0NzExNzEifQ.YIOlqbzGQRubNHFxzavw_1ylmM5UYwNDNGXgP6odFwnCins8cq99UlVG8arpm4Gi9l9ChOjWkzUj6ZE8WOgiIO9OnjbihVjCuopUHLszk6tzLrB6Jj2JjNqNuhur-HVMYbfYNmJWyMvZqbIit6fs38KEwMWPrX1Q80QtzMpV905m82d0JbjcOhvqRKRFFh-obrfM2Ch5cBv41XtVTNj22vJgTU6gQfz7deH1MhqwqG8toMXFx2-Vvajb1_jiArKs_b2ODhfbeORW8qGzw0y0X820DiOKv_NsRRWjnEbe7mfSCGZNDRjBTVvXYGI1C1H0qOpoCII_b-PnJqZGvIAsag",["69"],["70"],["71"],["72"],["73"],{"json":"74","pairedItem":"75"},{"json":"76","pairedItem":"77"},{"json":"78","pairedItem":"79"},{"json":"80","pairedItem":0},{"json":"53","pairedItem":"81"},{"timestamp":"82","Readable date":"83","Readable time":"84","Day of week":"85","Year":"86","Month":"87","Day of month":"88","Hour":"89","Minute":"90","Second":"91","Timezone":"92"},{"item":0},{"output":"93"},{"item":0},{"type":"94","project_id":"95","private_key_id":"96","client_email":"97","client_id":"98","auth_uri":"99","token_uri":"100","auth_provider_x509_cert_url":"101","client_x509_cert_url":"102","universe_domain":"103"},{"item":0},{"token":"104"},{"item":0},"2026-01-09T08:43:17.962-05:00","January 9th 2026, 8:43:17 am","8:43:17 am","Friday","2026","January","09","08","43","17","America/New_York (UTC-05:00)",{"promp":"105","videoTitle":"106","videoDescription":"107"},"service_account","my-project-asmr-483803","60ac25a662328559cf71ebccce126c2047739e8f","asmr-video-creator-service-acc@my-project-asmr-483803.iam.gserviceaccount.com","100032661901089471171","https://accounts.google.com/o/oauth2/auth","https://oauth2.googleapis.com/token","https://www.googleapis.com/oauth2/v1/certs","https://www.googleapis.com/robot/v1/metadata/x509/asmr-video-creator-service-acc%40my-project-asmr-483803.iam.gserviceaccount.com","googleapis.com","eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhc21yLXZpZGVvLWNyZWF0b3Itc2VydmljZS1hY2NAbXktcHJvamVjdC1hc21yLTQ4MzgwMy5pYW0uZ3NlcnZpY2VhY2NvdW50LmNvbSIsInNjb3BlIjoiaHR0cHM6Ly93d3cuZ29vZ2xlYXBpcy5jb20vYXV0aC9jbG91ZC4uLiIsImF1ZCI6Imh0dHBzOi8vb2F1dGgyLmdvb2dsZWFwaXMuY29tL3Rva2VuIiwiaWF0IjoxNzY3OTY2MzYxLCJleHAiOjE3Njc5Njk5NjF9.Bk-cRuleW5BzAoK_DP6oN8hHtt51IIYNa1voLUIQa7ceuzzQB8FdE2u96xAOFP50a3-z1WIVJMcC1oROhhJDItXhUx2eQOIAl0YkuJ4jOi1rKvotZd02cRoAEuXOuDJu_vrhxNXwATvP_2EdLS968ZzS5v9p_53K7dhpYry252c2xX3_lhKf3hrmx-5f_dw7VUTtX__guDl3afjfe_pJrp7FTvNot7vjeH1zrvE31BlP0KBiX3NJYmfSrg-nF5jGA66k9mHvCQRAE71_4l0_S06_JAoEdQHfUt5A4r3BIf0fQ0ri1GsKHEs5Lbe9gZaq9llrTRVPN-DVxxcAVYfGzA","Vertical video, 9:16 aspect ratio. Ultra-sharp macro lens style, very shallow depth of field, 4K, 30 FPS, beautiful slow motion. Cinematic studio lighting with soft bokeh background. A whole, full-shaped persimmon fruit, rendered entirely from transparent jelly glass with a soft, pale orange outer hue, is perfectly centered on a clean wooden cutting board. Subtle glowing highlights shimmer on the transparent jelly surface. A human hand with neutral skin tone holds a sharp stainless steel knife poised just above the persimmon. In slow motion, the knife executes the first clean slice: the front section breaks off cleanly with delicate jelly-crack and soft slicing ASMR sounds. Immediately after, the knife performs a second smooth slice, cutting another piece. A few tiny transparent jelly shards scatter lightly from both cuts. Only ASMR sounds are present: crisp jelly-glass cutting, subtle cracking, and small shards falling. No talking, no voice, no music, no other sound effects. Only the hand, knife, fruit, and board are visible within the frame.","Satisfying Jelly Persimmon Slice ASMR","Watch this mesmerizing jelly persimmon being perfectly sliced! The sounds are so relaxing. 🍊✨ #ASMR #JellyFruit #Satisfying"]	7323750a-60b5-4b64-af53-a0b10fe4c3a2
\.


--
-- Data for Name: execution_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_metadata" ("id", "executionId", "key", "value") FROM stdin;
\.


--
-- Data for Name: tag_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."tag_entity" ("name", "createdAt", "updatedAt", "id") FROM stdin;
\.


--
-- Data for Name: folder_tag; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."folder_tag" ("folderId", "tagId") FROM stdin;
\.


--
-- Data for Name: insights_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."insights_metadata" ("metaId", "workflowId", "projectId", "workflowName", "projectName") FROM stdin;
\.


--
-- Data for Name: insights_by_period; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."insights_by_period" ("id", "metaId", "type", "value", "periodUnit", "periodStart") FROM stdin;
\.


--
-- Data for Name: insights_raw; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."insights_raw" ("id", "metaId", "type", "value", "timestamp") FROM stdin;
\.


--
-- Data for Name: installed_packages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."installed_packages" ("packageName", "installedVersion", "authorName", "authorEmail", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: installed_nodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."installed_nodes" ("name", "type", "latestVersion", "package") FROM stdin;
\.


--
-- Data for Name: invalid_auth_token; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."invalid_auth_token" ("token", "expiresAt") FROM stdin;
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."migrations" ("id", "timestamp", "name") FROM stdin;
1	1587669153312	InitialMigration1587669153312
2	1589476000887	WebhookModel1589476000887
3	1594828256133	CreateIndexStoppedAt1594828256133
4	1607431743768	MakeStoppedAtNullable1607431743768
5	1611144599516	AddWebhookId1611144599516
6	1617270242566	CreateTagEntity1617270242566
7	1620824779533	UniqueWorkflowNames1620824779533
8	1626176912946	AddwaitTill1626176912946
9	1630419189837	UpdateWorkflowCredentials1630419189837
10	1644422880309	AddExecutionEntityIndexes1644422880309
11	1646834195327	IncreaseTypeVarcharLimit1646834195327
12	1646992772331	CreateUserManagement1646992772331
13	1648740597343	LowerCaseUserEmail1648740597343
14	1652254514002	CommunityNodes1652254514002
15	1652367743993	AddUserSettings1652367743993
16	1652905585850	AddAPIKeyColumn1652905585850
17	1654090467022	IntroducePinData1654090467022
18	1658932090381	AddNodeIds1658932090381
19	1659902242948	AddJsonKeyPinData1659902242948
20	1660062385367	CreateCredentialsUserRole1660062385367
21	1663755770893	CreateWorkflowsEditorRole1663755770893
22	1664196174001	WorkflowStatistics1664196174001
23	1665484192212	CreateCredentialUsageTable1665484192212
24	1665754637025	RemoveCredentialUsageTable1665754637025
25	1669739707126	AddWorkflowVersionIdColumn1669739707126
26	1669823906995	AddTriggerCountColumn1669823906995
27	1671535397530	MessageEventBusDestinations1671535397530
28	1671726148421	RemoveWorkflowDataLoadedFlag1671726148421
29	1673268682475	DeleteExecutionsWithWorkflows1673268682475
30	1674138566000	AddStatusToExecutions1674138566000
31	1674509946020	CreateLdapEntities1674509946020
32	1675940580449	PurgeInvalidWorkflowConnections1675940580449
33	1676996103000	MigrateExecutionStatus1676996103000
34	1677236854063	UpdateRunningExecutionStatus1677236854063
35	1677501636754	CreateVariables1677501636754
36	1679416281778	CreateExecutionMetadataTable1679416281778
37	1681134145996	AddUserActivatedProperty1681134145996
38	1681134145997	RemoveSkipOwnerSetup1681134145997
39	1690000000000	MigrateIntegerKeysToString1690000000000
40	1690000000020	SeparateExecutionData1690000000020
41	1690000000030	RemoveResetPasswordColumns1690000000030
42	1690000000030	AddMfaColumns1690000000030
43	1690787606731	AddMissingPrimaryKeyOnExecutionData1690787606731
44	1691088862123	CreateWorkflowNameIndex1691088862123
45	1692967111175	CreateWorkflowHistoryTable1692967111175
46	1693491613982	ExecutionSoftDelete1693491613982
47	1693554410387	DisallowOrphanExecutions1693554410387
48	1694091729095	MigrateToTimestampTz1694091729095
49	1695128658538	AddWorkflowMetadata1695128658538
50	1695829275184	ModifyWorkflowHistoryNodesAndConnections1695829275184
51	1700571993961	AddGlobalAdminRole1700571993961
52	1705429061930	DropRoleMapping1705429061930
53	1711018413374	RemoveFailedExecutionStatus1711018413374
54	1711390882123	MoveSshKeysToDatabase1711390882123
55	1712044305787	RemoveNodesAccess1712044305787
56	1714133768519	CreateProject1714133768519
57	1714133768521	MakeExecutionStatusNonNullable1714133768521
58	1717498465931	AddActivatedAtUserSetting1717498465931
59	1720101653148	AddConstraintToExecutionMetadata1720101653148
60	1721377157740	FixExecutionMetadataSequence1721377157740
61	1723627610222	CreateInvalidAuthTokenTable1723627610222
62	1723796243146	RefactorExecutionIndices1723796243146
63	1724753530828	CreateAnnotationTables1724753530828
64	1724951148974	AddApiKeysTable1724951148974
65	1726606152711	CreateProcessedDataTable1726606152711
66	1727427440136	SeparateExecutionCreationFromStart1727427440136
67	1728659839644	AddMissingPrimaryKeyOnAnnotationTagMapping1728659839644
68	1729607673464	UpdateProcessedDataValueColumnToText1729607673464
69	1729607673469	AddProjectIcons1729607673469
70	1730386903556	CreateTestDefinitionTable1730386903556
71	1731404028106	AddDescriptionToTestDefinition1731404028106
72	1731582748663	MigrateTestDefinitionKeyToString1731582748663
73	1732271325258	CreateTestMetricTable1732271325258
74	1732549866705	CreateTestRun1732549866705
75	1733133775640	AddMockedNodesColumnToTestDefinition1733133775640
76	1734479635324	AddManagedColumnToCredentialsTable1734479635324
77	1736172058779	AddStatsColumnsToTestRun1736172058779
78	1736947513045	CreateTestCaseExecutionTable1736947513045
79	1737715421462	AddErrorColumnsToTestRuns1737715421462
80	1738709609940	CreateFolderTable1738709609940
81	1739549398681	CreateAnalyticsTables1739549398681
82	1740445074052	UpdateParentFolderIdColumn1740445074052
83	1741167584277	RenameAnalyticsToInsights1741167584277
84	1742918400000	AddScopesColumnToApiKeys1742918400000
85	1745322634000	ClearEvaluation1745322634000
86	1745587087521	AddWorkflowStatisticsRootCount1745587087521
87	1745934666076	AddWorkflowArchivedColumn1745934666076
88	1745934666077	DropRoleTable1745934666077
89	1747824239000	AddProjectDescriptionColumn1747824239000
90	1750252139166	AddLastActiveAtColumnToUser1750252139166
91	1750252139166	AddScopeTables1750252139166
92	1750252139167	AddRolesTables1750252139167
93	1750252139168	LinkRoleToUserTable1750252139168
94	1750252139170	RemoveOldRoleColumn1750252139170
95	1752669793000	AddInputsOutputsToTestCaseExecution1752669793000
96	1753953244168	LinkRoleToProjectRelationTable1753953244168
97	1754475614601	CreateDataStoreTables1754475614601
98	1754475614602	ReplaceDataStoreTablesWithDataTables1754475614602
99	1756906557570	AddTimestampsToRoleAndRoleIndexes1756906557570
100	1758731786132	AddAudienceColumnToApiKeys1758731786132
101	1758794506893	AddProjectIdToVariableTable1758794506893
102	1759399811000	ChangeValueTypesForInsights1759399811000
103	1760019379982	CreateChatHubTables1760019379982
104	1760020000000	CreateChatHubAgentTable1760020000000
105	1760020838000	UniqueRoleNames1760020838000
106	1760116750277	CreateOAuthEntities1760116750277
107	1760314000000	CreateWorkflowDependencyTable1760314000000
108	1760965142113	DropUnusedChatHubColumns1760965142113
109	1761047826451	AddWorkflowVersionColumn1761047826451
110	1761655473000	ChangeDependencyInfoToJson1761655473000
111	1761773155024	AddAttachmentsToChatHubMessages1761773155024
112	1761830340990	AddToolsColumnToChatHubTables1761830340990
113	1762177736257	AddWorkflowDescriptionColumn1762177736257
114	1762763704614	BackfillMissingWorkflowHistoryRecords1762763704614
115	1762771264000	ChangeDefaultForIdInUserTable1762771264000
116	1762771954619	AddIsGlobalColumnToCredentialsTable1762771954619
117	1762847206508	AddWorkflowHistoryAutoSaveFields1762847206508
118	1763047800000	AddActiveVersionIdColumn1763047800000
119	1763048000000	ActivateExecuteWorkflowTriggerWorkflows1763048000000
120	1763572724000	ChangeOAuthStateColumnToUnboundedVarchar1763572724000
121	1763716655000	CreateBinaryDataTable1763716655000
122	1764167920585	CreateWorkflowPublishHistoryTable1764167920585
123	1764276827837	AddCreatorIdToProjectTable1764276827837
124	1764682447000	CreateDynamicCredentialResolverTable1764682447000
125	1764689388394	AddDynamicCredentialEntryTable1764689388394
126	1765448186933	BackfillMissingWorkflowHistoryRecords1765448186933
127	1765459448000	AddResolvableFieldsToCredentials1765459448000
128	1765788427674	AddIconToAgentTable1765788427674
129	1765804780000	ConvertAgentIdToUuid1765804780000
130	1765886667897	AddAgentIdForeignKeys1765886667897
131	1765892199653	AddWorkflowVersionIdToExecutionData1765892199653
132	1766064542000	AddWorkflowPublishScopeToProjectRoles1766064542000
133	1766068346315	AddChatMessageIndices1766068346315
134	1766500000000	ExpandInsightsWorkflowIdLength1766500000000
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_clients" ("id", "name", "redirectUris", "grantTypes", "clientSecret", "clientSecretExpiresAt", "tokenEndpointAuthMethod", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: oauth_access_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_access_tokens" ("token", "clientId", "userId") FROM stdin;
\.


--
-- Data for Name: oauth_authorization_codes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_authorization_codes" ("code", "clientId", "userId", "redirectUri", "codeChallenge", "codeChallengeMethod", "expiresAt", "state", "used", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: oauth_refresh_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_refresh_tokens" ("token", "clientId", "userId", "expiresAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: oauth_user_consents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_user_consents" ("id", "userId", "clientId", "grantedAt") FROM stdin;
\.


--
-- Data for Name: processed_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."processed_data" ("workflowId", "context", "createdAt", "updatedAt", "value") FROM stdin;
\.


--
-- Data for Name: project_relation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."project_relation" ("projectId", "userId", "role", "createdAt", "updatedAt") FROM stdin;
vpvAXG1z7QM1scA9	c1a15235-ed35-4bec-8083-b6e3be1644d5	project:personalOwner	2026-01-09 01:09:14.112+00	2026-01-09 01:09:14.112+00
\.


--
-- Data for Name: scope; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."scope" ("slug", "displayName", "description") FROM stdin;
workflow:publish	Publish Workflow	Allows publishing and unpublishing workflows.
annotationTag:create	Create Annotation Tag	Allows creating new annotation tags.
annotationTag:read	annotationTag:read	\N
annotationTag:update	annotationTag:update	\N
annotationTag:delete	annotationTag:delete	\N
annotationTag:list	annotationTag:list	\N
annotationTag:*	annotationTag:*	\N
auditLogs:manage	auditLogs:manage	\N
auditLogs:*	auditLogs:*	\N
banner:dismiss	banner:dismiss	\N
banner:*	banner:*	\N
community:register	community:register	\N
community:*	community:*	\N
communityPackage:install	communityPackage:install	\N
communityPackage:uninstall	communityPackage:uninstall	\N
communityPackage:update	communityPackage:update	\N
communityPackage:list	communityPackage:list	\N
communityPackage:manage	communityPackage:manage	\N
communityPackage:*	communityPackage:*	\N
credential:share	credential:share	\N
credential:shareGlobally	credential:shareGlobally	\N
credential:move	credential:move	\N
credential:create	credential:create	\N
credential:read	credential:read	\N
credential:update	credential:update	\N
credential:delete	credential:delete	\N
credential:list	credential:list	\N
credential:*	credential:*	\N
externalSecretsProvider:sync	externalSecretsProvider:sync	\N
externalSecretsProvider:create	externalSecretsProvider:create	\N
externalSecretsProvider:read	externalSecretsProvider:read	\N
externalSecretsProvider:update	externalSecretsProvider:update	\N
externalSecretsProvider:delete	externalSecretsProvider:delete	\N
externalSecretsProvider:list	externalSecretsProvider:list	\N
externalSecretsProvider:*	externalSecretsProvider:*	\N
externalSecret:list	externalSecret:list	\N
externalSecret:use	externalSecret:use	\N
externalSecret:*	externalSecret:*	\N
eventBusDestination:test	eventBusDestination:test	\N
eventBusDestination:create	eventBusDestination:create	\N
eventBusDestination:read	eventBusDestination:read	\N
eventBusDestination:update	eventBusDestination:update	\N
eventBusDestination:delete	eventBusDestination:delete	\N
eventBusDestination:list	eventBusDestination:list	\N
eventBusDestination:*	eventBusDestination:*	\N
ldap:sync	ldap:sync	\N
ldap:manage	ldap:manage	\N
ldap:*	ldap:*	\N
license:manage	license:manage	\N
license:*	license:*	\N
logStreaming:manage	logStreaming:manage	\N
logStreaming:*	logStreaming:*	\N
orchestration:read	orchestration:read	\N
orchestration:list	orchestration:list	\N
orchestration:*	orchestration:*	\N
project:create	project:create	\N
project:read	project:read	\N
project:update	project:update	\N
project:delete	project:delete	\N
project:list	project:list	\N
project:*	project:*	\N
saml:manage	saml:manage	\N
saml:*	saml:*	\N
securityAudit:generate	securityAudit:generate	\N
securityAudit:*	securityAudit:*	\N
sourceControl:pull	sourceControl:pull	\N
sourceControl:push	sourceControl:push	\N
sourceControl:manage	sourceControl:manage	\N
sourceControl:*	sourceControl:*	\N
tag:create	tag:create	\N
tag:read	tag:read	\N
tag:update	tag:update	\N
tag:delete	tag:delete	\N
tag:list	tag:list	\N
tag:*	tag:*	\N
user:resetPassword	user:resetPassword	\N
user:changeRole	user:changeRole	\N
user:enforceMfa	user:enforceMfa	\N
user:create	user:create	\N
user:read	user:read	\N
user:update	user:update	\N
user:delete	user:delete	\N
user:list	user:list	\N
user:*	user:*	\N
variable:create	variable:create	\N
variable:read	variable:read	\N
variable:update	variable:update	\N
variable:delete	variable:delete	\N
variable:list	variable:list	\N
variable:*	variable:*	\N
projectVariable:create	projectVariable:create	\N
projectVariable:read	projectVariable:read	\N
projectVariable:update	projectVariable:update	\N
projectVariable:delete	projectVariable:delete	\N
projectVariable:list	projectVariable:list	\N
projectVariable:*	projectVariable:*	\N
workersView:manage	workersView:manage	\N
workersView:*	workersView:*	\N
workflow:share	workflow:share	\N
workflow:execute	workflow:execute	\N
workflow:execute-chat	workflow:execute-chat	\N
workflow:move	workflow:move	\N
workflow:activate	workflow:activate	\N
workflow:deactivate	workflow:deactivate	\N
workflow:create	workflow:create	\N
workflow:read	workflow:read	\N
workflow:update	workflow:update	\N
workflow:delete	workflow:delete	\N
workflow:list	workflow:list	\N
workflow:*	workflow:*	\N
folder:create	folder:create	\N
folder:read	folder:read	\N
folder:update	folder:update	\N
folder:delete	folder:delete	\N
folder:list	folder:list	\N
folder:move	folder:move	\N
folder:*	folder:*	\N
insights:list	insights:list	\N
insights:*	insights:*	\N
oidc:manage	oidc:manage	\N
oidc:*	oidc:*	\N
provisioning:manage	provisioning:manage	\N
provisioning:*	provisioning:*	\N
dataTable:create	dataTable:create	\N
dataTable:read	dataTable:read	\N
dataTable:update	dataTable:update	\N
dataTable:delete	dataTable:delete	\N
dataTable:list	dataTable:list	\N
dataTable:readRow	dataTable:readRow	\N
dataTable:writeRow	dataTable:writeRow	\N
dataTable:listProject	dataTable:listProject	\N
dataTable:*	dataTable:*	\N
execution:delete	execution:delete	\N
execution:read	execution:read	\N
execution:retry	execution:retry	\N
execution:list	execution:list	\N
execution:get	execution:get	\N
execution:*	execution:*	\N
workflowTags:update	workflowTags:update	\N
workflowTags:list	workflowTags:list	\N
workflowTags:*	workflowTags:*	\N
role:manage	role:manage	\N
role:*	role:*	\N
mcp:manage	mcp:manage	\N
mcp:oauth	mcp:oauth	\N
mcp:*	mcp:*	\N
mcpApiKey:create	mcpApiKey:create	\N
mcpApiKey:rotate	mcpApiKey:rotate	\N
mcpApiKey:*	mcpApiKey:*	\N
chatHub:manage	chatHub:manage	\N
chatHub:message	chatHub:message	\N
chatHub:*	chatHub:*	\N
chatHubAgent:create	chatHubAgent:create	\N
chatHubAgent:read	chatHubAgent:read	\N
chatHubAgent:update	chatHubAgent:update	\N
chatHubAgent:delete	chatHubAgent:delete	\N
chatHubAgent:list	chatHubAgent:list	\N
chatHubAgent:*	chatHubAgent:*	\N
breakingChanges:list	breakingChanges:list	\N
breakingChanges:*	breakingChanges:*	\N
apiKey:manage	apiKey:manage	\N
apiKey:*	apiKey:*	\N
credentialResolver:create	credentialResolver:create	\N
credentialResolver:read	credentialResolver:read	\N
credentialResolver:update	credentialResolver:update	\N
credentialResolver:delete	credentialResolver:delete	\N
credentialResolver:list	credentialResolver:list	\N
credentialResolver:*	credentialResolver:*	\N
*	*	\N
\.


--
-- Data for Name: role_scope; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."role_scope" ("roleSlug", "scopeSlug") FROM stdin;
global:owner	workflow:publish
global:owner	annotationTag:create
global:owner	annotationTag:read
global:owner	annotationTag:update
global:owner	annotationTag:delete
global:owner	annotationTag:list
global:owner	auditLogs:manage
global:owner	banner:dismiss
global:owner	community:register
global:owner	communityPackage:install
global:owner	communityPackage:uninstall
global:owner	communityPackage:update
global:owner	communityPackage:list
global:owner	credential:share
global:owner	credential:shareGlobally
global:owner	credential:move
global:owner	credential:create
global:owner	credential:read
global:owner	credential:update
global:owner	credential:delete
global:owner	credential:list
global:owner	externalSecretsProvider:sync
global:owner	externalSecretsProvider:create
global:owner	externalSecretsProvider:read
global:owner	externalSecretsProvider:update
global:owner	externalSecretsProvider:delete
global:owner	externalSecretsProvider:list
global:owner	externalSecret:list
global:owner	externalSecret:use
global:owner	eventBusDestination:test
global:owner	eventBusDestination:create
global:owner	eventBusDestination:read
global:owner	eventBusDestination:update
global:owner	eventBusDestination:delete
global:owner	eventBusDestination:list
global:owner	ldap:sync
global:owner	ldap:manage
global:owner	license:manage
global:owner	logStreaming:manage
global:owner	orchestration:read
global:owner	project:create
global:owner	project:read
global:owner	project:update
global:owner	project:delete
global:owner	project:list
global:owner	saml:manage
global:owner	securityAudit:generate
global:owner	sourceControl:pull
global:owner	sourceControl:push
global:owner	sourceControl:manage
global:owner	tag:create
global:owner	tag:read
global:owner	tag:update
global:owner	tag:delete
global:owner	tag:list
global:owner	user:resetPassword
global:owner	user:changeRole
global:owner	user:enforceMfa
global:owner	user:create
global:owner	user:read
global:owner	user:update
global:owner	user:delete
global:owner	user:list
global:owner	variable:create
global:owner	variable:read
global:owner	variable:update
global:owner	variable:delete
global:owner	variable:list
global:owner	projectVariable:create
global:owner	projectVariable:read
global:owner	projectVariable:update
global:owner	projectVariable:delete
global:owner	projectVariable:list
global:owner	workersView:manage
global:owner	workflow:share
global:owner	workflow:execute
global:owner	workflow:execute-chat
global:owner	workflow:move
global:owner	workflow:create
global:owner	workflow:read
global:owner	workflow:update
global:owner	workflow:delete
global:owner	workflow:list
global:owner	folder:create
global:owner	folder:read
global:owner	folder:update
global:owner	folder:delete
global:owner	folder:list
global:owner	folder:move
global:owner	insights:list
global:owner	oidc:manage
global:owner	provisioning:manage
global:owner	dataTable:create
global:owner	dataTable:read
global:owner	dataTable:update
global:owner	dataTable:delete
global:owner	dataTable:list
global:owner	dataTable:readRow
global:owner	dataTable:writeRow
global:owner	dataTable:listProject
global:owner	role:manage
global:owner	mcp:manage
global:owner	mcp:oauth
global:owner	mcpApiKey:create
global:owner	mcpApiKey:rotate
global:owner	chatHub:manage
global:owner	chatHub:message
global:owner	chatHubAgent:create
global:owner	chatHubAgent:read
global:owner	chatHubAgent:update
global:owner	chatHubAgent:delete
global:owner	chatHubAgent:list
global:owner	breakingChanges:list
global:owner	apiKey:manage
global:owner	credentialResolver:create
global:owner	credentialResolver:read
global:owner	credentialResolver:update
global:owner	credentialResolver:delete
global:owner	credentialResolver:list
global:admin	workflow:publish
global:admin	annotationTag:create
global:admin	annotationTag:read
global:admin	annotationTag:update
global:admin	annotationTag:delete
global:admin	annotationTag:list
global:admin	auditLogs:manage
global:admin	banner:dismiss
global:admin	community:register
global:admin	communityPackage:install
global:admin	communityPackage:uninstall
global:admin	communityPackage:update
global:admin	communityPackage:list
global:admin	credential:share
global:admin	credential:shareGlobally
global:admin	credential:move
global:admin	credential:create
global:admin	credential:read
global:admin	credential:update
global:admin	credential:delete
global:admin	credential:list
global:admin	externalSecretsProvider:sync
global:admin	externalSecretsProvider:create
global:admin	externalSecretsProvider:read
global:admin	externalSecretsProvider:update
global:admin	externalSecretsProvider:delete
global:admin	externalSecretsProvider:list
global:admin	externalSecret:list
global:admin	externalSecret:use
global:admin	eventBusDestination:test
global:admin	eventBusDestination:create
global:admin	eventBusDestination:read
global:admin	eventBusDestination:update
global:admin	eventBusDestination:delete
global:admin	eventBusDestination:list
global:admin	ldap:sync
global:admin	ldap:manage
global:admin	license:manage
global:admin	logStreaming:manage
global:admin	orchestration:read
global:admin	project:create
global:admin	project:read
global:admin	project:update
global:admin	project:delete
global:admin	project:list
global:admin	saml:manage
global:admin	securityAudit:generate
global:admin	sourceControl:pull
global:admin	sourceControl:push
global:admin	sourceControl:manage
global:admin	tag:create
global:admin	tag:read
global:admin	tag:update
global:admin	tag:delete
global:admin	tag:list
global:admin	user:resetPassword
global:admin	user:changeRole
global:admin	user:enforceMfa
global:admin	user:create
global:admin	user:read
global:admin	user:update
global:admin	user:delete
global:admin	user:list
global:admin	variable:create
global:admin	variable:read
global:admin	variable:update
global:admin	variable:delete
global:admin	variable:list
global:admin	projectVariable:create
global:admin	projectVariable:read
global:admin	projectVariable:update
global:admin	projectVariable:delete
global:admin	projectVariable:list
global:admin	workersView:manage
global:admin	workflow:share
global:admin	workflow:execute
global:admin	workflow:execute-chat
global:admin	workflow:move
global:admin	workflow:create
global:admin	workflow:read
global:admin	workflow:update
global:admin	workflow:delete
global:admin	workflow:list
global:admin	folder:create
global:admin	folder:read
global:admin	folder:update
global:admin	folder:delete
global:admin	folder:list
global:admin	folder:move
global:admin	insights:list
global:admin	oidc:manage
global:admin	provisioning:manage
global:admin	dataTable:create
global:admin	dataTable:read
global:admin	dataTable:update
global:admin	dataTable:delete
global:admin	dataTable:list
global:admin	dataTable:readRow
global:admin	dataTable:writeRow
global:admin	dataTable:listProject
global:admin	role:manage
global:admin	mcp:manage
global:admin	mcp:oauth
global:admin	mcpApiKey:create
global:admin	mcpApiKey:rotate
global:admin	chatHub:manage
global:admin	chatHub:message
global:admin	chatHubAgent:create
global:admin	chatHubAgent:read
global:admin	chatHubAgent:update
global:admin	chatHubAgent:delete
global:admin	chatHubAgent:list
global:admin	breakingChanges:list
global:admin	apiKey:manage
global:admin	credentialResolver:create
global:admin	credentialResolver:read
global:admin	credentialResolver:update
global:admin	credentialResolver:delete
global:admin	credentialResolver:list
global:member	annotationTag:create
global:member	annotationTag:read
global:member	annotationTag:update
global:member	annotationTag:delete
global:member	annotationTag:list
global:member	eventBusDestination:test
global:member	eventBusDestination:list
global:member	tag:create
global:member	tag:read
global:member	tag:update
global:member	tag:list
global:member	user:list
global:member	variable:read
global:member	variable:list
global:member	dataTable:list
global:member	mcp:oauth
global:member	mcpApiKey:create
global:member	mcpApiKey:rotate
global:member	chatHub:message
global:member	chatHubAgent:create
global:member	chatHubAgent:read
global:member	chatHubAgent:update
global:member	chatHubAgent:delete
global:member	chatHubAgent:list
global:member	apiKey:manage
global:chatUser	chatHub:message
global:chatUser	chatHubAgent:create
global:chatUser	chatHubAgent:read
global:chatUser	chatHubAgent:update
global:chatUser	chatHubAgent:delete
global:chatUser	chatHubAgent:list
project:admin	workflow:publish
project:admin	credential:share
project:admin	credential:move
project:admin	credential:create
project:admin	credential:read
project:admin	credential:update
project:admin	credential:delete
project:admin	credential:list
project:admin	project:read
project:admin	project:update
project:admin	project:delete
project:admin	project:list
project:admin	sourceControl:push
project:admin	projectVariable:create
project:admin	projectVariable:read
project:admin	projectVariable:update
project:admin	projectVariable:delete
project:admin	projectVariable:list
project:admin	workflow:execute
project:admin	workflow:execute-chat
project:admin	workflow:move
project:admin	workflow:create
project:admin	workflow:read
project:admin	workflow:update
project:admin	workflow:delete
project:admin	workflow:list
project:admin	folder:create
project:admin	folder:read
project:admin	folder:update
project:admin	folder:delete
project:admin	folder:list
project:admin	folder:move
project:admin	dataTable:create
project:admin	dataTable:read
project:admin	dataTable:update
project:admin	dataTable:delete
project:admin	dataTable:readRow
project:admin	dataTable:writeRow
project:admin	dataTable:listProject
project:personalOwner	workflow:publish
project:personalOwner	credential:share
project:personalOwner	credential:move
project:personalOwner	credential:create
project:personalOwner	credential:read
project:personalOwner	credential:update
project:personalOwner	credential:delete
project:personalOwner	credential:list
project:personalOwner	project:read
project:personalOwner	project:list
project:personalOwner	workflow:share
project:personalOwner	workflow:execute
project:personalOwner	workflow:execute-chat
project:personalOwner	workflow:move
project:personalOwner	workflow:create
project:personalOwner	workflow:read
project:personalOwner	workflow:update
project:personalOwner	workflow:delete
project:personalOwner	workflow:list
project:personalOwner	folder:create
project:personalOwner	folder:read
project:personalOwner	folder:update
project:personalOwner	folder:delete
project:personalOwner	folder:list
project:personalOwner	folder:move
project:personalOwner	dataTable:create
project:personalOwner	dataTable:read
project:personalOwner	dataTable:update
project:personalOwner	dataTable:delete
project:personalOwner	dataTable:readRow
project:personalOwner	dataTable:writeRow
project:personalOwner	dataTable:listProject
project:editor	workflow:publish
project:editor	credential:create
project:editor	credential:read
project:editor	credential:update
project:editor	credential:delete
project:editor	credential:list
project:editor	project:read
project:editor	project:list
project:editor	projectVariable:create
project:editor	projectVariable:read
project:editor	projectVariable:update
project:editor	projectVariable:delete
project:editor	projectVariable:list
project:editor	workflow:execute
project:editor	workflow:execute-chat
project:editor	workflow:create
project:editor	workflow:read
project:editor	workflow:update
project:editor	workflow:delete
project:editor	workflow:list
project:editor	folder:create
project:editor	folder:read
project:editor	folder:update
project:editor	folder:delete
project:editor	folder:list
project:editor	dataTable:create
project:editor	dataTable:read
project:editor	dataTable:update
project:editor	dataTable:delete
project:editor	dataTable:readRow
project:editor	dataTable:writeRow
project:editor	dataTable:listProject
project:viewer	credential:read
project:viewer	credential:list
project:viewer	project:read
project:viewer	project:list
project:viewer	projectVariable:read
project:viewer	projectVariable:list
project:viewer	workflow:execute-chat
project:viewer	workflow:read
project:viewer	workflow:list
project:viewer	folder:read
project:viewer	folder:list
project:viewer	dataTable:read
project:viewer	dataTable:readRow
project:viewer	dataTable:listProject
project:chatUser	workflow:execute-chat
credential:owner	credential:share
credential:owner	credential:move
credential:owner	credential:read
credential:owner	credential:update
credential:owner	credential:delete
credential:user	credential:read
workflow:owner	workflow:publish
workflow:owner	workflow:share
workflow:owner	workflow:execute
workflow:owner	workflow:execute-chat
workflow:owner	workflow:move
workflow:owner	workflow:read
workflow:owner	workflow:update
workflow:owner	workflow:delete
workflow:editor	workflow:publish
workflow:editor	workflow:execute
workflow:editor	workflow:execute-chat
workflow:editor	workflow:read
workflow:editor	workflow:update
\.


--
-- Data for Name: settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."settings" ("key", "value", "loadOnStartup") FROM stdin;
ui.banners.dismissed	["V1"]	t
features.ldap	{"loginEnabled":false,"loginLabel":"","connectionUrl":"","allowUnauthorizedCerts":false,"connectionSecurity":"none","connectionPort":389,"baseDn":"","bindingAdminDn":"","bindingAdminPassword":"","firstNameAttribute":"","lastNameAttribute":"","emailAttribute":"","loginIdAttribute":"","ldapIdAttribute":"","userFilter":"","synchronizationEnabled":false,"synchronizationInterval":60,"searchPageSize":0,"searchTimeout":60,"enforceEmailUniqueness":true}	t
userManagement.authenticationMethod	email	t
features.sourceControl.sshKeys	{"encryptedPrivateKey":"U2FsdGVkX19WKX79hDkXEhSHk+OvSgaAphMXoZQuY/afFx7BrJGUN2nl9tCS9KP0AC8qtbeNeqmzLoCGxO9MHfbB+TDyGonYAB+6Rw3kS3RI9pr1+/FW6lTQJYWuqqAjWh35mXdIuBQXB2OeXNn8scCEe3/jF2hqmF2acHzzDvkydXJUuUo9RykJ1oGCuS53nYNZeWnK3RwzZ8scLe8YANUYQmIXoVSWzpjrXFgXLoC9FqKSJmClKFxcsND8q7BpfELH14/yACbpDMZTuvLYv1hVQmatoyiKO2r+b3oGiewDaSQYxFPHr6n0iYXJYJAJzkQh7B5IMngUZn9OdkxqneZcrRE31pZ+c8RFEH7U1iBRsPu0dawvauv9Da3d+yk1P3Clqky9ef7ZVtMbEOWSy+ahmyF/1voNjGjb3l2612Y/TYk+gtqn3CrejfUWr3QpQQgR3gxHmvXZQu5zs/ttQzN5fvag/BIVgfktVr+JhqEflA8Jp9Nq2TYJuT9h0a8MuGb0+weYawojrCViMz3H/VifImbEn84JNzYKyAdlW46dogkkD1SMvXRpnA+uGLBK","publicKey":"ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAnYtHhtcP8hhYouI79bs6ROYjDjCyRWuaO2Ey34nGY8 n8n deploy key"}	t
features.sourceControl	{"branchName":"main","connectionType":"ssh","keyGeneratorType":"ed25519"}	t
userManagement.isInstanceOwnerSetUp	true	t
\.


--
-- Data for Name: shared_credentials; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."shared_credentials" ("credentialsId", "projectId", "role", "createdAt", "updatedAt") FROM stdin;
B5Wm4iIJlAdZYfwY	vpvAXG1z7QM1scA9	credential:owner	2026-01-09 02:40:15.906+00	2026-01-09 02:40:15.906+00
tjmNBhpI5x7qf11y	vpvAXG1z7QM1scA9	credential:owner	2026-01-09 13:38:15.888+00	2026-01-09 13:38:15.888+00
\.


--
-- Data for Name: shared_workflow; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."shared_workflow" ("workflowId", "projectId", "role", "createdAt", "updatedAt") FROM stdin;
LeagmHK_nal3-d2hiaOIn	vpvAXG1z7QM1scA9	workflow:owner	2026-01-09 02:23:33.627+00	2026-01-09 02:23:33.627+00
\.


--
-- Data for Name: test_run; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."test_run" ("id", "workflowId", "status", "errorCode", "errorDetails", "runAt", "completedAt", "metrics", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: test_case_execution; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."test_case_execution" ("id", "testRunId", "executionId", "status", "runAt", "completedAt", "errorCode", "errorDetails", "metrics", "createdAt", "updatedAt", "inputs", "outputs") FROM stdin;
\.


--
-- Data for Name: user_api_keys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user_api_keys" ("id", "userId", "label", "apiKey", "createdAt", "updatedAt", "scopes", "audience") FROM stdin;
\.


--
-- Data for Name: variables; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."variables" ("key", "type", "value", "id", "projectId") FROM stdin;
\.


--
-- Data for Name: webhook_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."webhook_entity" ("webhookPath", "method", "node", "webhookId", "pathLength", "workflowId") FROM stdin;
\.


--
-- Data for Name: workflow_dependency; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_dependency" ("id", "workflowId", "workflowVersionId", "dependencyType", "dependencyKey", "dependencyInfo", "indexVersionId", "createdAt") FROM stdin;
\.


--
-- Data for Name: workflow_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_history" ("versionId", "workflowId", "authors", "createdAt", "updatedAt", "nodes", "connections", "name", "autosaved", "description") FROM stdin;
e8ec1b4e-3166-412b-bca0-57d3a8de594a	LeagmHK_nal3-d2hiaOIn	Geraldo Bathan	2026-01-09 02:23:33.627+00	2026-01-09 02:23:33.627+00	[]	{}	\N	f	\N
d5a47481-4418-4953-bb61-e2b95f895e1e	LeagmHK_nal3-d2hiaOIn	Geraldo Bathan	2026-01-09 03:00:13.134+00	2026-01-09 03:00:13.134+00	[{"parameters":{"rule":{"interval":[{}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[0,0],"id":"a05d964a-34e6-4b64-94d1-71bfd238de82","name":"Schedule Trigger"},{"parameters":{"jsonSchemaExample":"{\\n\\"promp\\":\\"<insert generated promp here>\\",\\n\\"videoTitle\\":\\"<insert generated video title here>\\",\\n\\"videoDescription\\":\\"<insert generated video description here>\\"\\n}"},"type":"@n8n/n8n-nodes-langchain.outputParserStructured","typeVersion":1.3,"position":[352,208],"id":"754476f4-466e-4b4d-a813-d6e4d9f1f8e7","name":"Structured Output Parser"},{"parameters":{"options":{}},"type":"@n8n/n8n-nodes-langchain.lmChatGoogleGemini","typeVersion":1,"position":[96,208],"id":"4852dd1f-d5cb-475f-b0ee-017184d9824c","name":"Google Gemini Chat Model","credentials":{"googlePalmApi":{"id":"B5Wm4iIJlAdZYfwY","name":"Google Gemini(PaLM) Api account"}}},{"parameters":{"promptType":"define","text":"Generate ASMR","hasOutputParser":true,"messages":{"messageValues":[{"message":"=You are an expert at creating hyper-detailed, ASMR-style vertical video prompts for AI video generation tools (Runway, Kling, Luma, etc.).  Create ONE complete, ready-to-copy prompt for a vertical smartphone video (9:16 aspect ratio, physically shot in portrait mode — never simulate by cropping or rotating horizontal footage).  The subject must be: a whole, full-shaped [RANDOM FRUIT] made entirely of transparent jelly glass with a soft, light-colored outer hue that matches the real fruit's typical color but in a very pale, translucent version (for example: pale yellow-green for kiwi, gentle pinkish-red for dragon fruit, soft orange for persimmon, light purple for fig, etc.).  Rules that must stay exactly the same in every version: - The glass fruit is perfectly centered on a clean wooden cutting board - Studio lighting with subtle glowing highlights on the transparent jelly surface - A clearly visible human hand (neutral skin tone) holds a sharp stainless steel knife just above the fruit, poised to slice - Shot in ultra-sharp macro lens style with very shallow depth of field - Cinematic lighting, soft bokeh background, 4K quality, 30 FPS - In beautiful slow motion, the knife performs exactly two clean slices:   • First slice: front section breaks off cleanly with delicate jelly-crack and soft slicing ASMR sounds   • Immediately after: second slice cuts another smooth piece - A few tiny transparent jelly shards scatter lightly from both cuts - Only ASMR sounds: crisp jelly-glass cutting, subtle cracking, small shards falling — absolutely no talking, no voice, no background music, no other sound effects - Only the hand, knife, fruit and board are visible — nothing else enters the frame  Important: Choose a completely different realistic fruit for each prompt you generate (never repeat the same fruit — no Rambutan, and avoid repeating across generations). Examples of fruits to cycle through: kiwi, dragon fruit, persimmon, fig, lychee, passion fruit, starfruit, guava, pomegranate, apricot, plum, peach, mango, pear, strawberry (whole), etc.  At the end of each prompt you create, add these two extra lines:  Video Title: [Create a short, clickbait-attractive but clean English title that would work well for YouTube Shorts / TikTok / Instagram Reels — 5–10 words max]  Caption: [Create a short, engaging 1–2 sentence English caption that would be pasted under the video on social media, including 2–4 relevant hashtags]  Output only the single full prompt + the title + the caption — nothing else. Do not explain or add commentary.\\n\\nMake your output in json format:\\n{\\n\\"promp\\":\\"<insert generated promp here>\\",\\n\\"videoTitle\\":\\"<insert generated video title here>\\",\\n\\"videoDescription\\":\\"<insert generated video description here>\\"\\n}"}]},"batching":{}},"type":"@n8n/n8n-nodes-langchain.chainLlm","typeVersion":1.9,"position":[208,0],"id":"e82e512d-549c-4523-9c2d-438c0bcec11b","name":"Generate Prompt"}]	{"Schedule Trigger":{"main":[[{"node":"Generate Prompt","type":"main","index":0}]]},"Structured Output Parser":{"ai_outputParser":[[{"node":"Generate Prompt","type":"ai_outputParser","index":0}]]},"Google Gemini Chat Model":{"ai_languageModel":[[{"node":"Generate Prompt","type":"ai_languageModel","index":0}]]}}	\N	f	\N
e00dad2a-d538-44c6-a8fb-b9405de2f854	LeagmHK_nal3-d2hiaOIn	Geraldo Bathan	2026-01-09 13:34:15.816+00	2026-01-09 13:34:15.816+00	[{"parameters":{"rule":{"interval":[{}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[0,0],"id":"a05d964a-34e6-4b64-94d1-71bfd238de82","name":"Schedule Trigger"},{"parameters":{"jsonSchemaExample":"{\\n\\"promp\\":\\"<insert generated promp here>\\",\\n\\"videoTitle\\":\\"<insert generated video title here>\\",\\n\\"videoDescription\\":\\"<insert generated video description here>\\"\\n}"},"type":"@n8n/n8n-nodes-langchain.outputParserStructured","typeVersion":1.3,"position":[352,208],"id":"754476f4-466e-4b4d-a813-d6e4d9f1f8e7","name":"Structured Output Parser"},{"parameters":{"options":{}},"type":"@n8n/n8n-nodes-langchain.lmChatGoogleGemini","typeVersion":1,"position":[96,208],"id":"4852dd1f-d5cb-475f-b0ee-017184d9824c","name":"Google Gemini Chat Model","credentials":{"googlePalmApi":{"id":"B5Wm4iIJlAdZYfwY","name":"Google Gemini(PaLM) Api account"}}},{"parameters":{"promptType":"define","text":"Generate ASMR","hasOutputParser":true,"messages":{"messageValues":[{"message":"=You are an expert at creating hyper-detailed, ASMR-style vertical video prompts for AI video generation tools (Runway, Kling, Luma, etc.).  Create ONE complete, ready-to-copy prompt for a vertical smartphone video (9:16 aspect ratio, physically shot in portrait mode — never simulate by cropping or rotating horizontal footage).  The subject must be: a whole, full-shaped [RANDOM FRUIT] made entirely of transparent jelly glass with a soft, light-colored outer hue that matches the real fruit's typical color but in a very pale, translucent version (for example: pale yellow-green for kiwi, gentle pinkish-red for dragon fruit, soft orange for persimmon, light purple for fig, etc.).  Rules that must stay exactly the same in every version: - The glass fruit is perfectly centered on a clean wooden cutting board - Studio lighting with subtle glowing highlights on the transparent jelly surface - A clearly visible human hand (neutral skin tone) holds a sharp stainless steel knife just above the fruit, poised to slice - Shot in ultra-sharp macro lens style with very shallow depth of field - Cinematic lighting, soft bokeh background, 4K quality, 30 FPS - In beautiful slow motion, the knife performs exactly two clean slices:   • First slice: front section breaks off cleanly with delicate jelly-crack and soft slicing ASMR sounds   • Immediately after: second slice cuts another smooth piece - A few tiny transparent jelly shards scatter lightly from both cuts - Only ASMR sounds: crisp jelly-glass cutting, subtle cracking, small shards falling — absolutely no talking, no voice, no background music, no other sound effects - Only the hand, knife, fruit and board are visible — nothing else enters the frame  Important: Choose a completely different realistic fruit for each prompt you generate (never repeat the same fruit — no Rambutan, and avoid repeating across generations). Examples of fruits to cycle through: kiwi, dragon fruit, persimmon, fig, lychee, passion fruit, starfruit, guava, pomegranate, apricot, plum, peach, mango, pear, strawberry (whole), etc.  At the end of each prompt you create, add these two extra lines:  Video Title: [Create a short, clickbait-attractive but clean English title that would work well for YouTube Shorts / TikTok / Instagram Reels — 5–10 words max]  Caption: [Create a short, engaging 1–2 sentence English caption that would be pasted under the video on social media, including 2–4 relevant hashtags]  Output only the single full prompt + the title + the caption — nothing else. Do not explain or add commentary.\\n\\nMake your output in json format:\\n{\\n\\"promp\\":\\"<insert generated promp here>\\",\\n\\"videoTitle\\":\\"<insert generated video title here>\\",\\n\\"videoDescription\\":\\"<insert generated video description here>\\"\\n}"}]},"batching":{}},"type":"@n8n/n8n-nodes-langchain.chainLlm","typeVersion":1.9,"position":[208,0],"id":"e82e512d-549c-4523-9c2d-438c0bcec11b","name":"Generate Prompt"},{"parameters":{"jsCode":"return [\\n  {\\n  \\"type\\": \\"service_account\\",\\n  \\"project_id\\": \\"my-project-asmr-483803\\",\\n  \\"private_key_id\\": \\"60ac25a662328559cf71ebccce126c2047739e8f\\",\\n  \\"client_email\\": \\"asmr-video-creator-service-acc@my-project-asmr-483803.iam.gserviceaccount.com\\",\\n  \\"client_id\\": \\"100032661901089471171\\",\\n  \\"auth_uri\\": \\"https://accounts.google.com/o/oauth2/auth\\",\\n  \\"token_uri\\": \\"https://oauth2.googleapis.com/token\\",\\n  \\"auth_provider_x509_cert_url\\": \\"https://www.googleapis.com/oauth2/v1/certs\\",\\n  \\"client_x509_cert_url\\": \\"https://www.googleapis.com/robot/v1/metadata/x509/asmr-video-creator-service-acc%40my-project-asmr-483803.iam.gserviceaccount.com\\",\\n  \\"universe_domain\\": \\"googleapis.com\\"\\n}\\n]"},"type":"n8n-nodes-base.code","typeVersion":2,"position":[560,0],"id":"1e10c6f9-f3df-4c97-9f0c-a5aa95c9d5db","name":"Code in JavaScript"}]	{"Schedule Trigger":{"main":[[{"node":"Generate Prompt","type":"main","index":0}]]},"Structured Output Parser":{"ai_outputParser":[[{"node":"Generate Prompt","type":"ai_outputParser","index":0}]]},"Google Gemini Chat Model":{"ai_languageModel":[[{"node":"Generate Prompt","type":"ai_languageModel","index":0}]]},"Generate Prompt":{"main":[[{"node":"Code in JavaScript","type":"main","index":0}]]}}	\N	f	\N
7323750a-60b5-4b64-af53-a0b10fe4c3a2	LeagmHK_nal3-d2hiaOIn	Geraldo Bathan	2026-01-09 13:46:12.355+00	2026-01-09 13:46:12.355+00	[{"parameters":{"rule":{"interval":[{}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[0,0],"id":"a05d964a-34e6-4b64-94d1-71bfd238de82","name":"Schedule Trigger"},{"parameters":{"jsonSchemaExample":"{\\n\\"promp\\":\\"<insert generated promp here>\\",\\n\\"videoTitle\\":\\"<insert generated video title here>\\",\\n\\"videoDescription\\":\\"<insert generated video description here>\\"\\n}"},"type":"@n8n/n8n-nodes-langchain.outputParserStructured","typeVersion":1.3,"position":[352,208],"id":"754476f4-466e-4b4d-a813-d6e4d9f1f8e7","name":"Structured Output Parser"},{"parameters":{"options":{}},"type":"@n8n/n8n-nodes-langchain.lmChatGoogleGemini","typeVersion":1,"position":[96,208],"id":"4852dd1f-d5cb-475f-b0ee-017184d9824c","name":"Google Gemini Chat Model","credentials":{"googlePalmApi":{"id":"B5Wm4iIJlAdZYfwY","name":"Google Gemini(PaLM) Api account"}}},{"parameters":{"promptType":"define","text":"Generate ASMR","hasOutputParser":true,"messages":{"messageValues":[{"message":"=You are an expert at creating hyper-detailed, ASMR-style vertical video prompts for AI video generation tools (Runway, Kling, Luma, etc.).  Create ONE complete, ready-to-copy prompt for a vertical smartphone video (9:16 aspect ratio, physically shot in portrait mode — never simulate by cropping or rotating horizontal footage).  The subject must be: a whole, full-shaped [RANDOM FRUIT] made entirely of transparent jelly glass with a soft, light-colored outer hue that matches the real fruit's typical color but in a very pale, translucent version (for example: pale yellow-green for kiwi, gentle pinkish-red for dragon fruit, soft orange for persimmon, light purple for fig, etc.).  Rules that must stay exactly the same in every version: - The glass fruit is perfectly centered on a clean wooden cutting board - Studio lighting with subtle glowing highlights on the transparent jelly surface - A clearly visible human hand (neutral skin tone) holds a sharp stainless steel knife just above the fruit, poised to slice - Shot in ultra-sharp macro lens style with very shallow depth of field - Cinematic lighting, soft bokeh background, 4K quality, 30 FPS - In beautiful slow motion, the knife performs exactly two clean slices:   • First slice: front section breaks off cleanly with delicate jelly-crack and soft slicing ASMR sounds   • Immediately after: second slice cuts another smooth piece - A few tiny transparent jelly shards scatter lightly from both cuts - Only ASMR sounds: crisp jelly-glass cutting, subtle cracking, small shards falling — absolutely no talking, no voice, no background music, no other sound effects - Only the hand, knife, fruit and board are visible — nothing else enters the frame  Important: Choose a completely different realistic fruit for each prompt you generate (never repeat the same fruit — no Rambutan, and avoid repeating across generations). Examples of fruits to cycle through: kiwi, dragon fruit, persimmon, fig, lychee, passion fruit, starfruit, guava, pomegranate, apricot, plum, peach, mango, pear, strawberry (whole), etc.  At the end of each prompt you create, add these two extra lines:  Video Title: [Create a short, clickbait-attractive but clean English title that would work well for YouTube Shorts / TikTok / Instagram Reels — 5–10 words max]  Caption: [Create a short, engaging 1–2 sentence English caption that would be pasted under the video on social media, including 2–4 relevant hashtags]  Output only the single full prompt + the title + the caption — nothing else. Do not explain or add commentary.\\n\\nMake your output in json format:\\n{\\n\\"promp\\":\\"<insert generated promp here>\\",\\n\\"videoTitle\\":\\"<insert generated video title here>\\",\\n\\"videoDescription\\":\\"<insert generated video description here>\\"\\n}"}]},"batching":{}},"type":"@n8n/n8n-nodes-langchain.chainLlm","typeVersion":1.9,"position":[208,0],"id":"e82e512d-549c-4523-9c2d-438c0bcec11b","name":"Generate Prompt"},{"parameters":{"jsCode":"return [\\n  {\\n  \\"type\\": \\"service_account\\",\\n  \\"project_id\\": \\"my-project-asmr-483803\\",\\n  \\"private_key_id\\": \\"60ac25a662328559cf71ebccce126c2047739e8f\\",\\n  \\"client_email\\": \\"asmr-video-creator-service-acc@my-project-asmr-483803.iam.gserviceaccount.com\\",\\n  \\"client_id\\": \\"100032661901089471171\\",\\n  \\"auth_uri\\": \\"https://accounts.google.com/o/oauth2/auth\\",\\n  \\"token_uri\\": \\"https://oauth2.googleapis.com/token\\",\\n  \\"auth_provider_x509_cert_url\\": \\"https://www.googleapis.com/oauth2/v1/certs\\",\\n  \\"client_x509_cert_url\\": \\"https://www.googleapis.com/robot/v1/metadata/x509/asmr-video-creator-service-acc%40my-project-asmr-483803.iam.gserviceaccount.com\\",\\n  \\"universe_domain\\": \\"googleapis.com\\"\\n}\\n]"},"type":"n8n-nodes-base.code","typeVersion":2,"position":[560,0],"id":"1e10c6f9-f3df-4c97-9f0c-a5aa95c9d5db","name":"Secret Payload"},{"parameters":{"useJson":true,"claimsJson":"={\\n  \\"iss\\": \\"{{ $json.client_email }}\\",\\n  \\"scope\\": \\"https://www.googleapis.com/auth/cloud...\\",\\n  \\"aud\\": \\"https://oauth2.googleapis.com/token\\",\\n  \\"iat\\": {{ Math.floor($now.toSeconds()) }},\\n  \\"exp\\": {{ Math.floor($now.plus({ seconds: 3600 }).toSeconds()) }}\\n}","options":{}},"type":"n8n-nodes-base.jwt","typeVersion":1,"position":[768,0],"id":"d196a1d6-ccc8-4670-bb16-526ab6ae3d02","name":"JWT","credentials":{"jwtAuth":{"id":"tjmNBhpI5x7qf11y","name":"JWT Auth account"}}}]	{"Schedule Trigger":{"main":[[{"node":"Generate Prompt","type":"main","index":0}]]},"Structured Output Parser":{"ai_outputParser":[[{"node":"Generate Prompt","type":"ai_outputParser","index":0}]]},"Google Gemini Chat Model":{"ai_languageModel":[[{"node":"Generate Prompt","type":"ai_languageModel","index":0}]]},"Generate Prompt":{"main":[[{"node":"Secret Payload","type":"main","index":0}]]},"Secret Payload":{"main":[[{"node":"JWT","type":"main","index":0}]]}}	\N	f	\N
480d834d-1a8f-4f14-bb88-73ea30850717	LeagmHK_nal3-d2hiaOIn	Geraldo Bathan	2026-01-09 13:52:38.826+00	2026-01-09 13:52:38.826+00	[{"parameters":{"rule":{"interval":[{}]}},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.3,"position":[0,0],"id":"a05d964a-34e6-4b64-94d1-71bfd238de82","name":"Schedule Trigger"},{"parameters":{"jsonSchemaExample":"{\\n\\"promp\\":\\"<insert generated promp here>\\",\\n\\"videoTitle\\":\\"<insert generated video title here>\\",\\n\\"videoDescription\\":\\"<insert generated video description here>\\"\\n}"},"type":"@n8n/n8n-nodes-langchain.outputParserStructured","typeVersion":1.3,"position":[352,208],"id":"754476f4-466e-4b4d-a813-d6e4d9f1f8e7","name":"Structured Output Parser"},{"parameters":{"options":{}},"type":"@n8n/n8n-nodes-langchain.lmChatGoogleGemini","typeVersion":1,"position":[96,208],"id":"4852dd1f-d5cb-475f-b0ee-017184d9824c","name":"Google Gemini Chat Model","credentials":{"googlePalmApi":{"id":"B5Wm4iIJlAdZYfwY","name":"Google Gemini(PaLM) Api account"}}},{"parameters":{"promptType":"define","text":"Generate ASMR","hasOutputParser":true,"messages":{"messageValues":[{"message":"=You are an expert at creating hyper-detailed, ASMR-style vertical video prompts for AI video generation tools (Runway, Kling, Luma, etc.).  Create ONE complete, ready-to-copy prompt for a vertical smartphone video (9:16 aspect ratio, physically shot in portrait mode — never simulate by cropping or rotating horizontal footage).  The subject must be: a whole, full-shaped [RANDOM FRUIT] made entirely of transparent jelly glass with a soft, light-colored outer hue that matches the real fruit's typical color but in a very pale, translucent version (for example: pale yellow-green for kiwi, gentle pinkish-red for dragon fruit, soft orange for persimmon, light purple for fig, etc.).  Rules that must stay exactly the same in every version: - The glass fruit is perfectly centered on a clean wooden cutting board - Studio lighting with subtle glowing highlights on the transparent jelly surface - A clearly visible human hand (neutral skin tone) holds a sharp stainless steel knife just above the fruit, poised to slice - Shot in ultra-sharp macro lens style with very shallow depth of field - Cinematic lighting, soft bokeh background, 4K quality, 30 FPS - In beautiful slow motion, the knife performs exactly two clean slices:   • First slice: front section breaks off cleanly with delicate jelly-crack and soft slicing ASMR sounds   • Immediately after: second slice cuts another smooth piece - A few tiny transparent jelly shards scatter lightly from both cuts - Only ASMR sounds: crisp jelly-glass cutting, subtle cracking, small shards falling — absolutely no talking, no voice, no background music, no other sound effects - Only the hand, knife, fruit and board are visible — nothing else enters the frame  Important: Choose a completely different realistic fruit for each prompt you generate (never repeat the same fruit — no Rambutan, and avoid repeating across generations). Examples of fruits to cycle through: kiwi, dragon fruit, persimmon, fig, lychee, passion fruit, starfruit, guava, pomegranate, apricot, plum, peach, mango, pear, strawberry (whole), etc.  At the end of each prompt you create, add these two extra lines:  Video Title: [Create a short, clickbait-attractive but clean English title that would work well for YouTube Shorts / TikTok / Instagram Reels — 5–10 words max]  Caption: [Create a short, engaging 1–2 sentence English caption that would be pasted under the video on social media, including 2–4 relevant hashtags]  Output only the single full prompt + the title + the caption — nothing else. Do not explain or add commentary.\\n\\nMake your output in json format:\\n{\\n\\"promp\\":\\"<insert generated promp here>\\",\\n\\"videoTitle\\":\\"<insert generated video title here>\\",\\n\\"videoDescription\\":\\"<insert generated video description here>\\"\\n}"}]},"batching":{}},"type":"@n8n/n8n-nodes-langchain.chainLlm","typeVersion":1.9,"position":[208,0],"id":"e82e512d-549c-4523-9c2d-438c0bcec11b","name":"Generate Prompt"},{"parameters":{"jsCode":"return [\\n  {\\n  \\"type\\": \\"service_account\\",\\n  \\"project_id\\": \\"my-project-asmr-483803\\",\\n  \\"private_key_id\\": \\"60ac25a662328559cf71ebccce126c2047739e8f\\",\\n  \\"client_email\\": \\"asmr-video-creator-service-acc@my-project-asmr-483803.iam.gserviceaccount.com\\",\\n  \\"client_id\\": \\"100032661901089471171\\",\\n  \\"auth_uri\\": \\"https://accounts.google.com/o/oauth2/auth\\",\\n  \\"token_uri\\": \\"https://oauth2.googleapis.com/token\\",\\n  \\"auth_provider_x509_cert_url\\": \\"https://www.googleapis.com/oauth2/v1/certs\\",\\n  \\"client_x509_cert_url\\": \\"https://www.googleapis.com/robot/v1/metadata/x509/asmr-video-creator-service-acc%40my-project-asmr-483803.iam.gserviceaccount.com\\",\\n  \\"universe_domain\\": \\"googleapis.com\\"\\n}\\n]"},"type":"n8n-nodes-base.code","typeVersion":2,"position":[560,0],"id":"1e10c6f9-f3df-4c97-9f0c-a5aa95c9d5db","name":"Secret Payload"},{"parameters":{"useJson":true,"claimsJson":"={\\n  \\"iss\\": \\"{{ $json.client_email }}\\",\\n  \\"scope\\": \\"https://www.googleapis.com/auth/cloud...\\",\\n  \\"aud\\": \\"https://oauth2.googleapis.com/token\\",\\n  \\"iat\\": {{ Math.floor($now.toSeconds()) }},\\n  \\"exp\\": {{ Math.floor($now.plus({ seconds: 3600 }).toSeconds()) }}\\n}","options":{}},"type":"n8n-nodes-base.jwt","typeVersion":1,"position":[768,0],"id":"d196a1d6-ccc8-4670-bb16-526ab6ae3d02","name":"JWT","credentials":{"jwtAuth":{"id":"tjmNBhpI5x7qf11y","name":"JWT Auth account"}}},{"parameters":{"method":"POST","url":"https://oauth2.googleapis.com/token","sendBody":true,"contentType":"form-urlencoded","bodyParameters":{"parameters":[{"name":"grant_type","value":"urn:ietf:params:oauth:grant-type:jwt-bearer"},{"name":"assertion","value":"={{ $json.token }}"}]},"options":{}},"type":"n8n-nodes-base.httpRequest","typeVersion":4.3,"position":[976,0],"id":"38b6c48d-bc96-4517-856b-f7b1b447b9ad","name":"HTTP Request"}]	{"Schedule Trigger":{"main":[[{"node":"Generate Prompt","type":"main","index":0}]]},"Structured Output Parser":{"ai_outputParser":[[{"node":"Generate Prompt","type":"ai_outputParser","index":0}]]},"Google Gemini Chat Model":{"ai_languageModel":[[{"node":"Generate Prompt","type":"ai_languageModel","index":0}]]},"Generate Prompt":{"main":[[{"node":"Secret Payload","type":"main","index":0}]]},"Secret Payload":{"main":[[{"node":"JWT","type":"main","index":0}]]},"JWT":{"main":[[{"node":"HTTP Request","type":"main","index":0}]]}}	\N	f	\N
\.


--
-- Data for Name: workflow_publish_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_publish_history" ("id", "workflowId", "versionId", "event", "userId", "createdAt") FROM stdin;
\.


--
-- Data for Name: workflow_statistics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_statistics" ("count", "latestEvent", "name", "workflowId", "rootCount") FROM stdin;
3	2026-01-09 13:44:39.814+00	manual_error	LeagmHK_nal3-d2hiaOIn	0
1	2026-01-09 13:52:29.38+00	data_loaded	LeagmHK_nal3-d2hiaOIn	1
7	2026-01-09 13:52:31.024+00	manual_success	LeagmHK_nal3-d2hiaOIn	0
\.


--
-- Data for Name: workflows_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflows_tags" ("workflowId", "tagId") FROM stdin;
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id", "type") FROM stdin;
\.


--
-- Data for Name: buckets_analytics; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_analytics" ("name", "type", "format", "created_at", "updated_at", "id", "deleted_at") FROM stdin;
\.


--
-- Data for Name: buckets_vectors; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_vectors" ("id", "type", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata", "level") FROM stdin;
\.


--
-- Data for Name: prefixes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."prefixes" ("bucket_id", "name", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads" ("id", "in_progress_size", "upload_signature", "bucket_id", "key", "version", "owner_id", "created_at", "user_metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads_parts" ("id", "upload_id", "size", "part_number", "bucket_id", "key", "etag", "owner_id", "version", "created_at") FROM stdin;
\.


--
-- Data for Name: vector_indexes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."vector_indexes" ("id", "name", "bucket_id", "data_type", "dimension", "distance_metric", "metadata_configuration", "created_at", "updated_at") FROM stdin;
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1, false);


--
-- Name: auth_provider_sync_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."auth_provider_sync_history_id_seq"', 1, false);


--
-- Name: execution_annotations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."execution_annotations_id_seq"', 1, false);


--
-- Name: execution_entity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."execution_entity_id_seq"', 10, true);


--
-- Name: execution_metadata_temp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."execution_metadata_temp_id_seq"', 1, false);


--
-- Name: insights_by_period_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."insights_by_period_id_seq"', 1, false);


--
-- Name: insights_metadata_metaId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."insights_metadata_metaId_seq"', 1, false);


--
-- Name: insights_raw_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."insights_raw_id_seq"', 1, false);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."migrations_id_seq"', 134, true);


--
-- Name: oauth_user_consents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."oauth_user_consents_id_seq"', 1, false);


--
-- Name: workflow_dependency_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."workflow_dependency_id_seq"', 1, false);


--
-- Name: workflow_publish_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."workflow_publish_history_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

-- \unrestrict EF4d5Lr3w57WnqmyZANT0Xg6eT66XIR04z5QCDTfpwEnCdLYOdqvpkJytDSJDci

RESET ALL;
