# Online Examination System

## Overview
The Online Examination System is a web-based application developed using ASP.NET for conducting exams online. It provides a platform for both instructors and students to efficiently manage and take exams in a secure environment. This project aims to streamline the examination process, making it convenient, reliable and scalable.

## Features
- **User Authentication:** Secure user authentication system for both instructors and students.
- **Exam Creation:** Instructors can create exams, set the duration, and define the questions with options.
- **Exam Management:** Instructors can manage exams, edit questions, delete exams, and view exam results.
- **Exam Taking:** Students can take exams online within the defined duration.
- **Real-time Results:** Instantaneous display of results upon exam submission.
- **Question Types:** Support for various question types including multiple choice, true/false, short answer, etc.
- **Security:** Measures to prevent cheating such as randomizing questions, limiting browser controls, and monitoring activity.
- **Analytics:** Statistical analysis of exam results to provide insights into student performance.

## Installation
1. **Prerequisites:**
    - Install Visual Studio IDE.
    - Install SQL Server Management Studio (SSMS).
    - Ensure .NET Framework is installed on your system.

2. **Clone Repository:**
    ```bash
    git clone https://github.com/yourusername/OnlineExaminationSystem.git
    ```

3. **Database Setup:**
    - Open SSMS and create a new database named `OnlineExamsDB`.
    - Run the SQL scripts provided in the `DatabaseScripts` folder to create tables and populate sample data.

4. **Configuration:**
    - Open the project in Visual Studio.
    - Modify the connection string in `Web.config` file to match your SQL Server credentials.

5. **Build and Run:**
    - Build the project in Visual Studio.
    - Press F5 to run the application.

## Usage
1. **Instructor:**
    - Login with your credentials.
    - Create a new exam by specifying details and adding questions.
    - Manage existing exams, view results, and make necessary modifications.

2. **Student:**
    - Login with your credentials.
    - Access available exams and start taking them within the provided time frame.
    - Submit answers and view results instantly.

## Contributing
Contributions are welcome! If you'd like to contribute to this project, please follow these steps:
1. Fork the repository.
2. Create a new branch (`git checkout -b feature/new-feature`).
3. Make your changes.
4. Commit your changes (`git commit -am 'Add new feature'`).
5. Push to the branch (`git push origin feature/new-feature`).
6. Create a new Pull Request.

## License
This project is licensed under the [MIT License](LICENSE)
