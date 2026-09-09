-- Seed data: ten characters with distinct stacks, roles and projects.
-- Applied once by `prisma migrate deploy`, so the database is populated
-- automatically on a fresh environment.

-- Arya Stark
INSERT INTO "Profile" (id, slug, name, description) VALUES
  ('00000000-0000-4000-8000-000000000001', 'arya-stark', 'Arya Stark', 'Offensive security engineer. Breaks systems so others cannot.');
INSERT INTO "ProfileLink" (id, label, url, "sortOrder", "profileId") VALUES
  (gen_random_uuid()::text, 'GitHub', 'https://github.com/arya-stark', 0, '00000000-0000-4000-8000-000000000001'),
  (gen_random_uuid()::text, 'LinkedIn', 'https://www.linkedin.com/in/arya-stark', 1, '00000000-0000-4000-8000-000000000001');
INSERT INTO "Skill" (id, name, "sortOrder", "profileId") VALUES
  (gen_random_uuid()::text, 'Go', 0, '00000000-0000-4000-8000-000000000001'),
  (gen_random_uuid()::text, 'Python', 1, '00000000-0000-4000-8000-000000000001'),
  (gen_random_uuid()::text, 'Reverse Engineering', 2, '00000000-0000-4000-8000-000000000001'),
  (gen_random_uuid()::text, 'Cryptography', 3, '00000000-0000-4000-8000-000000000001'),
  (gen_random_uuid()::text, 'Burp Suite', 4, '00000000-0000-4000-8000-000000000001');
INSERT INTO "Experience" (id, company, position, "startDate", "endDate", achievements, "profileId") VALUES
  (gen_random_uuid()::text, 'Faceless Security', 'Penetration Tester', '2021-09-01'::timestamp, NULL, ARRAY['Ran red-team engagements against 30+ production systems', 'Found and reported a critical auth bypass affecting all internal services'], '00000000-0000-4000-8000-000000000001'),
  (gen_random_uuid()::text, 'Braavos Labs', 'Security Analyst', '2019-04-01'::timestamp, '2021-08-31'::timestamp, ARRAY['Automated vulnerability triage, cutting review time by 60%'], '00000000-0000-4000-8000-000000000001');
INSERT INTO "Project" (id, name, url, description, "sortOrder", "profileId") VALUES
  (gen_random_uuid()::text, 'needle', 'https://github.com/arya-stark/needle', 'Coverage-guided fuzzer for network protocols', 0, '00000000-0000-4000-8000-000000000001'),
  (gen_random_uuid()::text, 'many-faces', 'https://github.com/arya-stark/many-faces', 'Identity rotation toolkit for red teams', 1, '00000000-0000-4000-8000-000000000001');

-- Bran Stark
INSERT INTO "Profile" (id, slug, name, description) VALUES
  ('00000000-0000-4000-8000-000000000002', 'bran-stark', 'Bran Stark', 'Data engineer working on event sourcing and observability.');
INSERT INTO "ProfileLink" (id, label, url, "sortOrder", "profileId") VALUES
  (gen_random_uuid()::text, 'GitHub', 'https://github.com/bran-stark', 0, '00000000-0000-4000-8000-000000000002'),
  (gen_random_uuid()::text, 'LinkedIn', 'https://www.linkedin.com/in/bran-stark', 1, '00000000-0000-4000-8000-000000000002');
INSERT INTO "Skill" (id, name, "sortOrder", "profileId") VALUES
  (gen_random_uuid()::text, 'Python', 0, '00000000-0000-4000-8000-000000000002'),
  (gen_random_uuid()::text, 'ClickHouse', 1, '00000000-0000-4000-8000-000000000002'),
  (gen_random_uuid()::text, 'Airflow', 2, '00000000-0000-4000-8000-000000000002'),
  (gen_random_uuid()::text, 'Grafana', 3, '00000000-0000-4000-8000-000000000002'),
  (gen_random_uuid()::text, 'Event Sourcing', 4, '00000000-0000-4000-8000-000000000002'),
  (gen_random_uuid()::text, 'dbt', 5, '00000000-0000-4000-8000-000000000002');
