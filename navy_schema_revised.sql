DROP SCHEMA public cascade;
CREATE SCHEMA public;

CREATE TABLE fleets (
  id BIGSERIAL PRIMARY KEY);

CREATE TABLE sailors (
  sailor_name TEXT,
  dob TIMESTAMP with time zone,
  id BIGSERIAL PRIMARY KEY
  );

CREATE TABLE ranks (
  id BIGSERIAL PRIMARY KEY,
  title TEXT
  );

CREATE TABLE assignments (
  id BIGSERIAL PRIMARY KEY,
  name TEXT,
  start_date TIMESTAMP with time zone,
  end_date TIMESTAMP with time zone,
  rank_id BIGSERIAL REFERENCES ranks(id),
  sailor_id BIGSERIAL REFERENCES sailors(id)
  );

CREATE TABLE ships (
  id BIGSERIAL PRIMARY KEY,
  assignment_id BIGSERIAL REFERENCES assignments(id),
  ship_name TEXT,
  build_date TEXT,
  fleet_id BIGSERIAL REFERENCES fleets(id)
);

