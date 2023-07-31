# Designing-Database-Solutions

---

# IT222 Database Solutions Group Project

This project involves creating SQL views and using Docker to set up a PostgreSQL database and a PgAdmin4 service. For this example, a college course and student data retreaval system is used. 

## Prerequisites

Before you begin, ensure you have met the following requirements:

- You have installed Docker and Docker Compose.
- You have a basic understanding of SQL and Docker.

## Setting Up the Project

Follow these steps to set up the project:

1. Clone the repository to your local machine:

```bash
git clone https://github.com/eugenefauntleroy/IT222-database_solutions_group_project.git
```

2. Navigate to the project directory:

```bash
cd IT222-database_solutions_group_project
```

3. Start the Docker services:

```bash
docker-compose up -d
```

This command will start a PostgreSQL database and a PgAdmin4 service. The PostgreSQL database is exposed on port 5432, and the PgAdmin4 service is exposed on port 5050.

## Accessing the Database

You can access the PostgreSQL database using the following credentials:

- Database: public
- User: postgres
- Password: root

You can access the PgAdmin4 service at `http://localhost:5050` using the following credentials:

- Email: admin@admin.com
- Password: root

## SQL Views

The project includes the following SQL views:

1. `studentscheduledclassesview`: Provides a list of scheduled classes for students.
2. `available_course_sections_view`: Provides a list of available course sections.
3. `student_transcript_view`: Provides a transcript for each student.
4. `studentsquartertuitionview`: Provides a list of tuition fees for each student per quarter.

You can find the SQL code for these views in the `Individual _Create_SQL_views` directory.

## Contributing to the Project

To contribute to this project, follow these steps:

1. Fork the repository.
2. Create a new branch: `git checkout -b <branch_name>`.
3. Make your changes and commit them: `git commit -m '<commit_message>'`
4. Push to the original branch: `git push origin <project_name>/<location>`
5. Create the pull request.

## Contact

If you want to contact the project owner, you can reach Eugene Fauntleroy at `iwata.mich@gmail.com`.

---