INSERT INTO "Experience" (id, company, position, "startDate", "endDate", achievements, "profileId") VALUES
  (gen_random_uuid()::text, 'Weirwood Analytics', 'Data Engineer', '2020-06-01'::timestamp, NULL, ARRAY['Built an event store ingesting 2B events per day', 'Replaced nightly batch jobs with streaming pipelines'], '00000000-0000-4000-8000-000000000002'),
  (gen_random_uuid()::text, 'Citadel Labs', 'Research Assistant', '2018-09-01'::timestamp, '2020-05-31'::timestamp, ARRAY['Published three internal papers on time-series compression'], '00000000-0000-4000-8000-000000000002');
INSERT INTO "Project" (id, name, url, description, "sortOrder", "profileId") VALUES
  (gen_random_uuid()::text, 'three-eyed', 'https://github.com/bran-stark/three-eyed', 'Append-only event store with time travel queries', 0, '00000000-0000-4000-8000-000000000002'),
  (gen_random_uuid()::text, 'greensight', 'https://github.com/bran-stark/greensight', 'Forecasting toolkit for operational metrics', 1, '00000000-0000-4000-8000-000000000002');

-- Cersei Lannister
INSERT INTO "Profile" (id, slug, name, description) VALUES
  ('00000000-0000-4000-8000-000000000003', 'cersei-lannister', 'Cersei Lannister', 'Engineering director. Enterprise integration and legacy platforms.');
INSERT INTO "ProfileLink" (id, label, url, "sortOrder", "profileId") VALUES
  (gen_random_uuid()::text, 'LinkedIn', 'https://www.linkedin.com/in/cersei-lannister', 0, '00000000-0000-4000-8000-000000000003');
INSERT INTO "Skill" (id, name, "sortOrder", "profileId") VALUES
  (gen_random_uuid()::text, 'Java', 0, '00000000-0000-4000-8000-000000000003'),
  (gen_random_uuid()::text, 'Spring', 1, '00000000-0000-4000-8000-000000000003'),
  (gen_random_uuid()::text, 'Oracle', 2, '00000000-0000-4000-8000-000000000003'),
  (gen_random_uuid()::text, 'Jenkins', 3, '00000000-0000-4000-8000-000000000003'),
  (gen_random_uuid()::text, 'Kafka', 4, '00000000-0000-4000-8000-000000000003');
INSERT INTO "Experience" (id, company, position, "startDate", "endDate", achievements, "profileId") VALUES
  (gen_random_uuid()::text, 'Casterly Rock Capital', 'Engineering Director', '2015-01-01'::timestamp, NULL, ARRAY['Consolidated seven regional systems into one platform', 'Reduced infrastructure spend by 35% over two years'], '00000000-0000-4000-8000-000000000003');
INSERT INTO "Project" (id, name, url, description, "sortOrder", "profileId") VALUES
  (gen_random_uuid()::text, 'wildfire', 'https://github.com/cersei-lannister/wildfire', 'High-throughput batch processing framework', 0, '00000000-0000-4000-8000-000000000003');

-- Daenerys Targaryen
INSERT INTO "Profile" (id, slug, name, description) VALUES
  ('00000000-0000-4000-8000-000000000004', 'daenerys-targaryen', 'Daenerys Targaryen', 'Platform engineer. Kubernetes, autoscaling, multi-region delivery.');
INSERT INTO "ProfileLink" (id, label, url, "sortOrder", "profileId") VALUES
  (gen_random_uuid()::text, 'GitHub', 'https://github.com/daenerys-targaryen', 0, '00000000-0000-4000-8000-000000000004'),
  (gen_random_uuid()::text, 'LinkedIn', 'https://www.linkedin.com/in/daenerys-targaryen', 1, '00000000-0000-4000-8000-000000000004'),
  (gen_random_uuid()::text, 'Twitter', 'https://twitter.com/dtargaryen', 2, '00000000-0000-4000-8000-000000000004');
