SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict JPUg00NsIfdz3gYgvObRsaQojbWJjfZYV5iFwhipGU0PKCpfUcnHHs2lUYtIeT8

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
global:chatUser	Chat User	Chat User	global	t	2026-01-08 13:30:13.105+00	2026-01-08 13:30:13.105+00
global:owner	Owner	Owner	global	t	2026-01-08 13:29:34.684+00	2026-01-08 13:30:13.159+00
global:admin	Admin	Admin	global	t	2026-01-08 13:29:34.684+00	2026-01-08 13:30:13.159+00
global:member	Member	Member	global	t	2026-01-08 13:29:34.684+00	2026-01-08 13:30:13.159+00
project:admin	Project Admin	Full control of settings, members, workflows, credentials and executions	project	t	2026-01-08 13:29:34.684+00	2026-01-08 13:30:14.285+00
project:personalOwner	Project Owner	Project Owner	project	t	2026-01-08 13:29:34.684+00	2026-01-08 13:30:14.285+00
project:editor	Project Editor	Create, edit, and delete workflows, credentials, and executions	project	t	2026-01-08 13:29:34.684+00	2026-01-08 13:30:14.285+00
project:viewer	Project Viewer	Read-only access to workflows, credentials, and executions	project	t	2026-01-08 13:29:34.684+00	2026-01-08 13:30:14.285+00
project:chatUser	Project Chat User	Chat-only access to chatting with workflows that have n8n Chat enabled	project	t	2026-01-08 13:29:34.684+00	2026-01-08 13:30:14.285+00
credential:owner	Credential Owner	Credential Owner	credential	t	2026-01-08 13:30:15.241+00	2026-01-08 13:30:15.241+00
credential:user	Credential User	Credential User	credential	t	2026-01-08 13:30:15.241+00	2026-01-08 13:30:15.241+00
workflow:owner	Workflow Owner	Workflow Owner	workflow	t	2026-01-08 13:30:15.842+00	2026-01-08 13:30:15.842+00
workflow:editor	Workflow Editor	Workflow Editor	workflow	t	2026-01-08 13:30:15.842+00	2026-01-08 13:30:15.842+00
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user" ("id", "email", "firstName", "lastName", "password", "personalizationAnswers", "createdAt", "updatedAt", "settings", "disabled", "mfaEnabled", "mfaSecret", "mfaRecoveryCodes", "lastActiveAt", "roleSlug") FROM stdin;
13d2c3c2-d81e-43ae-a086-c3dd5a41430f	geraldbathan24@gmail.com	Geraldo	Bathan	$2a$10$JChTwwSA/C68MiAOGthP9.Bozc4xWwWilE.hBscd0ynhuUq3tX84S	{"version":"v4","personalization_survey_submitted_at":"2026-01-08T13:56:05.026Z","personalization_survey_n8n_version":"2.2.4","automationGoalDevops":["monitoring-alerting","reporting"],"companyIndustryExtended":["it-industry"],"companySize":"<20","companyType":"other","role":"it","reportedSource":"event"}	2026-01-08 13:27:02.81+00	2026-01-08 14:27:15.99+00	{"userActivated":false,"easyAIWorkflowOnboarded":true}	f	f	\N	\N	2026-01-08	global:owner
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
l4hWBQOzcg2JdDCd	Geraldo Bathan <geraldbathan24@gmail.com>	personal	2026-01-08 13:27:54.424+00	2026-01-08 13:52:53.06+00	\N	\N	13d2c3c2-d81e-43ae-a086-c3dd5a41430f
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
💥 Generate AI viral videos with NanoBanana & VEO3, shared on socials via Blotato - video	f	[{"parameters":{"content":"# 📑 STEP 5 — Auto-Post to All Platforms\\n\\n","height":832,"width":1344,"color":4},"id":"eec72991-f048-40cd-87e9-6a7c2fc7955d","name":"Sticky Note3","type":"n8n-nodes-base.stickyNote","position":[1824,624],"typeVersion":1},{"parameters":{"resource":"media","operation":"upload"},"id":"aae3c321-582f-49d6-8007-9be1c3b17377","name":"Upload Video to BLOTATO","type":"@blotato/n8n-nodes-preview-blotato.blotato","position":[1888,1248],"typeVersion":2,"credentials":{}},{"parameters":{"resource":"post","operation":"create"},"id":"0f4d0b29-3e90-4809-8510-bb41971a3910","name":"Youtube","type":"@blotato/n8n-nodes-preview-blotato.blotato","position":[2512,1040],"typeVersion":2,"credentials":{}},{"parameters":{"resource":"post","operation":"create"},"id":"7999a817-0cda-4c61-b46d-8fde25a19a50","name":"Tiktok","type":"@blotato/n8n-nodes-preview-blotato.blotato","position":[2144,864],"typeVersion":2,"credentials":{}},{"parameters":{"mode":"chooseBranch","numberInputs":9},"id":"d5d18027-b9ce-44f2-a019-e7f702af9dda","name":"Merge","type":"n8n-nodes-base.merge","position":[2800,944],"typeVersion":3.2},{"parameters":{"operation":"appendOrUpdate","documentId":{"__rl":true,"mode":"id","value":"="},"sheetName":{"__rl":true,"mode":"id","value":"="},"columns":{"value":{"STATUS":"Published","IMAGE NAME":"={{ $('Telegram Trigger: Receive Video Idea').item.json.message.photo[2].file_unique_id }}"},"schema":[{"id":"IMAGE NAME","type":"string","display":true,"removed":false,"required":false,"displayName":"IMAGE NAME","defaultMatch":false,"canBeUsedToMatch":true},{"id":"IMAGE URL","type":"string","display":true,"removed":true,"required":false,"displayName":"IMAGE URL","defaultMatch":false,"canBeUsedToMatch":true},{"id":"IMAGE DESCRIPTION","type":"string","display":true,"removed":true,"required":false,"displayName":"IMAGE DESCRIPTION","defaultMatch":false,"canBeUsedToMatch":true},{"id":"CAPTION","type":"string","display":true,"removed":true,"required":false,"displayName":"CAPTION","defaultMatch":false,"canBeUsedToMatch":true},{"id":"URL VIDEO FINAL","type":"string","display":true,"removed":true,"required":false,"displayName":"URL VIDEO FINAL","defaultMatch":false,"canBeUsedToMatch":true},{"id":"TITRE VIDEO","type":"string","display":true,"removed":true,"required":false,"displayName":"TITRE VIDEO","defaultMatch":false,"canBeUsedToMatch":true},{"id":"CAPTION VIDEO","type":"string","display":true,"removed":true,"required":false,"displayName":"CAPTION VIDEO","defaultMatch":false,"canBeUsedToMatch":true},{"id":"STATUS","type":"string","display":true,"removed":false,"required":false,"displayName":"STATUS","defaultMatch":false,"canBeUsedToMatch":true}],"mappingMode":"defineBelow","matchingColumns":["IMAGE NAME"],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"id":"532087d1-9bd9-46f4-bade-60fe8c24f89e","name":"Update Status to \\"DONE\\"","type":"n8n-nodes-base.googleSheets","position":[2976,1056],"typeVersion":4.5},{"parameters":{"resource":"post","operation":"create"},"id":"60fc68f4-f678-45b9-91d2-f032fb65c1d7","name":"Linkedin","type":"@blotato/n8n-nodes-preview-blotato.blotato","position":[2336,864],"typeVersion":2,"credentials":{}},{"parameters":{"resource":"post","operation":"create"},"id":"5a3fb5b6-f3d7-4695-872c-51714e823f3f","name":"Facebook","type":"@blotato/n8n-nodes-preview-blotato.blotato","position":[2512,864],"typeVersion":2,"credentials":{}},{"parameters":{"resource":"post","operation":"create"},"id":"820d0453-ecdd-4147-93a7-284e148277da","name":"Instagram","type":"@blotato/n8n-nodes-preview-blotato.blotato","position":[2144,1040],"typeVersion":2,"credentials":{}},{"parameters":{"resource":"post","operation":"create"},"id":"07033eb1-0e84-4d11-a5f5-504bcc4fde4c","name":"Threads","type":"@blotato/n8n-nodes-preview-blotato.blotato","position":[2144,1248],"typeVersion":2,"credentials":{}},{"parameters":{"resource":"post","operation":"create"},"id":"53fc930b-34e2-471d-bce8-091023171b45","name":"Bluesky","type":"@blotato/n8n-nodes-preview-blotato.blotato","position":[2336,1248],"typeVersion":2,"credentials":{}},{"parameters":{"resource":"post","operation":"create"},"id":"cafda13e-18dc-4c97-96c6-04753e47d591","name":"Pinterest","type":"@blotato/n8n-nodes-preview-blotato.blotato","position":[2512,1248],"typeVersion":2,"credentials":{}},{"parameters":{"resource":"post","operation":"create"},"id":"514b5c29-899f-47cd-b78e-6cc6a29474ad","name":"Twitter (X)","type":"@blotato/n8n-nodes-preview-blotato.blotato","position":[2336,1040],"typeVersion":2,"credentials":{}},{"parameters":{"model":{"__rl":true,"mode":"list","value":"gpt-4.1-mini"},"options":{}},"id":"6cd60230-c9ca-4497-a3bf-32bf492721a7","name":"OpenAI Chat Model","type":"@n8n/n8n-nodes-langchain.lmChatOpenAi","position":[1344,960],"typeVersion":1.2},{"parameters":{},"id":"53a6f0a3-ce83-4aa0-82cc-95f2a68f019a","name":"Think","type":"@n8n/n8n-nodes-langchain.toolThink","position":[1488,960],"typeVersion":1},{"parameters":{"jsonSchemaExample":"{\\n  \\"title\\": \\"string\\",\\n  \\"final_prompt\\": \\"string\\"\\n}\\n"},"id":"5c862083-f811-4d78-8d20-fa43f5e5dd46","name":"Structured Output Parser","type":"@n8n/n8n-nodes-langchain.outputParserStructured","position":[1632,960],"typeVersion":1.3},{"parameters":{"chatId":"={{ $('Telegram Trigger: Receive Video Idea').item.json.message.chat.id }}","text":"=Url VIDEO : {{ $('Download Video from VEO3').item.json.data.response.resultUrls[0] }}","additionalFields":{}},"id":"faa72cdb-ee26-4fa5-b5fb-f25d207b5fd3","name":"Send Video URL via Telegram","type":"n8n-nodes-base.telegram","position":[1872,752],"webhookId":"ea6e5974-1930-4b67-a51b-16249a9ed8bd","typeVersion":1.2},{"parameters":{"operation":"sendVideo","chatId":"={{ $json.result.chat.id }}","file":"={{ $('Save Caption Video to Google Sheets').item.json['URL VIDEO FINAL'] }}","additionalFields":{}},"id":"c180c367-83cd-43e3-babe-c963a95373fa","name":"Send Final Video Preview","type":"n8n-nodes-base.telegram","position":[1888,992],"webhookId":"443fd41d-a051-45bf-ad68-173197dba26b","typeVersion":1.2},{"parameters":{"updates":["message"],"additionalFields":{}},"id":"2fe3fc4e-ecf8-41a0-a67c-9637416704fe","name":"Telegram Trigger: Receive Video Idea","type":"n8n-nodes-base.telegramTrigger","position":[656,176],"webhookId":"26dbe6f5-5197-4b2b-9e32-8060f2119686","typeVersion":1.2},{"parameters":{"assignments":{"assignments":[{"id":"cc2e0500-57b1-4615-82cb-1c950e5f2ec4","name":"json_master","type":"string","value":"={\\n  \\"description\\": \\"Brief narrative description of the scene, focusing on key visual storytelling and product transformation.\\",\\n  \\"style\\": \\"cinematic | photorealistic | stylized | gritty | elegant\\",\\n  \\"camera\\": {\\n    \\"type\\": \\"fixed | dolly | Steadicam | crane combo\\",\\n    \\"movement\\": \\"describe any camera moves like slow push-in, pan, orbit\\",\\n    \\"lens\\": \\"optional lens type or focal length for cinematic effect\\"\\n  },\\n  \\"lighting\\": {\\n    \\"type\\": \\"natural | dramatic | high-contrast\\",\\n    \\"sources\\": \\"key lighting sources (sunset, halogen, ambient glow...)\\",\\n    \\"FX\\": \\"optional VFX elements like fog, reflections, flares\\"\\n  },\\n  \\"environment\\": {\\n    \\"location\\": \\"describe location or room (kitchen, desert, basketball court...)\\",\\n    \\"set_pieces\\": [\\n      \\"list of key background or prop elements\\",\\n      \\"e.g. hardwood floors, chain-link fence, velvet surface\\"\\n    ],\\n    \\"mood\\": \\"describe the ambient atmosphere (moody, clean, epic...)\\"\\n  },\\n  \\"elements\\": [\\n    \\"main physical items involved (product box, accessories, vehicles...)\\",\\n    \\"include brand visibility (logos, packaging, texture...)\\"\\n  ],\\n  \\"subject\\": {\\n    \\"character\\": {\\n      \\"description\\": \\"optional – physical description, outfit\\",\\n      \\"pose\\": \\"optional – position or gesture\\",\\n      \\"lip_sync_line\\": \\"optional – spoken line if there’s a voiceover\\"\\n    },\\n    \\"product\\": {\\n      \\"brand\\": \\"Brand name\\",\\n      \\"model\\": \\"Product model or name\\",\\n      \\"action\\": \\"description of product transformation or assembly\\"\\n    }\\n  },\\n  \\"motion\\": {\\n    \\"type\\": \\"e.g. transformation, explosion, vortex\\",\\n    \\"details\\": \\"step-by-step visual flow of how elements move or evolve\\"\\n  },\\n  \\"VFX\\": {\\n    \\"transformation\\": \\"optional – describe style (neon trails, motion blur...)\\",\\n    \\"impact\\": \\"optional – e.g. shockwave, glow, distortion\\",\\n    \\"particles\\": \\"optional – embers, sparks, thread strands...\\",\\n    \\"environment\\": \\"optional – VFX affecting the scene (ripples, wind...)\\"\\n  },\\n  \\"audio\\": {\\n    \\"music\\": \\"optional – cinematic score, trap beat, ambient tone\\",\\n    \\"sfx\\": [\\n      \\"list of sound effects (zip, pop, woosh...)\\"\\n    ],\\n    \\"ambience\\": \\"optional – background soundscape (traffic, wind...)\\",\\n    \\"voiceover\\": {\\n      \\"delivery\\": \\"tone and style (confident, whisper, deep...)\\",\\n      \\"line\\": \\"text spoken if applicable\\"\\n    }\\n  },\\n  \\"ending\\": \\"Final shot description – what is seen or felt at the end (freeze frame, logo pulse, glow...)\\",\\n  \\"text\\": \\"none | overlay | tagline | logo pulse at end only\\",\\n  \\"format\\": \\"16:9 | 4k | vertical\\",\\n  \\"keywords\\": [\\n    \\"brand\\",\\n    \\"scene style\\",\\n    \\"motion type\\",\\n    \\"camera style\\",\\n    \\"sound mood\\",\\n    \\"target theme\\"\\n  ]\\n}\\n"}]},"options":{}},"id":"8d776dfb-8cc6-41e3-8c75-4e987ee224c4","name":"Set Master Prompt","type":"n8n-nodes-base.set","position":[1104,736],"typeVersion":3.4},{"parameters":{"promptType":"define","text":"=Create a UGC-style video prompt using both the reference image and the user description.  \\n\\n**Inputs**  \\n- User description (optional):  \\n  `{{ $('Telegram Trigger: Receive Video Idea').item.json.message.caption }}`  \\n- Reference image analysis (stay strictly faithful to what’s visible):  \\n  `{{ $('Google Sheets: Update Image Description').item.json['IMAGE DESCRIPTION'] }}`  \\n\\n**Rules**  \\n- Keep the style casual, authentic, and realistic. Avoid studio-like or cinematic language.  \\n- Default model: `veo3_fast` (unless otherwise specified).  \\n- Output only **one JSON object** with the key: `video_prompt`.  \\n","hasOutputParser":true,"options":{"systemMessage":"=system_prompt:\\n  ## SYSTEM PROMPT: Structured Video Ad Prompt Generator\\n  A - Ask:\\n    Generate a structured video ad prompt for cinematic generation, strictly based on the master schema provided in: {{ $json.json_master }}.\\n    The final result must be a JSON object with exactly two top-level keys: `title` and `final_prompt`.\\n\\n  G - Guidance:\\n    role: Creative Director\\n    output_count: 1\\n    character_limit: None\\n    constraints:\\n      - The output must be valid JSON.\\n      - The `title` field should contain a short, descriptive and unique title (max 15 words).\\n      - The `final_prompt` field must contain a **single-line JSON string** that follows the exact structure of {{ $json.json_master }} with all fields preserved.\\n      - Do not include any explanations, markdown, or extra text — only the JSON object.\\n      - Escape all inner quotes in the `final_prompt` string so it is valid as a stringified JSON inside another JSON.\\n    tool_usage:\\n      - Ensure consistent alignment across all fields (camera, lighting, motion, etc.).\\n      - Maintain full structure even for optional fields (use \\"none\\", \\"\\", or [] as needed).\\n\\n  N - Notation:\\n    format: JSON\\n    expected_output:\\n      {\\n        \\"title\\": \\"A unique short title for the scene\\",\\n        \\"final_prompt\\": \\"{...stringified JSON of the full prompt...}\\"\\n      }\\n\\n"}},"id":"54638a1d-fd59-4d98-93da-1286768dabe6","name":"AI Agent: Generate Video Script","type":"@n8n/n8n-nodes-langchain.agent","position":[1424,736],"typeVersion":2},{"parameters":{"method":"POST","url":"https://api.kie.ai/api/v1/veo/generate","authentication":"genericCredentialType","genericAuthType":"httpHeaderAuth","sendBody":true,"contentType":"raw","rawContentType":"application/json","body":"={\\n  \\"prompt\\": {{ $json.prompt }},\\n  \\"model\\": \\"{{ $('Google Sheets: Read Video Parameters (CONFIG)').item.json.model }}\\",\\n  \\"aspectRatio\\": \\"{{ $json.aspectRatio }}\\",\\n  \\"imageUrls\\": [\\n    \\"{{ $('Download Edited Image').item.json.images[0].url }}\\"\\n  ]\\n}","options":{}},"id":"28c15624-2a02-45b7-94ae-669ae5ad0008","name":"Generate Video with VEO3","type":"n8n-nodes-base.httpRequest","position":[704,1248],"typeVersion":4.2},{"parameters":{"amount":20},"id":"22f42daa-6c03-4d6a-9101-cb3cdb0b6a12","name":"Wait for VEO3 Rendering","type":"n8n-nodes-base.wait","position":[912,1248],"webhookId":"f6d814f3-4eb8-4629-a920-134cfa4ea03b","typeVersion":1.1},{"parameters":{"url":"https://api.kie.ai/api/v1/veo/record-info","authentication":"genericCredentialType","genericAuthType":"httpHeaderAuth","sendQuery":true,"queryParameters":{"parameters":[{"name":"taskId","value":"={{ $('Generate Video with VEO3').item.json.data.taskId }}"}]},"options":{}},"id":"a054fb0f-c399-48da-a2af-8cd9684dc516","name":"Download Video from VEO3","type":"n8n-nodes-base.httpRequest","position":[1120,1248],"typeVersion":4.2},{"parameters":{"modelId":{"__rl":true,"mode":"list","value":"gpt-4o","cachedResultName":"GPT-4O"},"messages":{"values":[{"content":"=You are rewriting a TikTok video script, caption, and overlay —\\nnot inventing a new one. You must follow this format and obey\\nthese rules strictly.\\n---\\n### CONTEXT:\\nHere is the content idea to use:{{ $('Telegram Trigger: Receive Video Idea').item.json.message.caption }}\\n\\nand the Title is : {{ $('AI Agent: Generate Video Script').item.json.output.title }}\\n\\n\\nWrite the caption text using the topic.\\n\\n---\\n- MUST be under 200 characters (yes \\"Characters\\" not wordcount)\\nthis is an absolute MUST, no more than 200 characters!!! \\n\\n### FINAL OUTPUT FORMAT (no markdown formatting):\\n\\nDO NOT return any explanations. Only return the Caption Text\\n"}]},"options":{}},"id":"3675e89e-daf8-4c1d-ac3b-73b6b2834682","name":"Rewrite Caption with GPT-4o","type":"@n8n/n8n-nodes-langchain.openAi","position":[1280,1248],"typeVersion":1.8},{"parameters":{"operation":"appendOrUpdate","documentId":{"__rl":true,"mode":"id","value":"="},"sheetName":{"__rl":true,"mode":"id","value":"="},"columns":{"value":{"STATUS":"CREATE","IMAGE NAME":"={{ $('Telegram Trigger: Receive Video Idea').item.json.message.photo[2].file_unique_id }}","TITRE VIDEO":"={{ $('AI Agent: Generate Video Script').item.json.output.title }}","CAPTION VIDEO":"={{ $json.message.content }}","URL VIDEO FINAL":"={{ $('Download Video from VEO3').item.json.data.response.resultUrls[0] }}"},"schema":[{"id":"IMAGE NAME","type":"string","display":true,"removed":false,"required":false,"displayName":"IMAGE NAME","defaultMatch":false,"canBeUsedToMatch":true},{"id":"IMAGE URL","type":"string","display":true,"removed":true,"required":false,"displayName":"IMAGE URL","defaultMatch":false,"canBeUsedToMatch":true},{"id":"IMAGE DESCRIPTION","type":"string","display":true,"removed":true,"required":false,"displayName":"IMAGE DESCRIPTION","defaultMatch":false,"canBeUsedToMatch":true},{"id":"CAPTION","type":"string","display":true,"removed":true,"required":false,"displayName":"CAPTION","defaultMatch":false,"canBeUsedToMatch":true},{"id":"URL VIDEO FINAL","type":"string","display":true,"required":false,"displayName":"URL VIDEO FINAL","defaultMatch":false,"canBeUsedToMatch":true},{"id":"TITRE VIDEO","type":"string","display":true,"required":false,"displayName":"TITRE VIDEO","defaultMatch":false,"canBeUsedToMatch":true},{"id":"CAPTION VIDEO","type":"string","display":true,"removed":false,"required":false,"displayName":"CAPTION VIDEO","defaultMatch":false,"canBeUsedToMatch":true},{"id":"STATUS","type":"string","display":true,"required":false,"displayName":"STATUS","defaultMatch":false,"canBeUsedToMatch":true}],"mappingMode":"defineBelow","matchingColumns":["IMAGE NAME"],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"id":"eeb6400b-d6fd-4bef-ada1-e4ae6c3637e4","name":"Save Caption Video to Google Sheets","type":"n8n-nodes-base.googleSheets","position":[1584,1248],"typeVersion":4.6},{"parameters":{"jsCode":"const structuredPrompt = $input.first().json.output.final_prompt;\\nreturn {\\n  json: {\\n    prompt: JSON.stringify(structuredPrompt), // this escapes it correctly!\\n    model: \\"veo3_fast\\",\\n    aspectRatio: \\"16:9\\"\\n  }\\n};\\n"},"id":"38055645-dc76-4f6d-a391-d440a4f716a6","name":"Format Prompt","type":"n8n-nodes-base.code","position":[704,944],"typeVersion":2},{"parameters":{"content":"# 📑 STEP 3 — Generate Video Ad Script","height":460,"width":1180},"id":"7630f214-b7a8-4ee8-aea3-30d5456e95e5","name":"Sticky Note2","type":"n8n-nodes-base.stickyNote","position":[592,624],"typeVersion":1},{"parameters":{"content":"# 📑 STEP 4 — Generate Video with VEO3","height":320,"width":1180},"id":"e26693b7-cdbe-4a4f-93e8-bf2ffe2371f6","name":"Sticky Note4","type":"n8n-nodes-base.stickyNote","position":[592,1136],"typeVersion":1},{"parameters":{"content":"# 📑 STEP 1 — Collect Idea & Image","height":592,"width":1184},"id":"f914f65d-ed84-4d81-87b5-0de1c6a2075a","name":"Sticky Note","type":"n8n-nodes-base.stickyNote","position":[592,-16],"typeVersion":1},{"parameters":{"content":"# 📑 STEP 2 — Create Image with NanoBanana\\n","height":592,"width":1328},"id":"7f713747-140a-4058-9856-82c75b3060bc","name":"Sticky Note1","type":"n8n-nodes-base.stickyNote","position":[1824,-16],"typeVersion":1},{"parameters":{"resource":"file","fileId":"={{ $json.message.photo[2].file_id }}","additionalFields":{}},"id":"8389e27d-5de7-41fe-84a2-81a5e4d25f1d","name":"Telegram: Get Image File","type":"n8n-nodes-base.telegram","position":[1088,48],"webhookId":"06ceb31d-dcd9-4a9a-bbbe-a7bf7ae0ad4a","typeVersion":1.2},{"parameters":{"name":"={{ $('Telegram Trigger: Receive Video Idea').item.json.message.photo[2].file_unique_id }}","driveId":{"__rl":true,"mode":"id","value":"="},"folderId":{"__rl":true,"mode":"id","value":"="},"options":{}},"id":"2e7c9531-cd7f-4f44-b19e-ba15ff0e1d02","name":"Google Drive: Upload Image","type":"n8n-nodes-base.googleDrive","position":[1104,240],"typeVersion":3},{"parameters":{"operation":"appendOrUpdate","documentId":{"__rl":true,"mode":"id","value":"="},"sheetName":{"__rl":true,"mode":"id","value":"="},"columns":{"value":{"STATUS":"EN COURS","CAPTION":"={{ $('Telegram Trigger: Receive Video Idea').item.json.message.caption }}","IMAGE URL":"={{ $json.webContentLink }}","IMAGE NAME":"={{ $('Telegram Trigger: Receive Video Idea').item.json.message.photo[2].file_unique_id }}"},"schema":[{"id":"IMAGE NAME","type":"string","display":true,"removed":false,"required":false,"displayName":"IMAGE NAME","defaultMatch":false,"canBeUsedToMatch":true},{"id":"IMAGE URL","type":"string","display":true,"removed":false,"required":false,"displayName":"IMAGE URL","defaultMatch":false,"canBeUsedToMatch":true},{"id":"IMAGE DESCRIPTION","type":"string","display":true,"removed":true,"required":false,"displayName":"IMAGE DESCRIPTION","defaultMatch":false,"canBeUsedToMatch":true},{"id":"CAPTION","type":"string","display":true,"removed":false,"required":false,"displayName":"CAPTION","defaultMatch":false,"canBeUsedToMatch":true},{"id":"STATUS","type":"string","display":true,"removed":false,"required":false,"displayName":"STATUS","defaultMatch":false,"canBeUsedToMatch":true}],"mappingMode":"defineBelow","matchingColumns":["IMAGE NAME"],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"id":"687944c0-10e4-4c80-8391-80c8a003bc8e","name":"Google Sheets: Log Image & Caption","type":"n8n-nodes-base.googleSheets","position":[1104,416],"typeVersion":4.7},{"parameters":{"assignments":{"assignments":[{"id":"af62651a-3fc8-419d-908b-6514f6f4bcb3","name":"YOUR_BOT_TOKEN","type":"string","value":""}]},"options":{}},"id":"7b833f2d-21f5-48b4-989b-5ebccd0e5325","name":"Set: Bot Token (Placeholder)","type":"n8n-nodes-base.set","position":[1344,176],"typeVersion":3.4},{"parameters":{"url":"=https://api.telegram.org/bot{{ $json.YOUR_BOT_TOKEN }}/getFile?file_id={{ $('Telegram Trigger: Receive Video Idea').item.json.message.photo[3].file_id }}","options":{}},"id":"0de9edf4-e44b-4742-85c3-860743418515","name":"Telegram API: Get File URL","type":"n8n-nodes-base.httpRequest","position":[1536,176],"typeVersion":4.2},{"parameters":{"resource":"image","operation":"analyze","modelId":{"__rl":true,"mode":"list","value":"chatgpt-4o-latest","cachedResultName":"CHATGPT-4O-LATEST"},"text":"=You are an image analysis assistant.\\n\\nYour task is to analyze the given image and output results **only in YAML format**. Do not add explanations, comments, or extra text outside YAML.\\n\\nRules:\\n\\n- If the image depicts a **product**, return:\\n    \\n    ```yaml\\n    brand_name: (brand if visible or inferable)\\n    color_scheme:\\n      - hex: (hex code of each prominent color)\\n        name: (descriptive name of the color)\\n    font_style: (serif/sans-serif, bold/thin, etc.)\\n    visual_description: (1–2 sentences summarizing what is seen, ignoring the background)\\n    \\n    ```\\n    \\n- If the image depicts a **character**, return:\\n    \\n    ```yaml\\n    character_name: (name if visible or inferable, else \\"unknown\\")\\n    color_scheme:\\n      - hex: (hex code of each prominent color on the character)\\n        name: (descriptive name of the color)\\n    outfit_style: (clothing style, accessories, or notable features)\\n    visual_description: (1–2 sentences summarizing what the character looks like, ignoring the background)\\n    \\n    ```\\n    \\n- If the image depicts **both**, return **both sections** in YAML.\\n\\nOnly output valid YAML. No explanations.","imageUrls":"=https://api.telegram.org/file/bot{{ $('Set: Bot Token (Placeholder)').item.json.YOUR_BOT_TOKEN }}/{{ $json.result.file_path }}","options":{}},"id":"3d3cd52c-a44d-4cce-9348-0e5e79113ff8","name":"OpenAI Vision: Analyze Reference Image","type":"@n8n/n8n-nodes-langchain.openAi","position":[1952,176],"typeVersion":1.8},{"parameters":{"operation":"appendOrUpdate","documentId":{"__rl":true,"mode":"id","value":"="},"sheetName":{"__rl":true,"mode":"id","value":"="},"columns":{"value":{"IMAGE NAME":"={{ $('Telegram Trigger: Receive Video Idea').item.json.message.photo[2].file_unique_id }}","IMAGE DESCRIPTION":"={{ $json.content }}"},"schema":[{"id":"IMAGE NAME","type":"string","display":true,"removed":false,"required":false,"displayName":"IMAGE NAME","defaultMatch":false,"canBeUsedToMatch":true},{"id":"IMAGE URL","type":"string","display":true,"removed":true,"required":false,"displayName":"IMAGE URL","defaultMatch":false,"canBeUsedToMatch":true},{"id":"IMAGE DESCRIPTION","type":"string","display":true,"removed":false,"required":false,"displayName":"IMAGE DESCRIPTION","defaultMatch":false,"canBeUsedToMatch":true},{"id":"CAPTION","type":"string","display":true,"removed":true,"required":false,"displayName":"CAPTION","defaultMatch":false,"canBeUsedToMatch":true},{"id":"STATUS","type":"string","display":true,"removed":true,"required":false,"displayName":"STATUS","defaultMatch":false,"canBeUsedToMatch":true}],"mappingMode":"defineBelow","matchingColumns":["IMAGE NAME"],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"id":"20f8951b-e7dd-4ff9-8c48-1b5a44a17ac0","name":"Google Sheets: Update Image Description","type":"n8n-nodes-base.googleSheets","position":[2192,176],"typeVersion":4.7},{"parameters":{"jsonSchemaExample":"{\\n\\t\\"image_prompt\\": \\"string\\"\\n}"},"id":"81c4f93e-3cb4-4ef7-bb40-046c31f4d9da","name":"LLM: Structured Output Parser","type":"@n8n/n8n-nodes-langchain.outputParserStructured","position":[2576,416],"typeVersion":1.3},{"parameters":{"model":{"__rl":true,"mode":"list","value":"gpt-4.1-mini"},"options":{}},"id":"24a4d7c4-f9e2-4ad9-a297-afc40dfae030","name":"LLM: OpenAI Chat","type":"@n8n/n8n-nodes-langchain.lmChatOpenAi","position":[2368,416],"typeVersion":1.2},{"parameters":{"promptType":"define","text":"=Your task is to create an image prompt following the system guidelines.  \\nEnsure that the reference image is represented as **accurately as possible**, including all text elements.  \\n\\nUse the following inputs:  \\n\\n- **User’s description:**  \\n{{ $json.CAPTION }}\\n\\n- **Reference image description:**  \\n{{ $json['IMAGE DESCRIPTION'] }}\\n","hasOutputParser":true,"options":{"systemMessage":"=ROLE: UGC Image Prompt Builder  \\n\\nGOAL:  \\nGenerate one concise, natural, and realistic image prompt (≤120 words) from a given product or reference image. The prompt must simulate authentic UGC (user-generated content) photography.  \\n\\nRULES:  \\n- Always output **one JSON object only** with the key:  \\n  - `image_prompt`: (string with full description)  \\n- Do **not** add commentary, metadata, or extra keys. JSON only.  \\n\\nSTYLE GUIDELINES:  \\n- Tone: casual, unstaged, lifelike, handheld snapshot.  \\n- Camera cues: include at least 2–3 (e.g., phone snapshot, handheld framing, off-center composition, natural indoor light, soft shadows, slight motion blur, auto exposure, unpolished look, mild grain).  \\n- Realism: embrace imperfections (wrinkles, stray hairs, skin texture, clutter, smudges).  \\n- Packaging/Text: preserve exactly as visible. Never invent claims, numbers, or badges.  \\n- Diversity: if people appear but are unspecified, vary gender/ethnicity naturally; default age range = 21–38.  \\n- Setting: default to real-world everyday spaces (home, street, store, gym, office).  \\n\\nSAFETY:  \\n- No copyrighted character names.  \\n- No dialogue or scripts. Only describe scenes.  \\n\\nOUTPUT CONTRACT:  \\n- JSON only, no prose outside.  \\n- Max 120 words in `image_prompt`.  \\n- Must cover: subject, action, mood, setting, style/camera, colors, and text accuracy.  \\n\\nCHECKLIST BEFORE OUTPUT:  \\n- Natural handheld tone?  \\n- At least 2 camera cues included?  \\n- Product text preserved exactly?  \\n- Only JSON returned?  \\n\\n---  \\n\\n### Example  \\n\\nGood Example :  \\n```json\\n{ \\"image_prompt\\": \\"a young adult casually holding a skincare tube near a bathroom mirror; action: dabs small amount on the back of the hand; mood: easy morning; setting: small apartment bathroom with towel on rack and toothbrush cup; style/camera: phone snapshot, handheld framing, off-center composition, natural window light, slight motion blur, mild grain; colors: soft whites and mint label; text accuracy: keep every word on the tube exactly as visible, no added claims\\" }\\n"}},"id":"c3e15081-e795-4cb0-97b2-6284340fbcb2","name":"Generate Image Prompt","type":"@n8n/n8n-nodes-langchain.agent","position":[2416,176],"typeVersion":2.2},{"parameters":{"method":"POST","url":"https://queue.fal.run/fal-ai/nano-banana/edit","authentication":"genericCredentialType","genericAuthType":"httpHeaderAuth","sendBody":true,"specifyBody":"json","jsonBody":"={\\n\\t\\"prompt\\": \\"{{ $json.output.image_prompt.replace(/\\\\\\"/g, '\\\\\\\\\\\\\\"').replace(/\\\\n/g, '\\\\\\\\n') }}\\",\\n\\"image_urls\\": [\\"{{ $('Google Drive: Upload Image').item.json.webContentLink }}\\"]\\n\\n}\\n\\n","options":{}},"id":"a44d6d6e-d670-4a05-9e78-393632b73893","name":"NanoBanana: Create Image","type":"n8n-nodes-base.httpRequest","position":[2752,176],"typeVersion":4.2},{"parameters":{"amount":20},"id":"ce19a9d7-1ef3-4a4f-85e9-969013739b3d","name":"Wait for Image Edit","type":"n8n-nodes-base.wait","position":[2960,176],"webhookId":"df52d997-45c4-431f-bdf6-89dd25027b5b","typeVersion":1.1},{"parameters":{"url":"={{ $json.response_url }}","authentication":"genericCredentialType","genericAuthType":"httpHeaderAuth","options":{}},"id":"d905fef0-7af5-461a-b6e6-943b2e172b35","name":"Download Edited Image","type":"n8n-nodes-base.httpRequest","position":[2960,400],"typeVersion":4.2},{"parameters":{"documentId":{"__rl":true,"mode":"id","value":"="},"sheetName":{"__rl":true,"mode":"id","value":"="},"options":{}},"id":"7e1bfafc-766a-40fb-97ab-dcc7275b817a","name":"Google Sheets: Read Video Parameters (CONFIG)","type":"n8n-nodes-base.googleSheets","position":[896,736],"typeVersion":4.6},{"parameters":{"chatId":"={{ $('Telegram Trigger: Receive Video Idea').item.json.message.chat.id }}","text":"Published","additionalFields":{}},"id":"98245b57-58dd-48e0-b224-7b7942fec1e3","name":"Telegram: Send notification","type":"n8n-nodes-base.telegram","position":[2976,1264],"webhookId":"2f4a4bc1-99de-4e93-8523-dd8c6499b893","typeVersion":1.2},{"parameters":{"content":"# 🎬 Generate AI viral videos with NanoBanana & VEO3, shared on socials via Blotato (By Dr. Firas)\\n\\n\\n# 🎥 Full Tutorial :\\n[![AI Voice Agent Preview](https://www.dr-firas.com/nanobanana.png)](https://youtu.be/nlwpbXQqNQ4)\\n\\n---\\n\\n# 📘 Documentation  \\nAccess detailed setup instructions, API config, platform connection guides, and workflow customization tips:\\n\\n📎 [Open the full documentation on Notion](https://automatisation.notion.site/NonoBanan-2643d6550fd98041aef5dcbe8ab0f7a1?source=copy_link)\\n\\n---\\n\\n# ⚙️ Requirements\\n\\n1. ✅ **Create a [Blotato](https://blotato.com/?ref=firas) account** (Pro plan required for API access)  \\n2. 🔑 **Generate your Blotato API Key** via: `Settings > API > Generate API Key`  \\n3. 📦 **Enable “Verified Community Nodes”** in the n8n admin settings  \\n4. 🧩 **Install the Blotato** verified community node in n8n  \\n5. 🛠 **Create a Blotato API credential** inside your n8n credentials tab  \\n6. 📄 **Duplicate this [Google Sheet template](https://docs.google.com/spreadsheets/d/1FutmZHblwnk36fp59fnePjONzuJBdndqZOCuRoGWSmY/edit?usp=sharing)**  \\n7. ☁️ **Make sure your Google Drive folder is PUBLIC** (anyone with the link can access)  \\n8. 📌 **Complete the 3 brown sticky note steps** inside the workflow editor\\n\\n","height":1476,"width":700,"color":6},"id":"5c7c67af-6704-446e-9a5c-e0e7d0f1e835","name":"Sticky Note5","type":"n8n-nodes-base.stickyNote","position":[-128,-16],"typeVersion":1}]	{"Merge":{"main":[[{"node":"Update Status to \\"DONE\\"","type":"main","index":0}]]},"Think":{"ai_tool":[[{"node":"AI Agent: Generate Video Script","type":"ai_tool","index":0}]]},"Tiktok":{"main":[[{"node":"Merge","type":"main","index":0}]]},"Bluesky":{"main":[[{"node":"Merge","type":"main","index":7}]]},"Threads":{"main":[[{"node":"Merge","type":"main","index":6}]]},"Youtube":{"main":[[{"node":"Merge","type":"main","index":5}]]},"Facebook":{"main":[[{"node":"Merge","type":"main","index":2}]]},"Linkedin":{"main":[[{"node":"Merge","type":"main","index":1}]]},"Instagram":{"main":[[{"node":"Merge","type":"main","index":3}]]},"Pinterest":{"main":[[{"node":"Merge","type":"main","index":8}]]},"Twitter (X)":{"main":[[{"node":"Merge","type":"main","index":4}]]},"Format Prompt":{"main":[[{"node":"Generate Video with VEO3","type":"main","index":0}]]},"LLM: OpenAI Chat":{"ai_languageModel":[[{"node":"Generate Image Prompt","type":"ai_languageModel","index":0}]]},"OpenAI Chat Model":{"ai_languageModel":[[{"node":"AI Agent: Generate Video Script","type":"ai_languageModel","index":0}]]},"Set Master Prompt":{"main":[[{"node":"AI Agent: Generate Video Script","type":"main","index":0}]]},"Wait for Image Edit":{"main":[[{"node":"Download Edited Image","type":"main","index":0}]]},"Download Edited Image":{"main":[[{"node":"Google Sheets: Read Video Parameters (CONFIG)","type":"main","index":0}]]},"Generate Image Prompt":{"main":[[{"node":"NanoBanana: Create Image","type":"main","index":0}]]},"Update Status to \\"DONE\\"":{"main":[[{"node":"Telegram: Send notification","type":"main","index":0}]]},"Upload Video to BLOTATO":{"main":[[{"node":"Tiktok","type":"main","index":0},{"node":"Linkedin","type":"main","index":0},{"node":"Facebook","type":"main","index":0},{"node":"Instagram","type":"main","index":0},{"node":"Twitter (X)","type":"main","index":0},{"node":"Youtube","type":"main","index":0},{"node":"Threads","type":"main","index":0},{"node":"Bluesky","type":"main","index":0},{"node":"Pinterest","type":"main","index":0}]]},"Wait for VEO3 Rendering":{"main":[[{"node":"Download Video from VEO3","type":"main","index":0}]]},"Download Video from VEO3":{"main":[[{"node":"Rewrite Caption with GPT-4o","type":"main","index":0}]]},"Generate Video with VEO3":{"main":[[{"node":"Wait for VEO3 Rendering","type":"main","index":0}]]},"NanoBanana: Create Image":{"main":[[{"node":"Wait for Image Edit","type":"main","index":0}]]},"Send Final Video Preview":{"main":[[{"node":"Upload Video to BLOTATO","type":"main","index":0}]]},"Structured Output Parser":{"ai_outputParser":[[{"node":"AI Agent: Generate Video Script","type":"ai_outputParser","index":0}]]},"Telegram: Get Image File":{"main":[[{"node":"Google Drive: Upload Image","type":"main","index":0}]]},"Google Drive: Upload Image":{"main":[[{"node":"Google Sheets: Log Image & Caption","type":"main","index":0}]]},"Telegram API: Get File URL":{"main":[[{"node":"OpenAI Vision: Analyze Reference Image","type":"main","index":0}]]},"Rewrite Caption with GPT-4o":{"main":[[{"node":"Save Caption Video to Google Sheets","type":"main","index":0}]]},"Send Video URL via Telegram":{"main":[[{"node":"Send Final Video Preview","type":"main","index":0}]]},"Set: Bot Token (Placeholder)":{"main":[[{"node":"Telegram API: Get File URL","type":"main","index":0}]]},"LLM: Structured Output Parser":{"ai_outputParser":[[{"node":"Generate Image Prompt","type":"ai_outputParser","index":0}]]},"AI Agent: Generate Video Script":{"main":[[{"node":"Format Prompt","type":"main","index":0}]]},"Google Sheets: Log Image & Caption":{"main":[[{"node":"Set: Bot Token (Placeholder)","type":"main","index":0}]]},"Save Caption Video to Google Sheets":{"main":[[{"node":"Send Video URL via Telegram","type":"main","index":0}]]},"Telegram Trigger: Receive Video Idea":{"main":[[{"node":"Set: Bot Token (Placeholder)","type":"main","index":0},{"node":"Telegram: Get Image File","type":"main","index":0}]]},"OpenAI Vision: Analyze Reference Image":{"main":[[{"node":"Google Sheets: Update Image Description","type":"main","index":0}]]},"Google Sheets: Update Image Description":{"main":[[{"node":"Generate Image Prompt","type":"main","index":0}]]},"Google Sheets: Read Video Parameters (CONFIG)":{"main":[[{"node":"Set Master Prompt","type":"main","index":0}]]}}	2026-01-08 14:27:12.542+00	2026-01-08 14:27:12.542+00	{"executionOrder":"v1","availableInMCP":false}	\N	{}	ca446764-40e9-462d-a58b-cb8dbbb41ea0	0	Jut4ZRKjhdnIG775	\N	\N	f	1	\N	\N
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
AI Automation	2026-01-08 14:27:09.441+00	2026-01-08 14:27:09.441+00	PWHlqwdsRhDO0Kum
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
62	1723627610222	CreateInvalidAuthTokenTable1723627610222
63	1723796243146	RefactorExecutionIndices1723796243146
64	1724753530828	CreateAnnotationTables1724753530828
65	1724951148974	AddApiKeysTable1724951148974
66	1726606152711	CreateProcessedDataTable1726606152711
67	1727427440136	SeparateExecutionCreationFromStart1727427440136
68	1728659839644	AddMissingPrimaryKeyOnAnnotationTagMapping1728659839644
69	1729607673464	UpdateProcessedDataValueColumnToText1729607673464
70	1729607673469	AddProjectIcons1729607673469
71	1730386903556	CreateTestDefinitionTable1730386903556
72	1731404028106	AddDescriptionToTestDefinition1731404028106
73	1731582748663	MigrateTestDefinitionKeyToString1731582748663
74	1732271325258	CreateTestMetricTable1732271325258
75	1732549866705	CreateTestRun1732549866705
76	1733133775640	AddMockedNodesColumnToTestDefinition1733133775640
77	1734479635324	AddManagedColumnToCredentialsTable1734479635324
78	1736172058779	AddStatsColumnsToTestRun1736172058779
79	1736947513045	CreateTestCaseExecutionTable1736947513045
80	1737715421462	AddErrorColumnsToTestRuns1737715421462
81	1738709609940	CreateFolderTable1738709609940
82	1739549398681	CreateAnalyticsTables1739549398681
83	1740445074052	UpdateParentFolderIdColumn1740445074052
84	1741167584277	RenameAnalyticsToInsights1741167584277
85	1742918400000	AddScopesColumnToApiKeys1742918400000
86	1745322634000	ClearEvaluation1745322634000
87	1745587087521	AddWorkflowStatisticsRootCount1745587087521
88	1745934666076	AddWorkflowArchivedColumn1745934666076
89	1745934666077	DropRoleTable1745934666077
90	1747824239000	AddProjectDescriptionColumn1747824239000
91	1750252139166	AddLastActiveAtColumnToUser1750252139166
92	1750252139166	AddScopeTables1750252139166
93	1750252139167	AddRolesTables1750252139167
94	1750252139168	LinkRoleToUserTable1750252139168
95	1750252139170	RemoveOldRoleColumn1750252139170
96	1752669793000	AddInputsOutputsToTestCaseExecution1752669793000
97	1753953244168	LinkRoleToProjectRelationTable1753953244168
98	1754475614601	CreateDataStoreTables1754475614601
99	1754475614602	ReplaceDataStoreTablesWithDataTables1754475614602
100	1756906557570	AddTimestampsToRoleAndRoleIndexes1756906557570
101	1758731786132	AddAudienceColumnToApiKeys1758731786132
102	1758794506893	AddProjectIdToVariableTable1758794506893
103	1759399811000	ChangeValueTypesForInsights1759399811000
104	1760019379982	CreateChatHubTables1760019379982
105	1760020000000	CreateChatHubAgentTable1760020000000
106	1760020838000	UniqueRoleNames1760020838000
107	1760116750277	CreateOAuthEntities1760116750277
108	1760314000000	CreateWorkflowDependencyTable1760314000000
109	1760965142113	DropUnusedChatHubColumns1760965142113
110	1761047826451	AddWorkflowVersionColumn1761047826451
111	1761655473000	ChangeDependencyInfoToJson1761655473000
112	1761773155024	AddAttachmentsToChatHubMessages1761773155024
113	1761830340990	AddToolsColumnToChatHubTables1761830340990
114	1762177736257	AddWorkflowDescriptionColumn1762177736257
115	1762763704614	BackfillMissingWorkflowHistoryRecords1762763704614
116	1762771264000	ChangeDefaultForIdInUserTable1762771264000
117	1762771954619	AddIsGlobalColumnToCredentialsTable1762771954619
118	1762847206508	AddWorkflowHistoryAutoSaveFields1762847206508
119	1763047800000	AddActiveVersionIdColumn1763047800000
120	1763048000000	ActivateExecuteWorkflowTriggerWorkflows1763048000000
121	1763572724000	ChangeOAuthStateColumnToUnboundedVarchar1763572724000
122	1763716655000	CreateBinaryDataTable1763716655000
123	1764167920585	CreateWorkflowPublishHistoryTable1764167920585
124	1764276827837	AddCreatorIdToProjectTable1764276827837
125	1764682447000	CreateDynamicCredentialResolverTable1764682447000
126	1764689388394	AddDynamicCredentialEntryTable1764689388394
127	1765448186933	BackfillMissingWorkflowHistoryRecords1765448186933
128	1765459448000	AddResolvableFieldsToCredentials1765459448000
129	1765788427674	AddIconToAgentTable1765788427674
130	1765804780000	ConvertAgentIdToUuid1765804780000
131	1765886667897	AddAgentIdForeignKeys1765886667897
132	1765892199653	AddWorkflowVersionIdToExecutionData1765892199653
133	1766064542000	AddWorkflowPublishScopeToProjectRoles1766064542000
134	1766068346315	AddChatMessageIndices1766068346315
135	1766500000000	ExpandInsightsWorkflowIdLength1766500000000
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
l4hWBQOzcg2JdDCd	13d2c3c2-d81e-43ae-a086-c3dd5a41430f	project:personalOwner	2026-01-08 13:27:54.424+00	2026-01-08 13:27:54.424+00
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
features.sourceControl.sshKeys	{"encryptedPrivateKey":"U2FsdGVkX18h/49uUL6uBG/SRr0As5ymhAx3/OitbRZBOw0Vq7XaqvnRB7hqtgZJdSvM7145iC1E5Ht2hXCuV0m5gKEfXgvfnms/3oa/94EA8dRMd/4vn7r2a14B81LiC+oZNobMMmdUuFZEVmaZAUmWf3ixV9ohE5AcbhgUdE8fgWy8mVm+UBNeFzsNmCAUxCN7uq/jNaNEwk0uFt5z7kCrEzpAD1ZWPtJcBi/5XDGOYljF9DYcVhnBmEJ6/Sxf7uDTTQlMsZv3EJ1O4RMxBshNguO4xFUeeVNaRC9Sm44JJqjN1ReDlAFDY5aeoYuBRIf8A60MyzGyhmpj0wcy49FCkOFadoTEIvjLtFpabLhYH9M1dvnFJRK7PpRIIb3W8duL4gmfhPchXFMHhsoWOi5sP5sjGeV4OeS/SUmoT+Espwj6vmjylhR4RuVedTQXA0gY+/nc2IRKzjgg1jWZH7XqJ6R6OoizVIPXuhkYRmq2J0UjnkPKMwV4ffewA4qlRj2Q7iHHFI/LsIc2w03oi4PjO2AFAyfiTXzKjNJEObtXUnC3VnGzn7EuaSZbmFVX","publicKey":"ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBioNhye+1VBGKTZH0NOE2WUE9VEgG7E2Nr9T4wnAE72 n8n deploy key"}	t
features.sourceControl	{"branchName":"main","connectionType":"ssh","keyGeneratorType":"ed25519"}	t
userManagement.isInstanceOwnerSetUp	true	t
\.


--
-- Data for Name: shared_credentials; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."shared_credentials" ("credentialsId", "projectId", "role", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: shared_workflow; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."shared_workflow" ("workflowId", "projectId", "role", "createdAt", "updatedAt") FROM stdin;
Jut4ZRKjhdnIG775	l4hWBQOzcg2JdDCd	workflow:owner	2026-01-08 14:27:12.542+00	2026-01-08 14:27:12.542+00
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
ca446764-40e9-462d-a58b-cb8dbbb41ea0	Jut4ZRKjhdnIG775	Geraldo Bathan	2026-01-08 14:27:12.542+00	2026-01-08 14:27:12.542+00	[{"parameters":{"content":"# 📑 STEP 5 — Auto-Post to All Platforms\\n\\n","height":832,"width":1344,"color":4},"id":"eec72991-f048-40cd-87e9-6a7c2fc7955d","name":"Sticky Note3","type":"n8n-nodes-base.stickyNote","position":[1824,624],"typeVersion":1},{"parameters":{"resource":"media","operation":"upload"},"id":"aae3c321-582f-49d6-8007-9be1c3b17377","name":"Upload Video to BLOTATO","type":"@blotato/n8n-nodes-preview-blotato.blotato","position":[1888,1248],"typeVersion":2,"credentials":{}},{"parameters":{"resource":"post","operation":"create"},"id":"0f4d0b29-3e90-4809-8510-bb41971a3910","name":"Youtube","type":"@blotato/n8n-nodes-preview-blotato.blotato","position":[2512,1040],"typeVersion":2,"credentials":{}},{"parameters":{"resource":"post","operation":"create"},"id":"7999a817-0cda-4c61-b46d-8fde25a19a50","name":"Tiktok","type":"@blotato/n8n-nodes-preview-blotato.blotato","position":[2144,864],"typeVersion":2,"credentials":{}},{"parameters":{"mode":"chooseBranch","numberInputs":9},"id":"d5d18027-b9ce-44f2-a019-e7f702af9dda","name":"Merge","type":"n8n-nodes-base.merge","position":[2800,944],"typeVersion":3.2},{"parameters":{"operation":"appendOrUpdate","documentId":{"__rl":true,"mode":"id","value":"="},"sheetName":{"__rl":true,"mode":"id","value":"="},"columns":{"value":{"STATUS":"Published","IMAGE NAME":"={{ $('Telegram Trigger: Receive Video Idea').item.json.message.photo[2].file_unique_id }}"},"schema":[{"id":"IMAGE NAME","type":"string","display":true,"removed":false,"required":false,"displayName":"IMAGE NAME","defaultMatch":false,"canBeUsedToMatch":true},{"id":"IMAGE URL","type":"string","display":true,"removed":true,"required":false,"displayName":"IMAGE URL","defaultMatch":false,"canBeUsedToMatch":true},{"id":"IMAGE DESCRIPTION","type":"string","display":true,"removed":true,"required":false,"displayName":"IMAGE DESCRIPTION","defaultMatch":false,"canBeUsedToMatch":true},{"id":"CAPTION","type":"string","display":true,"removed":true,"required":false,"displayName":"CAPTION","defaultMatch":false,"canBeUsedToMatch":true},{"id":"URL VIDEO FINAL","type":"string","display":true,"removed":true,"required":false,"displayName":"URL VIDEO FINAL","defaultMatch":false,"canBeUsedToMatch":true},{"id":"TITRE VIDEO","type":"string","display":true,"removed":true,"required":false,"displayName":"TITRE VIDEO","defaultMatch":false,"canBeUsedToMatch":true},{"id":"CAPTION VIDEO","type":"string","display":true,"removed":true,"required":false,"displayName":"CAPTION VIDEO","defaultMatch":false,"canBeUsedToMatch":true},{"id":"STATUS","type":"string","display":true,"removed":false,"required":false,"displayName":"STATUS","defaultMatch":false,"canBeUsedToMatch":true}],"mappingMode":"defineBelow","matchingColumns":["IMAGE NAME"],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"id":"532087d1-9bd9-46f4-bade-60fe8c24f89e","name":"Update Status to \\"DONE\\"","type":"n8n-nodes-base.googleSheets","position":[2976,1056],"typeVersion":4.5},{"parameters":{"resource":"post","operation":"create"},"id":"60fc68f4-f678-45b9-91d2-f032fb65c1d7","name":"Linkedin","type":"@blotato/n8n-nodes-preview-blotato.blotato","position":[2336,864],"typeVersion":2,"credentials":{}},{"parameters":{"resource":"post","operation":"create"},"id":"5a3fb5b6-f3d7-4695-872c-51714e823f3f","name":"Facebook","type":"@blotato/n8n-nodes-preview-blotato.blotato","position":[2512,864],"typeVersion":2,"credentials":{}},{"parameters":{"resource":"post","operation":"create"},"id":"820d0453-ecdd-4147-93a7-284e148277da","name":"Instagram","type":"@blotato/n8n-nodes-preview-blotato.blotato","position":[2144,1040],"typeVersion":2,"credentials":{}},{"parameters":{"resource":"post","operation":"create"},"id":"07033eb1-0e84-4d11-a5f5-504bcc4fde4c","name":"Threads","type":"@blotato/n8n-nodes-preview-blotato.blotato","position":[2144,1248],"typeVersion":2,"credentials":{}},{"parameters":{"resource":"post","operation":"create"},"id":"53fc930b-34e2-471d-bce8-091023171b45","name":"Bluesky","type":"@blotato/n8n-nodes-preview-blotato.blotato","position":[2336,1248],"typeVersion":2,"credentials":{}},{"parameters":{"resource":"post","operation":"create"},"id":"cafda13e-18dc-4c97-96c6-04753e47d591","name":"Pinterest","type":"@blotato/n8n-nodes-preview-blotato.blotato","position":[2512,1248],"typeVersion":2,"credentials":{}},{"parameters":{"resource":"post","operation":"create"},"id":"514b5c29-899f-47cd-b78e-6cc6a29474ad","name":"Twitter (X)","type":"@blotato/n8n-nodes-preview-blotato.blotato","position":[2336,1040],"typeVersion":2,"credentials":{}},{"parameters":{"model":{"__rl":true,"mode":"list","value":"gpt-4.1-mini"},"options":{}},"id":"6cd60230-c9ca-4497-a3bf-32bf492721a7","name":"OpenAI Chat Model","type":"@n8n/n8n-nodes-langchain.lmChatOpenAi","position":[1344,960],"typeVersion":1.2},{"parameters":{},"id":"53a6f0a3-ce83-4aa0-82cc-95f2a68f019a","name":"Think","type":"@n8n/n8n-nodes-langchain.toolThink","position":[1488,960],"typeVersion":1},{"parameters":{"jsonSchemaExample":"{\\n  \\"title\\": \\"string\\",\\n  \\"final_prompt\\": \\"string\\"\\n}\\n"},"id":"5c862083-f811-4d78-8d20-fa43f5e5dd46","name":"Structured Output Parser","type":"@n8n/n8n-nodes-langchain.outputParserStructured","position":[1632,960],"typeVersion":1.3},{"parameters":{"chatId":"={{ $('Telegram Trigger: Receive Video Idea').item.json.message.chat.id }}","text":"=Url VIDEO : {{ $('Download Video from VEO3').item.json.data.response.resultUrls[0] }}","additionalFields":{}},"id":"faa72cdb-ee26-4fa5-b5fb-f25d207b5fd3","name":"Send Video URL via Telegram","type":"n8n-nodes-base.telegram","position":[1872,752],"webhookId":"ea6e5974-1930-4b67-a51b-16249a9ed8bd","typeVersion":1.2},{"parameters":{"operation":"sendVideo","chatId":"={{ $json.result.chat.id }}","file":"={{ $('Save Caption Video to Google Sheets').item.json['URL VIDEO FINAL'] }}","additionalFields":{}},"id":"c180c367-83cd-43e3-babe-c963a95373fa","name":"Send Final Video Preview","type":"n8n-nodes-base.telegram","position":[1888,992],"webhookId":"443fd41d-a051-45bf-ad68-173197dba26b","typeVersion":1.2},{"parameters":{"updates":["message"],"additionalFields":{}},"id":"2fe3fc4e-ecf8-41a0-a67c-9637416704fe","name":"Telegram Trigger: Receive Video Idea","type":"n8n-nodes-base.telegramTrigger","position":[656,176],"webhookId":"26dbe6f5-5197-4b2b-9e32-8060f2119686","typeVersion":1.2},{"parameters":{"assignments":{"assignments":[{"id":"cc2e0500-57b1-4615-82cb-1c950e5f2ec4","name":"json_master","type":"string","value":"={\\n  \\"description\\": \\"Brief narrative description of the scene, focusing on key visual storytelling and product transformation.\\",\\n  \\"style\\": \\"cinematic | photorealistic | stylized | gritty | elegant\\",\\n  \\"camera\\": {\\n    \\"type\\": \\"fixed | dolly | Steadicam | crane combo\\",\\n    \\"movement\\": \\"describe any camera moves like slow push-in, pan, orbit\\",\\n    \\"lens\\": \\"optional lens type or focal length for cinematic effect\\"\\n  },\\n  \\"lighting\\": {\\n    \\"type\\": \\"natural | dramatic | high-contrast\\",\\n    \\"sources\\": \\"key lighting sources (sunset, halogen, ambient glow...)\\",\\n    \\"FX\\": \\"optional VFX elements like fog, reflections, flares\\"\\n  },\\n  \\"environment\\": {\\n    \\"location\\": \\"describe location or room (kitchen, desert, basketball court...)\\",\\n    \\"set_pieces\\": [\\n      \\"list of key background or prop elements\\",\\n      \\"e.g. hardwood floors, chain-link fence, velvet surface\\"\\n    ],\\n    \\"mood\\": \\"describe the ambient atmosphere (moody, clean, epic...)\\"\\n  },\\n  \\"elements\\": [\\n    \\"main physical items involved (product box, accessories, vehicles...)\\",\\n    \\"include brand visibility (logos, packaging, texture...)\\"\\n  ],\\n  \\"subject\\": {\\n    \\"character\\": {\\n      \\"description\\": \\"optional – physical description, outfit\\",\\n      \\"pose\\": \\"optional – position or gesture\\",\\n      \\"lip_sync_line\\": \\"optional – spoken line if there’s a voiceover\\"\\n    },\\n    \\"product\\": {\\n      \\"brand\\": \\"Brand name\\",\\n      \\"model\\": \\"Product model or name\\",\\n      \\"action\\": \\"description of product transformation or assembly\\"\\n    }\\n  },\\n  \\"motion\\": {\\n    \\"type\\": \\"e.g. transformation, explosion, vortex\\",\\n    \\"details\\": \\"step-by-step visual flow of how elements move or evolve\\"\\n  },\\n  \\"VFX\\": {\\n    \\"transformation\\": \\"optional – describe style (neon trails, motion blur...)\\",\\n    \\"impact\\": \\"optional – e.g. shockwave, glow, distortion\\",\\n    \\"particles\\": \\"optional – embers, sparks, thread strands...\\",\\n    \\"environment\\": \\"optional – VFX affecting the scene (ripples, wind...)\\"\\n  },\\n  \\"audio\\": {\\n    \\"music\\": \\"optional – cinematic score, trap beat, ambient tone\\",\\n    \\"sfx\\": [\\n      \\"list of sound effects (zip, pop, woosh...)\\"\\n    ],\\n    \\"ambience\\": \\"optional – background soundscape (traffic, wind...)\\",\\n    \\"voiceover\\": {\\n      \\"delivery\\": \\"tone and style (confident, whisper, deep...)\\",\\n      \\"line\\": \\"text spoken if applicable\\"\\n    }\\n  },\\n  \\"ending\\": \\"Final shot description – what is seen or felt at the end (freeze frame, logo pulse, glow...)\\",\\n  \\"text\\": \\"none | overlay | tagline | logo pulse at end only\\",\\n  \\"format\\": \\"16:9 | 4k | vertical\\",\\n  \\"keywords\\": [\\n    \\"brand\\",\\n    \\"scene style\\",\\n    \\"motion type\\",\\n    \\"camera style\\",\\n    \\"sound mood\\",\\n    \\"target theme\\"\\n  ]\\n}\\n"}]},"options":{}},"id":"8d776dfb-8cc6-41e3-8c75-4e987ee224c4","name":"Set Master Prompt","type":"n8n-nodes-base.set","position":[1104,736],"typeVersion":3.4},{"parameters":{"promptType":"define","text":"=Create a UGC-style video prompt using both the reference image and the user description.  \\n\\n**Inputs**  \\n- User description (optional):  \\n  `{{ $('Telegram Trigger: Receive Video Idea').item.json.message.caption }}`  \\n- Reference image analysis (stay strictly faithful to what’s visible):  \\n  `{{ $('Google Sheets: Update Image Description').item.json['IMAGE DESCRIPTION'] }}`  \\n\\n**Rules**  \\n- Keep the style casual, authentic, and realistic. Avoid studio-like or cinematic language.  \\n- Default model: `veo3_fast` (unless otherwise specified).  \\n- Output only **one JSON object** with the key: `video_prompt`.  \\n","hasOutputParser":true,"options":{"systemMessage":"=system_prompt:\\n  ## SYSTEM PROMPT: Structured Video Ad Prompt Generator\\n  A - Ask:\\n    Generate a structured video ad prompt for cinematic generation, strictly based on the master schema provided in: {{ $json.json_master }}.\\n    The final result must be a JSON object with exactly two top-level keys: `title` and `final_prompt`.\\n\\n  G - Guidance:\\n    role: Creative Director\\n    output_count: 1\\n    character_limit: None\\n    constraints:\\n      - The output must be valid JSON.\\n      - The `title` field should contain a short, descriptive and unique title (max 15 words).\\n      - The `final_prompt` field must contain a **single-line JSON string** that follows the exact structure of {{ $json.json_master }} with all fields preserved.\\n      - Do not include any explanations, markdown, or extra text — only the JSON object.\\n      - Escape all inner quotes in the `final_prompt` string so it is valid as a stringified JSON inside another JSON.\\n    tool_usage:\\n      - Ensure consistent alignment across all fields (camera, lighting, motion, etc.).\\n      - Maintain full structure even for optional fields (use \\"none\\", \\"\\", or [] as needed).\\n\\n  N - Notation:\\n    format: JSON\\n    expected_output:\\n      {\\n        \\"title\\": \\"A unique short title for the scene\\",\\n        \\"final_prompt\\": \\"{...stringified JSON of the full prompt...}\\"\\n      }\\n\\n"}},"id":"54638a1d-fd59-4d98-93da-1286768dabe6","name":"AI Agent: Generate Video Script","type":"@n8n/n8n-nodes-langchain.agent","position":[1424,736],"typeVersion":2},{"parameters":{"method":"POST","url":"https://api.kie.ai/api/v1/veo/generate","authentication":"genericCredentialType","genericAuthType":"httpHeaderAuth","sendBody":true,"contentType":"raw","rawContentType":"application/json","body":"={\\n  \\"prompt\\": {{ $json.prompt }},\\n  \\"model\\": \\"{{ $('Google Sheets: Read Video Parameters (CONFIG)').item.json.model }}\\",\\n  \\"aspectRatio\\": \\"{{ $json.aspectRatio }}\\",\\n  \\"imageUrls\\": [\\n    \\"{{ $('Download Edited Image').item.json.images[0].url }}\\"\\n  ]\\n}","options":{}},"id":"28c15624-2a02-45b7-94ae-669ae5ad0008","name":"Generate Video with VEO3","type":"n8n-nodes-base.httpRequest","position":[704,1248],"typeVersion":4.2},{"parameters":{"amount":20},"id":"22f42daa-6c03-4d6a-9101-cb3cdb0b6a12","name":"Wait for VEO3 Rendering","type":"n8n-nodes-base.wait","position":[912,1248],"webhookId":"f6d814f3-4eb8-4629-a920-134cfa4ea03b","typeVersion":1.1},{"parameters":{"url":"https://api.kie.ai/api/v1/veo/record-info","authentication":"genericCredentialType","genericAuthType":"httpHeaderAuth","sendQuery":true,"queryParameters":{"parameters":[{"name":"taskId","value":"={{ $('Generate Video with VEO3').item.json.data.taskId }}"}]},"options":{}},"id":"a054fb0f-c399-48da-a2af-8cd9684dc516","name":"Download Video from VEO3","type":"n8n-nodes-base.httpRequest","position":[1120,1248],"typeVersion":4.2},{"parameters":{"modelId":{"__rl":true,"mode":"list","value":"gpt-4o","cachedResultName":"GPT-4O"},"messages":{"values":[{"content":"=You are rewriting a TikTok video script, caption, and overlay —\\nnot inventing a new one. You must follow this format and obey\\nthese rules strictly.\\n---\\n### CONTEXT:\\nHere is the content idea to use:{{ $('Telegram Trigger: Receive Video Idea').item.json.message.caption }}\\n\\nand the Title is : {{ $('AI Agent: Generate Video Script').item.json.output.title }}\\n\\n\\nWrite the caption text using the topic.\\n\\n---\\n- MUST be under 200 characters (yes \\"Characters\\" not wordcount)\\nthis is an absolute MUST, no more than 200 characters!!! \\n\\n### FINAL OUTPUT FORMAT (no markdown formatting):\\n\\nDO NOT return any explanations. Only return the Caption Text\\n"}]},"options":{}},"id":"3675e89e-daf8-4c1d-ac3b-73b6b2834682","name":"Rewrite Caption with GPT-4o","type":"@n8n/n8n-nodes-langchain.openAi","position":[1280,1248],"typeVersion":1.8},{"parameters":{"operation":"appendOrUpdate","documentId":{"__rl":true,"mode":"id","value":"="},"sheetName":{"__rl":true,"mode":"id","value":"="},"columns":{"value":{"STATUS":"CREATE","IMAGE NAME":"={{ $('Telegram Trigger: Receive Video Idea').item.json.message.photo[2].file_unique_id }}","TITRE VIDEO":"={{ $('AI Agent: Generate Video Script').item.json.output.title }}","CAPTION VIDEO":"={{ $json.message.content }}","URL VIDEO FINAL":"={{ $('Download Video from VEO3').item.json.data.response.resultUrls[0] }}"},"schema":[{"id":"IMAGE NAME","type":"string","display":true,"removed":false,"required":false,"displayName":"IMAGE NAME","defaultMatch":false,"canBeUsedToMatch":true},{"id":"IMAGE URL","type":"string","display":true,"removed":true,"required":false,"displayName":"IMAGE URL","defaultMatch":false,"canBeUsedToMatch":true},{"id":"IMAGE DESCRIPTION","type":"string","display":true,"removed":true,"required":false,"displayName":"IMAGE DESCRIPTION","defaultMatch":false,"canBeUsedToMatch":true},{"id":"CAPTION","type":"string","display":true,"removed":true,"required":false,"displayName":"CAPTION","defaultMatch":false,"canBeUsedToMatch":true},{"id":"URL VIDEO FINAL","type":"string","display":true,"required":false,"displayName":"URL VIDEO FINAL","defaultMatch":false,"canBeUsedToMatch":true},{"id":"TITRE VIDEO","type":"string","display":true,"required":false,"displayName":"TITRE VIDEO","defaultMatch":false,"canBeUsedToMatch":true},{"id":"CAPTION VIDEO","type":"string","display":true,"removed":false,"required":false,"displayName":"CAPTION VIDEO","defaultMatch":false,"canBeUsedToMatch":true},{"id":"STATUS","type":"string","display":true,"required":false,"displayName":"STATUS","defaultMatch":false,"canBeUsedToMatch":true}],"mappingMode":"defineBelow","matchingColumns":["IMAGE NAME"],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"id":"eeb6400b-d6fd-4bef-ada1-e4ae6c3637e4","name":"Save Caption Video to Google Sheets","type":"n8n-nodes-base.googleSheets","position":[1584,1248],"typeVersion":4.6},{"parameters":{"jsCode":"const structuredPrompt = $input.first().json.output.final_prompt;\\nreturn {\\n  json: {\\n    prompt: JSON.stringify(structuredPrompt), // this escapes it correctly!\\n    model: \\"veo3_fast\\",\\n    aspectRatio: \\"16:9\\"\\n  }\\n};\\n"},"id":"38055645-dc76-4f6d-a391-d440a4f716a6","name":"Format Prompt","type":"n8n-nodes-base.code","position":[704,944],"typeVersion":2},{"parameters":{"content":"# 📑 STEP 3 — Generate Video Ad Script","height":460,"width":1180},"id":"7630f214-b7a8-4ee8-aea3-30d5456e95e5","name":"Sticky Note2","type":"n8n-nodes-base.stickyNote","position":[592,624],"typeVersion":1},{"parameters":{"content":"# 📑 STEP 4 — Generate Video with VEO3","height":320,"width":1180},"id":"e26693b7-cdbe-4a4f-93e8-bf2ffe2371f6","name":"Sticky Note4","type":"n8n-nodes-base.stickyNote","position":[592,1136],"typeVersion":1},{"parameters":{"content":"# 📑 STEP 1 — Collect Idea & Image","height":592,"width":1184},"id":"f914f65d-ed84-4d81-87b5-0de1c6a2075a","name":"Sticky Note","type":"n8n-nodes-base.stickyNote","position":[592,-16],"typeVersion":1},{"parameters":{"content":"# 📑 STEP 2 — Create Image with NanoBanana\\n","height":592,"width":1328},"id":"7f713747-140a-4058-9856-82c75b3060bc","name":"Sticky Note1","type":"n8n-nodes-base.stickyNote","position":[1824,-16],"typeVersion":1},{"parameters":{"resource":"file","fileId":"={{ $json.message.photo[2].file_id }}","additionalFields":{}},"id":"8389e27d-5de7-41fe-84a2-81a5e4d25f1d","name":"Telegram: Get Image File","type":"n8n-nodes-base.telegram","position":[1088,48],"webhookId":"06ceb31d-dcd9-4a9a-bbbe-a7bf7ae0ad4a","typeVersion":1.2},{"parameters":{"name":"={{ $('Telegram Trigger: Receive Video Idea').item.json.message.photo[2].file_unique_id }}","driveId":{"__rl":true,"mode":"id","value":"="},"folderId":{"__rl":true,"mode":"id","value":"="},"options":{}},"id":"2e7c9531-cd7f-4f44-b19e-ba15ff0e1d02","name":"Google Drive: Upload Image","type":"n8n-nodes-base.googleDrive","position":[1104,240],"typeVersion":3},{"parameters":{"operation":"appendOrUpdate","documentId":{"__rl":true,"mode":"id","value":"="},"sheetName":{"__rl":true,"mode":"id","value":"="},"columns":{"value":{"STATUS":"EN COURS","CAPTION":"={{ $('Telegram Trigger: Receive Video Idea').item.json.message.caption }}","IMAGE URL":"={{ $json.webContentLink }}","IMAGE NAME":"={{ $('Telegram Trigger: Receive Video Idea').item.json.message.photo[2].file_unique_id }}"},"schema":[{"id":"IMAGE NAME","type":"string","display":true,"removed":false,"required":false,"displayName":"IMAGE NAME","defaultMatch":false,"canBeUsedToMatch":true},{"id":"IMAGE URL","type":"string","display":true,"removed":false,"required":false,"displayName":"IMAGE URL","defaultMatch":false,"canBeUsedToMatch":true},{"id":"IMAGE DESCRIPTION","type":"string","display":true,"removed":true,"required":false,"displayName":"IMAGE DESCRIPTION","defaultMatch":false,"canBeUsedToMatch":true},{"id":"CAPTION","type":"string","display":true,"removed":false,"required":false,"displayName":"CAPTION","defaultMatch":false,"canBeUsedToMatch":true},{"id":"STATUS","type":"string","display":true,"removed":false,"required":false,"displayName":"STATUS","defaultMatch":false,"canBeUsedToMatch":true}],"mappingMode":"defineBelow","matchingColumns":["IMAGE NAME"],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"id":"687944c0-10e4-4c80-8391-80c8a003bc8e","name":"Google Sheets: Log Image & Caption","type":"n8n-nodes-base.googleSheets","position":[1104,416],"typeVersion":4.7},{"parameters":{"assignments":{"assignments":[{"id":"af62651a-3fc8-419d-908b-6514f6f4bcb3","name":"YOUR_BOT_TOKEN","type":"string","value":""}]},"options":{}},"id":"7b833f2d-21f5-48b4-989b-5ebccd0e5325","name":"Set: Bot Token (Placeholder)","type":"n8n-nodes-base.set","position":[1344,176],"typeVersion":3.4},{"parameters":{"url":"=https://api.telegram.org/bot{{ $json.YOUR_BOT_TOKEN }}/getFile?file_id={{ $('Telegram Trigger: Receive Video Idea').item.json.message.photo[3].file_id }}","options":{}},"id":"0de9edf4-e44b-4742-85c3-860743418515","name":"Telegram API: Get File URL","type":"n8n-nodes-base.httpRequest","position":[1536,176],"typeVersion":4.2},{"parameters":{"resource":"image","operation":"analyze","modelId":{"__rl":true,"mode":"list","value":"chatgpt-4o-latest","cachedResultName":"CHATGPT-4O-LATEST"},"text":"=You are an image analysis assistant.\\n\\nYour task is to analyze the given image and output results **only in YAML format**. Do not add explanations, comments, or extra text outside YAML.\\n\\nRules:\\n\\n- If the image depicts a **product**, return:\\n    \\n    ```yaml\\n    brand_name: (brand if visible or inferable)\\n    color_scheme:\\n      - hex: (hex code of each prominent color)\\n        name: (descriptive name of the color)\\n    font_style: (serif/sans-serif, bold/thin, etc.)\\n    visual_description: (1–2 sentences summarizing what is seen, ignoring the background)\\n    \\n    ```\\n    \\n- If the image depicts a **character**, return:\\n    \\n    ```yaml\\n    character_name: (name if visible or inferable, else \\"unknown\\")\\n    color_scheme:\\n      - hex: (hex code of each prominent color on the character)\\n        name: (descriptive name of the color)\\n    outfit_style: (clothing style, accessories, or notable features)\\n    visual_description: (1–2 sentences summarizing what the character looks like, ignoring the background)\\n    \\n    ```\\n    \\n- If the image depicts **both**, return **both sections** in YAML.\\n\\nOnly output valid YAML. No explanations.","imageUrls":"=https://api.telegram.org/file/bot{{ $('Set: Bot Token (Placeholder)').item.json.YOUR_BOT_TOKEN }}/{{ $json.result.file_path }}","options":{}},"id":"3d3cd52c-a44d-4cce-9348-0e5e79113ff8","name":"OpenAI Vision: Analyze Reference Image","type":"@n8n/n8n-nodes-langchain.openAi","position":[1952,176],"typeVersion":1.8},{"parameters":{"operation":"appendOrUpdate","documentId":{"__rl":true,"mode":"id","value":"="},"sheetName":{"__rl":true,"mode":"id","value":"="},"columns":{"value":{"IMAGE NAME":"={{ $('Telegram Trigger: Receive Video Idea').item.json.message.photo[2].file_unique_id }}","IMAGE DESCRIPTION":"={{ $json.content }}"},"schema":[{"id":"IMAGE NAME","type":"string","display":true,"removed":false,"required":false,"displayName":"IMAGE NAME","defaultMatch":false,"canBeUsedToMatch":true},{"id":"IMAGE URL","type":"string","display":true,"removed":true,"required":false,"displayName":"IMAGE URL","defaultMatch":false,"canBeUsedToMatch":true},{"id":"IMAGE DESCRIPTION","type":"string","display":true,"removed":false,"required":false,"displayName":"IMAGE DESCRIPTION","defaultMatch":false,"canBeUsedToMatch":true},{"id":"CAPTION","type":"string","display":true,"removed":true,"required":false,"displayName":"CAPTION","defaultMatch":false,"canBeUsedToMatch":true},{"id":"STATUS","type":"string","display":true,"removed":true,"required":false,"displayName":"STATUS","defaultMatch":false,"canBeUsedToMatch":true}],"mappingMode":"defineBelow","matchingColumns":["IMAGE NAME"],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"id":"20f8951b-e7dd-4ff9-8c48-1b5a44a17ac0","name":"Google Sheets: Update Image Description","type":"n8n-nodes-base.googleSheets","position":[2192,176],"typeVersion":4.7},{"parameters":{"jsonSchemaExample":"{\\n\\t\\"image_prompt\\": \\"string\\"\\n}"},"id":"81c4f93e-3cb4-4ef7-bb40-046c31f4d9da","name":"LLM: Structured Output Parser","type":"@n8n/n8n-nodes-langchain.outputParserStructured","position":[2576,416],"typeVersion":1.3},{"parameters":{"model":{"__rl":true,"mode":"list","value":"gpt-4.1-mini"},"options":{}},"id":"24a4d7c4-f9e2-4ad9-a297-afc40dfae030","name":"LLM: OpenAI Chat","type":"@n8n/n8n-nodes-langchain.lmChatOpenAi","position":[2368,416],"typeVersion":1.2},{"parameters":{"promptType":"define","text":"=Your task is to create an image prompt following the system guidelines.  \\nEnsure that the reference image is represented as **accurately as possible**, including all text elements.  \\n\\nUse the following inputs:  \\n\\n- **User’s description:**  \\n{{ $json.CAPTION }}\\n\\n- **Reference image description:**  \\n{{ $json['IMAGE DESCRIPTION'] }}\\n","hasOutputParser":true,"options":{"systemMessage":"=ROLE: UGC Image Prompt Builder  \\n\\nGOAL:  \\nGenerate one concise, natural, and realistic image prompt (≤120 words) from a given product or reference image. The prompt must simulate authentic UGC (user-generated content) photography.  \\n\\nRULES:  \\n- Always output **one JSON object only** with the key:  \\n  - `image_prompt`: (string with full description)  \\n- Do **not** add commentary, metadata, or extra keys. JSON only.  \\n\\nSTYLE GUIDELINES:  \\n- Tone: casual, unstaged, lifelike, handheld snapshot.  \\n- Camera cues: include at least 2–3 (e.g., phone snapshot, handheld framing, off-center composition, natural indoor light, soft shadows, slight motion blur, auto exposure, unpolished look, mild grain).  \\n- Realism: embrace imperfections (wrinkles, stray hairs, skin texture, clutter, smudges).  \\n- Packaging/Text: preserve exactly as visible. Never invent claims, numbers, or badges.  \\n- Diversity: if people appear but are unspecified, vary gender/ethnicity naturally; default age range = 21–38.  \\n- Setting: default to real-world everyday spaces (home, street, store, gym, office).  \\n\\nSAFETY:  \\n- No copyrighted character names.  \\n- No dialogue or scripts. Only describe scenes.  \\n\\nOUTPUT CONTRACT:  \\n- JSON only, no prose outside.  \\n- Max 120 words in `image_prompt`.  \\n- Must cover: subject, action, mood, setting, style/camera, colors, and text accuracy.  \\n\\nCHECKLIST BEFORE OUTPUT:  \\n- Natural handheld tone?  \\n- At least 2 camera cues included?  \\n- Product text preserved exactly?  \\n- Only JSON returned?  \\n\\n---  \\n\\n### Example  \\n\\nGood Example :  \\n```json\\n{ \\"image_prompt\\": \\"a young adult casually holding a skincare tube near a bathroom mirror; action: dabs small amount on the back of the hand; mood: easy morning; setting: small apartment bathroom with towel on rack and toothbrush cup; style/camera: phone snapshot, handheld framing, off-center composition, natural window light, slight motion blur, mild grain; colors: soft whites and mint label; text accuracy: keep every word on the tube exactly as visible, no added claims\\" }\\n"}},"id":"c3e15081-e795-4cb0-97b2-6284340fbcb2","name":"Generate Image Prompt","type":"@n8n/n8n-nodes-langchain.agent","position":[2416,176],"typeVersion":2.2},{"parameters":{"method":"POST","url":"https://queue.fal.run/fal-ai/nano-banana/edit","authentication":"genericCredentialType","genericAuthType":"httpHeaderAuth","sendBody":true,"specifyBody":"json","jsonBody":"={\\n\\t\\"prompt\\": \\"{{ $json.output.image_prompt.replace(/\\\\\\"/g, '\\\\\\\\\\\\\\"').replace(/\\\\n/g, '\\\\\\\\n') }}\\",\\n\\"image_urls\\": [\\"{{ $('Google Drive: Upload Image').item.json.webContentLink }}\\"]\\n\\n}\\n\\n","options":{}},"id":"a44d6d6e-d670-4a05-9e78-393632b73893","name":"NanoBanana: Create Image","type":"n8n-nodes-base.httpRequest","position":[2752,176],"typeVersion":4.2},{"parameters":{"amount":20},"id":"ce19a9d7-1ef3-4a4f-85e9-969013739b3d","name":"Wait for Image Edit","type":"n8n-nodes-base.wait","position":[2960,176],"webhookId":"df52d997-45c4-431f-bdf6-89dd25027b5b","typeVersion":1.1},{"parameters":{"url":"={{ $json.response_url }}","authentication":"genericCredentialType","genericAuthType":"httpHeaderAuth","options":{}},"id":"d905fef0-7af5-461a-b6e6-943b2e172b35","name":"Download Edited Image","type":"n8n-nodes-base.httpRequest","position":[2960,400],"typeVersion":4.2},{"parameters":{"documentId":{"__rl":true,"mode":"id","value":"="},"sheetName":{"__rl":true,"mode":"id","value":"="},"options":{}},"id":"7e1bfafc-766a-40fb-97ab-dcc7275b817a","name":"Google Sheets: Read Video Parameters (CONFIG)","type":"n8n-nodes-base.googleSheets","position":[896,736],"typeVersion":4.6},{"parameters":{"chatId":"={{ $('Telegram Trigger: Receive Video Idea').item.json.message.chat.id }}","text":"Published","additionalFields":{}},"id":"98245b57-58dd-48e0-b224-7b7942fec1e3","name":"Telegram: Send notification","type":"n8n-nodes-base.telegram","position":[2976,1264],"webhookId":"2f4a4bc1-99de-4e93-8523-dd8c6499b893","typeVersion":1.2},{"parameters":{"content":"# 🎬 Generate AI viral videos with NanoBanana & VEO3, shared on socials via Blotato (By Dr. Firas)\\n\\n\\n# 🎥 Full Tutorial :\\n[![AI Voice Agent Preview](https://www.dr-firas.com/nanobanana.png)](https://youtu.be/nlwpbXQqNQ4)\\n\\n---\\n\\n# 📘 Documentation  \\nAccess detailed setup instructions, API config, platform connection guides, and workflow customization tips:\\n\\n📎 [Open the full documentation on Notion](https://automatisation.notion.site/NonoBanan-2643d6550fd98041aef5dcbe8ab0f7a1?source=copy_link)\\n\\n---\\n\\n# ⚙️ Requirements\\n\\n1. ✅ **Create a [Blotato](https://blotato.com/?ref=firas) account** (Pro plan required for API access)  \\n2. 🔑 **Generate your Blotato API Key** via: `Settings > API > Generate API Key`  \\n3. 📦 **Enable “Verified Community Nodes”** in the n8n admin settings  \\n4. 🧩 **Install the Blotato** verified community node in n8n  \\n5. 🛠 **Create a Blotato API credential** inside your n8n credentials tab  \\n6. 📄 **Duplicate this [Google Sheet template](https://docs.google.com/spreadsheets/d/1FutmZHblwnk36fp59fnePjONzuJBdndqZOCuRoGWSmY/edit?usp=sharing)**  \\n7. ☁️ **Make sure your Google Drive folder is PUBLIC** (anyone with the link can access)  \\n8. 📌 **Complete the 3 brown sticky note steps** inside the workflow editor\\n\\n","height":1476,"width":700,"color":6},"id":"5c7c67af-6704-446e-9a5c-e0e7d0f1e835","name":"Sticky Note5","type":"n8n-nodes-base.stickyNote","position":[-128,-16],"typeVersion":1}]	{"Merge":{"main":[[{"node":"Update Status to \\"DONE\\"","type":"main","index":0}]]},"Think":{"ai_tool":[[{"node":"AI Agent: Generate Video Script","type":"ai_tool","index":0}]]},"Tiktok":{"main":[[{"node":"Merge","type":"main","index":0}]]},"Bluesky":{"main":[[{"node":"Merge","type":"main","index":7}]]},"Threads":{"main":[[{"node":"Merge","type":"main","index":6}]]},"Youtube":{"main":[[{"node":"Merge","type":"main","index":5}]]},"Facebook":{"main":[[{"node":"Merge","type":"main","index":2}]]},"Linkedin":{"main":[[{"node":"Merge","type":"main","index":1}]]},"Instagram":{"main":[[{"node":"Merge","type":"main","index":3}]]},"Pinterest":{"main":[[{"node":"Merge","type":"main","index":8}]]},"Twitter (X)":{"main":[[{"node":"Merge","type":"main","index":4}]]},"Format Prompt":{"main":[[{"node":"Generate Video with VEO3","type":"main","index":0}]]},"LLM: OpenAI Chat":{"ai_languageModel":[[{"node":"Generate Image Prompt","type":"ai_languageModel","index":0}]]},"OpenAI Chat Model":{"ai_languageModel":[[{"node":"AI Agent: Generate Video Script","type":"ai_languageModel","index":0}]]},"Set Master Prompt":{"main":[[{"node":"AI Agent: Generate Video Script","type":"main","index":0}]]},"Wait for Image Edit":{"main":[[{"node":"Download Edited Image","type":"main","index":0}]]},"Download Edited Image":{"main":[[{"node":"Google Sheets: Read Video Parameters (CONFIG)","type":"main","index":0}]]},"Generate Image Prompt":{"main":[[{"node":"NanoBanana: Create Image","type":"main","index":0}]]},"Update Status to \\"DONE\\"":{"main":[[{"node":"Telegram: Send notification","type":"main","index":0}]]},"Upload Video to BLOTATO":{"main":[[{"node":"Tiktok","type":"main","index":0},{"node":"Linkedin","type":"main","index":0},{"node":"Facebook","type":"main","index":0},{"node":"Instagram","type":"main","index":0},{"node":"Twitter (X)","type":"main","index":0},{"node":"Youtube","type":"main","index":0},{"node":"Threads","type":"main","index":0},{"node":"Bluesky","type":"main","index":0},{"node":"Pinterest","type":"main","index":0}]]},"Wait for VEO3 Rendering":{"main":[[{"node":"Download Video from VEO3","type":"main","index":0}]]},"Download Video from VEO3":{"main":[[{"node":"Rewrite Caption with GPT-4o","type":"main","index":0}]]},"Generate Video with VEO3":{"main":[[{"node":"Wait for VEO3 Rendering","type":"main","index":0}]]},"NanoBanana: Create Image":{"main":[[{"node":"Wait for Image Edit","type":"main","index":0}]]},"Send Final Video Preview":{"main":[[{"node":"Upload Video to BLOTATO","type":"main","index":0}]]},"Structured Output Parser":{"ai_outputParser":[[{"node":"AI Agent: Generate Video Script","type":"ai_outputParser","index":0}]]},"Telegram: Get Image File":{"main":[[{"node":"Google Drive: Upload Image","type":"main","index":0}]]},"Google Drive: Upload Image":{"main":[[{"node":"Google Sheets: Log Image & Caption","type":"main","index":0}]]},"Telegram API: Get File URL":{"main":[[{"node":"OpenAI Vision: Analyze Reference Image","type":"main","index":0}]]},"Rewrite Caption with GPT-4o":{"main":[[{"node":"Save Caption Video to Google Sheets","type":"main","index":0}]]},"Send Video URL via Telegram":{"main":[[{"node":"Send Final Video Preview","type":"main","index":0}]]},"Set: Bot Token (Placeholder)":{"main":[[{"node":"Telegram API: Get File URL","type":"main","index":0}]]},"LLM: Structured Output Parser":{"ai_outputParser":[[{"node":"Generate Image Prompt","type":"ai_outputParser","index":0}]]},"AI Agent: Generate Video Script":{"main":[[{"node":"Format Prompt","type":"main","index":0}]]},"Google Sheets: Log Image & Caption":{"main":[[{"node":"Set: Bot Token (Placeholder)","type":"main","index":0}]]},"Save Caption Video to Google Sheets":{"main":[[{"node":"Send Video URL via Telegram","type":"main","index":0}]]},"Telegram Trigger: Receive Video Idea":{"main":[[{"node":"Set: Bot Token (Placeholder)","type":"main","index":0},{"node":"Telegram: Get Image File","type":"main","index":0}]]},"OpenAI Vision: Analyze Reference Image":{"main":[[{"node":"Google Sheets: Update Image Description","type":"main","index":0}]]},"Google Sheets: Update Image Description":{"main":[[{"node":"Generate Image Prompt","type":"main","index":0}]]},"Google Sheets: Read Video Parameters (CONFIG)":{"main":[[{"node":"Set Master Prompt","type":"main","index":0}]]}}	\N	f	\N
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

SELECT pg_catalog.setval('"public"."execution_entity_id_seq"', 1, false);


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

SELECT pg_catalog.setval('"public"."migrations_id_seq"', 135, true);


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

-- \unrestrict JPUg00NsIfdz3gYgvObRsaQojbWJjfZYV5iFwhipGU0PKCpfUcnHHs2lUYtIeT8

RESET ALL;
