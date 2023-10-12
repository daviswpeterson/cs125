# generate_data.py

import csv
import random

with open('candidates.csv', 'w', newline='') as file:
    writer = csv.writer(file)
    writer.writerow(["degree_level", "age", "years_experience", "previous_occupation", "race", "religious_affiliation", "phone_number", "email", "last_degree_issued", "ssn", "gender", "background_check_data"])
    for _ in range(10000):  # 10,000 records
        writer.writerow([
            random.choice(["PhD", "Masters", "Bachelors"]),
            random.randint(20, 65),
            random.randint(0, 40),
            random.choice(["Research Scientist", "Software Engineer", "Junior Developer", "Data Analyst", "Project Manager"]),
            random.choice(["White", "Black", "Asian", "Hispanic", "Other"]),
            random.choice(["Christian", "Buddhist", "Muslim", "Hindu", "None"]),
            random.randint(1000000000, 9999999999),
            f"user{random.randint(1000, 9999)}@example.com",
            f"{random.choice(['PhD', 'Masters', 'Bachelors'])} in CS",
            random.randint(100000000, 999999999),
            random.choice(["Male", "Female"]),
            "Clear"
        ])

with open('jobs.csv', 'w', newline='') as file:
    writer = csv.writer(file)
    writer.writerow(["job_id", "position_title", "department", "tenure_track", "full_time", "part_time", "adjunct", "hourly", "per_hour_wage", "salary", "listing_date", "end_listing_date", "position_title"])
    for i in range(10000):
        writer.writerow([
            i,
            random.choice(["Professor", "Associate Professor", "Assistant Professor"]),
            random.choice(["Computer Science", "Physics", "Mathematics"]),
            random.choice([True, False]),
            random.choice([True, False]),
            random.choice([True, False]),
            random.choice([True, False]),
            random.choice([True, False]),
            random.uniform(15.0, 100.0),
            random.randint(50000, 150000),
            f"{random.randint(2000,2023)}-{random.randint(1,12):02d}-{random.randint(1,28):02d} {random.randint(0,23):02d}:{random.randint(0,59):02d}:{random.randint(0,59):02d}",
            f"{random.randint(2000,2023)}-{random.randint(1,12):02d}-{random.randint(1,28):02d} {random.randint(0,23):02d}:{random.randint(0,59):02d}:{random.randint(0,59):02d}",
            random.choice(["Professor", "Associate Professor", "Assistant Professor"])
        ])

with open('applications.csv', 'w', newline='') as file:
    writer = csv.writer(file)
    writer.writerow(["application_id", "job", "position", "tenure_track", "date", "candidate"])
    for i in range(10000):
        writer.writerow([
            i,
            random.choice(["Professor", "Associate Professor", "Assistant Professor"]),
            random.choice(["Computer Science", "Physics", "Mathematics"]),
            random.choice([True, False]),
            f"{random.randint(2000,2023)}-{random.randint(1,12):02d}-{random.randint(1,28):02d} {random.randint(0,23):02d}:{random.randint(0,59):02d}:{random.randint(0,59):02d}",
            f"user{random.randint(1000, 9999)}@example.com"
        ])

with open('letters.csv', 'w', newline='') as file:
    writer = csv.writer(file)
    writer.writerow(["letter_id", "offer_or_rejection", "job", "start_date", "next_steps", "rejection_date", "denial_reason"])
    for i in range(10000):
        writer.writerow([
            i,
            random.choice(["Offer", "Rejection"]),
            random.choice(["Professor", "Associate Professor", "Assistant Professor"]),
            f"{random.randint(2000,2023)}-{random.randint(1,12):02d}-{random.randint(1,28):02d} {random.randint(0,23):02d}:{random.randint(0,59):02d}:{random.randint(0,59):02d}",
            "Awaiting Response",
            f"{random.randint(2000,2023)}-{random.randint(1,12):02d}-{random.randint(1,28):02d} {random.randint(0,23):02d}:{random.randint(0,59):02d}:{random.randint(0,59):02d}",
            random.choice(["Not Qualified", "Position Filled", "Incomplete Application"])
        ])

with open('departments.csv', 'w', newline='') as file:
    writer = csv.writer(file)
    writer.writerow(["name", "abbreviation", "max_faculty_capacity", "current_number_of_faculty", "academic_division"])
    for _ in range(10000):
        writer.writerow([
            random.choice(["Computer Science", "Physics", "Mathematics"]),
            random.choice(["CS", "PHYS", "MATH"]),
            random.randint(20, 100),
            random.randint(5, 20),
            random.choice(["Science", "Engineering", "Arts"])
        ])