INSERT INTO "Skill" (id, name, "sortOrder", "profileId") VALUES
  (gen_random_uuid()::text, 'Kubernetes', 0, '00000000-0000-4000-8000-000000000004'),
  (gen_random_uuid()::text, 'Go', 1, '00000000-0000-4000-8000-000000000004'),
  (gen_random_uuid()::text, 'Docker', 2, '00000000-0000-4000-8000-000000000004'),
  (gen_random_uuid()::text, 'Helm', 3, '00000000-0000-4000-8000-000000000004'),
  (gen_random_uuid()::text, 'AWS', 4, '00000000-0000-4000-8000-000000000004'),
  (gen_random_uuid()::text, 'Terraform', 5, '00000000-0000-4000-8000-000000000004');
INSERT INTO "Experience" (id, company, position, "startDate", "endDate", achievements, "profileId") VALUES
  (gen_random_uuid()::text, 'Dragonstone Cloud', 'Platform Lead', '2020-02-01'::timestamp, NULL, ARRAY['Migrated 120 services to Kubernetes with zero downtime', 'Cut deployment lead time from days to under an hour'], '00000000-0000-4000-8000-000000000004'),
  (gen_random_uuid()::text, 'Essos Freight', 'DevOps Engineer', '2018-01-01'::timestamp, '2020-01-31'::timestamp, ARRAY['Introduced infrastructure as code across three regions'], '00000000-0000-4000-8000-000000000004');
INSERT INTO "Project" (id, name, url, description, "sortOrder", "profileId") VALUES
  (gen_random_uuid()::text, 'dracarys', 'https://github.com/daenerys-targaryen/dracarys', 'Predictive autoscaler for bursty workloads', 0, '00000000-0000-4000-8000-000000000004'),
  (gen_random_uuid()::text, 'unsullied', 'https://github.com/daenerys-targaryen/unsullied', 'Fleet orchestration for stateless services', 1, '00000000-0000-4000-8000-000000000004');

-- Jaime Lannister
INSERT INTO "Profile" (id, slug, name, description) VALUES
  ('00000000-0000-4000-8000-000000000005', 'jaime-lannister', 'Jaime Lannister', 'Systems engineer. C++, performance work, rescuing legacy code.');
INSERT INTO "ProfileLink" (id, label, url, "sortOrder", "profileId") VALUES
  (gen_random_uuid()::text, 'GitHub', 'https://github.com/jaime-lannister', 0, '00000000-0000-4000-8000-000000000005');
INSERT INTO "Skill" (id, name, "sortOrder", "profileId") VALUES
  (gen_random_uuid()::text, 'C++', 0, '00000000-0000-4000-8000-000000000005'),
  (gen_random_uuid()::text, 'Rust', 1, '00000000-0000-4000-8000-000000000005'),
  (gen_random_uuid()::text, 'CMake', 2, '00000000-0000-4000-8000-000000000005'),
  (gen_random_uuid()::text, 'Performance Profiling', 3, '00000000-0000-4000-8000-000000000005'),
  (gen_random_uuid()::text, 'Refactoring', 4, '00000000-0000-4000-8000-000000000005');
INSERT INTO "Experience" (id, company, position, "startDate", "endDate", achievements, "profileId") VALUES
  (gen_random_uuid()::text, 'Riverlands Robotics', 'Principal Engineer', '2023-02-01'::timestamp, NULL, ARRAY['Rewrote the motion planner, tripling throughput'], '00000000-0000-4000-8000-000000000005'),
  (gen_random_uuid()::text, 'Kingsguard Systems', 'Senior Engineer', '2014-03-01'::timestamp, '2022-12-31'::timestamp, ARRAY['Maintained a 1.2M line C++ codebase for eight years', 'Led the migration from CMake 2 to modern CMake'], '00000000-0000-4000-8000-000000000005');
INSERT INTO "Project" (id, name, url, description, "sortOrder", "profileId") VALUES
  (gen_random_uuid()::text, 'goldenhand', 'https://github.com/jaime-lannister/goldenhand', 'Toolkit for incremental legacy migrations', 0, '00000000-0000-4000-8000-000000000005');

-- Jon Snow
INSERT INTO "Profile" (id, slug, name, description) VALUES
  ('00000000-0000-4000-8000-000000000006', 'jon-snow', 'Jon Snow', 'Systems engineer on the northern perimeter. Rust and Go.');
INSERT INTO "ProfileLink" (id, label, url, "sortOrder", "profileId") VALUES
  (gen_random_uuid()::text, 'GitHub', 'https://github.com/jon-snow', 0, '00000000-0000-4000-8000-000000000006'),
  (gen_random_uuid()::text, 'LinkedIn', 'https://www.linkedin.com/in/jon-snow', 1, '00000000-0000-4000-8000-000000000006');
INSERT INTO "Skill" (id, name, "sortOrder", "profileId") VALUES
  (gen_random_uuid()::text, 'Rust', 0, '00000000-0000-4000-8000-000000000006'),
  (gen_random_uuid()::text, 'Go', 1, '00000000-0000-4000-8000-000000000006'),
  (gen_random_uuid()::text, 'Linux', 2, '00000000-0000-4000-8000-000000000006'),
  (gen_random_uuid()::text, 'gRPC', 3, '00000000-0000-4000-8000-000000000006'),
  (gen_random_uuid()::text, 'Prometheus', 4, '00000000-0000-4000-8000-000000000006');
INSERT INTO "Experience" (id, company, position, "startDate", "endDate", achievements, "profileId") VALUES
  (gen_random_uuid()::text, 'Night''s Watch', 'Systems Engineer', '2019-03-01'::timestamp, NULL, ARRAY['Built the perimeter monitoring stack from scratch', 'Kept 99.98% uptime through three major incidents'], '00000000-0000-4000-8000-000000000006'),
  (gen_random_uuid()::text, 'Winterfell Systems', 'Backend Developer', '2017-06-01'::timestamp, '2019-02-28'::timestamp, ARRAY['Shipped the first internal service mesh'], '00000000-0000-4000-8000-000000000006');
INSERT INTO "Project" (id, name, url, description, "sortOrder", "profileId") VALUES
  (gen_random_uuid()::text, 'wall-guard', 'https://github.com/jon-snow/wall-guard', 'Perimeter monitoring and alerting daemon', 0, '00000000-0000-4000-8000-000000000006'),
  (gen_random_uuid()::text, 'raven-mq', 'https://github.com/jon-snow/raven-mq', 'Small durable message queue written in Rust', 1, '00000000-0000-4000-8000-000000000006');

-- Petyr Baelish
INSERT INTO "Profile" (id, slug, name, description) VALUES
  ('00000000-0000-4000-8000-000000000007', 'petyr-baelish', 'Petyr Baelish', 'Fintech engineer. Payments, smart contracts, risk modelling.');
INSERT INTO "ProfileLink" (id, label, url, "sortOrder", "profileId") VALUES
  (gen_random_uuid()::text, 'GitHub', 'https://github.com/petyr-baelish', 0, '00000000-0000-4000-8000-000000000007'),
  (gen_random_uuid()::text, 'LinkedIn', 'https://www.linkedin.com/in/petyr-baelish', 1, '00000000-0000-4000-8000-000000000007');
INSERT INTO "Skill" (id, name, "sortOrder", "profileId") VALUES
  (gen_random_uuid()::text, 'Solidity', 0, '00000000-0000-4000-8000-000000000007'),
  (gen_random_uuid()::text, 'TypeScript', 1, '00000000-0000-4000-8000-000000000007'),
  (gen_random_uuid()::text, 'Node.js', 2, '00000000-0000-4000-8000-000000000007'),
  (gen_random_uuid()::text, 'PostgreSQL', 3, '00000000-0000-4000-8000-000000000007'),
  (gen_random_uuid()::text, 'Risk Modelling', 4, '00000000-0000-4000-8000-000000000007');
INSERT INTO "Experience" (id, company, position, "startDate", "endDate", achievements, "profileId") VALUES
  (gen_random_uuid()::text, 'Mockingbird Capital', 'Founder and CTO', '2023-07-01'::timestamp, NULL, ARRAY['Built the payment platform and took it to first revenue in four months'], '00000000-0000-4000-8000-000000000007'),
  (gen_random_uuid()::text, 'Iron Bank of Braavos', 'Fintech Lead', '2017-07-01'::timestamp, '2023-06-30'::timestamp, ARRAY['Designed the settlement engine handling 400M in daily volume', 'Introduced automated risk scoring for counterparties'], '00000000-0000-4000-8000-000000000007');
INSERT INTO "Project" (id, name, url, description, "sortOrder", "profileId") VALUES
  (gen_random_uuid()::text, 'littlefinger-pay', 'https://github.com/petyr-baelish/littlefinger-pay', 'Payment gateway with pluggable providers', 0, '00000000-0000-4000-8000-000000000007'),
  (gen_random_uuid()::text, 'chaos-ladder', 'https://github.com/petyr-baelish/chaos-ladder', 'Monte Carlo risk simulator', 1, '00000000-0000-4000-8000-000000000007');

-- Samwell Tarly
INSERT INTO "Profile" (id, slug, name, description) VALUES
  ('00000000-0000-4000-8000-000000000008', 'samwell-tarly', 'Samwell Tarly', 'Database engineer and technical writer.');
INSERT INTO "ProfileLink" (id, label, url, "sortOrder", "profileId") VALUES
  (gen_random_uuid()::text, 'GitHub', 'https://github.com/samwell-tarly', 0, '00000000-0000-4000-8000-000000000008'),
  (gen_random_uuid()::text, 'LinkedIn', 'https://www.linkedin.com/in/samwell-tarly', 1, '00000000-0000-4000-8000-000000000008');
INSERT INTO "Skill" (id, name, "sortOrder", "profileId") VALUES
  (gen_random_uuid()::text, 'PostgreSQL', 0, '00000000-0000-4000-8000-000000000008'),
  (gen_random_uuid()::text, 'SQL', 1, '00000000-0000-4000-8000-000000000008'),
  (gen_random_uuid()::text, 'Python', 2, '00000000-0000-4000-8000-000000000008'),
  (gen_random_uuid()::text, 'pgBouncer', 3, '00000000-0000-4000-8000-000000000008'),
  (gen_random_uuid()::text, 'Technical Writing', 4, '00000000-0000-4000-8000-000000000008');
INSERT INTO "Experience" (id, company, position, "startDate", "endDate", achievements, "profileId") VALUES
  (gen_random_uuid()::text, 'Citadel Labs', 'Database Engineer', '2019-01-01'::timestamp, NULL, ARRAY['Tuned queries that cut the reporting window from 6 hours to 20 minutes', 'Wrote the internal documentation portal used by every team'], '00000000-0000-4000-8000-000000000008');
INSERT INTO "Project" (id, name, url, description, "sortOrder", "profileId") VALUES
  (gen_random_uuid()::text, 'great-library', 'https://github.com/samwell-tarly/great-library', 'Documentation portal with versioned schemas', 0, '00000000-0000-4000-8000-000000000008'),
  (gen_random_uuid()::text, 'maester', 'https://github.com/samwell-tarly/maester', 'Linter for PostgreSQL migrations', 1, '00000000-0000-4000-8000-000000000008');

-- Sansa Stark
INSERT INTO "Profile" (id, slug, name, description) VALUES
  ('00000000-0000-4000-8000-000000000009', 'sansa-stark', 'Sansa Stark', 'Frontend lead. Design systems and accessibility.');
INSERT INTO "ProfileLink" (id, label, url, "sortOrder", "profileId") VALUES
  (gen_random_uuid()::text, 'GitHub', 'https://github.com/sansa-stark', 0, '00000000-0000-4000-8000-000000000009'),
  (gen_random_uuid()::text, 'LinkedIn', 'https://www.linkedin.com/in/sansa-stark', 1, '00000000-0000-4000-8000-000000000009');
INSERT INTO "Skill" (id, name, "sortOrder", "profileId") VALUES
  (gen_random_uuid()::text, 'TypeScript', 0, '00000000-0000-4000-8000-000000000009'),
  (gen_random_uuid()::text, 'React', 1, '00000000-0000-4000-8000-000000000009'),
  (gen_random_uuid()::text, 'Next.js', 2, '00000000-0000-4000-8000-000000000009'),
  (gen_random_uuid()::text, 'Design Systems', 3, '00000000-0000-4000-8000-000000000009'),
  (gen_random_uuid()::text, 'Accessibility', 4, '00000000-0000-4000-8000-000000000009');
INSERT INTO "Experience" (id, company, position, "startDate", "endDate", achievements, "profileId") VALUES
  (gen_random_uuid()::text, 'Winterfell Systems', 'Frontend Lead', '2021-01-01'::timestamp, NULL, ARRAY['Built a design system adopted by six product teams', 'Brought the main product to WCAG 2.1 AA compliance'], '00000000-0000-4000-8000-000000000009'),
  (gen_random_uuid()::text, 'King''s Landing Digital', 'UI Engineer', '2018-05-01'::timestamp, '2020-12-31'::timestamp, ARRAY['Rebuilt the checkout flow, lifting conversion by 12%'], '00000000-0000-4000-8000-000000000009');
INSERT INTO "Project" (id, name, url, description, "sortOrder", "profileId") VALUES
  (gen_random_uuid()::text, 'northern-ui', 'https://github.com/sansa-stark/northern-ui', 'Accessible React component library', 0, '00000000-0000-4000-8000-000000000009');

-- Tyrion Lannister
INSERT INTO "Profile" (id, slug, name, description) VALUES
  ('00000000-0000-4000-8000-000000000010', 'tyrion-lannister', 'Tyrion Lannister', 'Principal architect. Distributed systems and the politics around them.');
INSERT INTO "ProfileLink" (id, label, url, "sortOrder", "profileId") VALUES
  (gen_random_uuid()::text, 'GitHub', 'https://github.com/tyrion-lannister', 0, '00000000-0000-4000-8000-000000000010'),
  (gen_random_uuid()::text, 'LinkedIn', 'https://www.linkedin.com/in/tyrion-lannister', 1, '00000000-0000-4000-8000-000000000010'),
  (gen_random_uuid()::text, 'Twitter', 'https://twitter.com/tlannister', 2, '00000000-0000-4000-8000-000000000010');
INSERT INTO "Skill" (id, name, "sortOrder", "profileId") VALUES
  (gen_random_uuid()::text, 'Python', 0, '00000000-0000-4000-8000-000000000010'),
  (gen_random_uuid()::text, 'System Design', 1, '00000000-0000-4000-8000-000000000010'),
  (gen_random_uuid()::text, 'PostgreSQL', 2, '00000000-0000-4000-8000-000000000010'),
  (gen_random_uuid()::text, 'Kafka', 3, '00000000-0000-4000-8000-000000000010'),
  (gen_random_uuid()::text, 'Terraform', 4, '00000000-0000-4000-8000-000000000010'),
  (gen_random_uuid()::text, 'gRPC', 5, '00000000-0000-4000-8000-000000000010');
INSERT INTO "Experience" (id, company, position, "startDate", "endDate", achievements, "profileId") VALUES
  (gen_random_uuid()::text, 'King''s Landing Digital', 'Head of Engineering', '2021-05-01'::timestamp, NULL, ARRAY['Grew the platform team from 4 to 30 engineers', 'Introduced an RFC process that cut rework by a third'], '00000000-0000-4000-8000-000000000010'),
  (gen_random_uuid()::text, 'Casterly Rock Capital', 'Principal Architect', '2016-01-01'::timestamp, '2021-04-30'::timestamp, ARRAY['Designed the ledger that survived three acquisitions', 'Mentored eleven engineers into senior roles'], '00000000-0000-4000-8000-000000000010');
INSERT INTO "Project" (id, name, url, description, "sortOrder", "profileId") VALUES
  (gen_random_uuid()::text, 'small-council', 'https://github.com/tyrion-lannister/small-council', 'Lightweight RFC and decision log tool', 0, '00000000-0000-4000-8000-000000000010'),
  (gen_random_uuid()::text, 'wine-cellar', 'https://github.com/tyrion-lannister/wine-cellar', 'Versioned configuration store', 1, '00000000-0000-4000-8000-000000000010');
