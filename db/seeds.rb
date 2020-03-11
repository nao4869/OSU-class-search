# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

##### Users #####
User.create!(
    username: "Admin User",
    email: "admin@gmail.com",
    password: "aaaaaa",
    admin: true
)
puts "1 admin user created"

User.create!(
    username: "Regular User",
    email: "test@gmail.com",
    password: "aaaaaa",
    admin: false
)
puts "1 regular user created"

User.create!(
    username: "Regular User2",
    email: "test2@gmail.com",
    password: "aaaaaa",
    admin: false
)
puts "1 regular user created"
##### Users #####

##### Institutions ######
@inst = Institution.new(
    name: "Oregon State University",
    state: "OR",
    country: "USA",
    city: "Corvallis"
)
@inst.logo.attach(io: File.open('app/assets/images/osu-logo.jpg'), filename: 'osu-logo.jpg', content_type: 'image/jpg')
@inst.id = 1
@inst.save!
puts "1 institution created"
##### Institutions #####

##### Majors #####
@maj = Major.create!(
    majorname: "Computer Science",
    description: "Computer science is the study of algorithms and problem solving",
    institution_id: 1
)
@maj.id = 1
puts "1 major created"
##### Majors #####

##### Courses #####
Course.create!(
    coursename: "CS160 - Computer Science Orientation",
    course_content: "Computer Science Orientation",
    prerequisite: "No",
    proctoredexams: "No",
    groupwork: "No",
    textbook: "No",
    institution_id: 1,
    major_id: 1
)

Course.create!(
    coursename: "CS161 - Intro to Computer Science I",
    course_content: "Overview of fundamental concepts of computer science. Introduction to problem solving, software engineering, and object-oriented programming. Includes algorithm design and program development. Students write small programs in C++.",
    prerequisite: "No",
    proctoredexams: "Yes",
    groupwork: "No",
    textbook: "Starting Out with C++: Early Objects (9th edition)",
    institution_id: 1,
    major_id: 1
)

Course.create!(
    coursename: "CS162 - Intro to Computer Science II",
    course_content: "Introduces data structures, algorithms, and requires students to produce weekly labs and larger bi-weekly projects in C++.",
    prerequisite: "CS161",
    proctoredexams: "No",
    groupwork: "One group project halfway through the quarter where a team of about 5 students implements a given program in C++",
    textbook: "Starting Out with C++: Early Objects (9th edition)",
    institution_id: 1,
    major_id: 1
)

Course.create!(
    coursename: "CS165 - Intro to Computer Science(Accelerated)",
    course_content: "Condenses CS161 and CS162 into one fast-paced course.",
    prerequisite: "No",
    proctoredexams: "Yes",
    groupwork: "Two small group projects in which you compare your work on a previous assignment and decide whose was best and explain why.",
    textbook: "Starting Out with C++: Early Objects (9th edition)",
    institution_id: 1,
    major_id: 1
)

Course.create!(
    coursename: "CS225 - Discrete Structures in Computer Science",
    course_content: "An introduction to the discrete mathematics of computer science, including logic, set and set operations, methods of proof, recursive definitions, combinatorics, and graph theory.",
    prerequisite: "No",
    proctoredexams: "Yes",
    groupwork: "No",
    textbook: "Discrete Mathematics with Applications (4th edition)",
    institution_id: 1,
    major_id: 1
)

Course.create!(
    coursename: "CS261 - Data Structures",
    course_content: "Teaches abstract data types, dynamic arrays, linked lists, trees and graphs, binary search trees, hash tables, storage management, complexity analysis of data structures. Classwork is done in C (not C++).",
    prerequisite: "CS162 or CS165 and CS225",
    proctoredexams: "Yes",
    groupwork: "Weekly worksheets to complete and discuss in a small group. Must submit typed 'meeting minutes' to Piazza each week.",
    textbook: "C Programming Language (2nd edition)",
    institution_id: 1,
    major_id: 1
)

Course.create!(
    coursename: "CS271 - Computer Architecture & Assembly Language",
    course_content: "Introduction to functional organization and operation of digital computers. Coverage of assembly language; addressing, stacks, argument passing, arithmetic operations, decisions, macros, modularization, linkers and debuggers.",
    prerequisite: "CS161 or CS165",
    proctoredexams: "Yes",
    groupwork: "No",
    textbook: "Assembly Language for x86 Processors (7th edition)",
    institution_id: 1,
    major_id: 1
)

Course.create!(
    coursename: "CS290 - Web Development",
    course_content: "How to design and implement a multi-tier application using web technologies: creation of extensive custom client- and server-side code, consistent with achieving a high-quality software architecture.",
    prerequisite: "CS162 or CS165",
    proctoredexams: "Yes",
    groupwork: "No",
    textbook: "Eloquent JavaScript, 2nd Ed.: A Modern Introduction to Programming (2nd edition)",
    institution_id: 1,
    major_id: 1
)

Course.create!(
    coursename: "CS325 - Analysis of Algorithms",
    course_content: "Recurrence relations, combinatorics, recursive algorithms, proofs of correctness.",
    prerequisite: "CS261 or CS225",
    proctoredexams: "Yes",
    groupwork: "Graded weekly Canvas discussions in a small group and a 3-person group project the last two weeks of the quarter. Students can choose their group mates for the final project or elect to be placed in a random group.",
    textbook: "Introduction to Algorithms, 3rd Edition (MIT Press)",
    institution_id: 1,
    major_id: 1
)

Course.create!(
    coursename: "CS340 - Introduction to Databases",
    course_content: "Design and implementation of relational databases, including data modeling with ER or UML, diagrams, relational schema, SQL queries, relational algebra, user interfaces, and administration.",
    prerequisite: "CS290",
    proctoredexams: "Yes",
    groupwork: "Final project is fairly involved and allows you to choose a partner (optional)",
    textbook: "Course Materials",
    institution_id: 1,
    major_id: 1
)

Course.create!(
    coursename: "CS344 - Operating Systems",
    course_content: "Introduction to operating systems using UNIX as the case study. System calls and utilities, fundamentals of processes and interprocess communication.",
    prerequisite: "CS261 or CS271",
    proctoredexams: "No",
    groupwork: "No",
    textbook: "Course Materials",
    institution_id: 1,
    major_id: 1
)

Course.create!(
    coursename: "CS352 - Introduction to Usability Engineering",
    course_content: "Basic principles of usability engineering methods for the design and evaluation of software systems. Includes the study of human-machine interactions, user interface characteristics and design strategies, software evaluation methods, and related guidelines and standards.",
    prerequisite: "CS161 or CS165",
    proctoredexams: "No midterm, proctored final",
    groupwork: "The whole class is a group project where you work in groups of 4 to complete weekly writing and UI mockup assignments.",
    textbook: "Interaction Design: Beyond Human-Computer Interaction (4th edition)",
    institution_id: 1,
    major_id: 1
)

Course.create!(
    coursename: "CS361 - Software Engineering I",
    course_content: "Introduction to the 'front end' of the software engineering lifecycle; requirements analysis and specification; design techniques; project management.",
    prerequisite: "CS261",
    proctoredexams: "Yes",
    groupwork: "Almost exclusively group work. Work in a team of 5 to prepare weekly written reports about the software development lifecycle.",
    textbook: "Course materials",
    institution_id: 1,
    major_id: 1
)

Course.create!(
    coursename: "CS362 - Software Engineering II",
    course_content: "Introduction to the 'back end' of the software engineering lifecycle implementation; verification and validation; debugging; maintenance.",
    prerequisite: "CS261",
    proctoredexams: "No",
    groupwork: "Two group assignments and you can form your own groups.",
    textbook: "Course materials",
    institution_id: 1,
    major_id: 1
)

Course.create!(
    coursename: "CS372 - Intro to Computer Networks",
    course_content: "Computer network principles, fundamental networking concepts, packet-switching and circuit switching, TCP/IP protocol layers, reliable data transfer, congestion control, flow control, packet forwarding and routing, MAC addressing, multiple access techniques.",
    prerequisite: "CS261 and CS271",
    proctoredexams: "No",
    groupwork: "No",
    textbook: "Computer Networking: A Top-Down Approach (7th edition)",
    institution_id: 1,
    major_id: 1
)
Course.create!(
    coursename: "CS373 - Defense Against the Dark Arts",
    course_content: "Introduction to the current state of the art in anti-malware, computer forensics, and networking, messaging, and web security. Broad introduction to the field of computer security. Only available in winter quarters.",
    prerequisite: "CS344 and CS340 and CS372",
    proctoredexams: "No",
    groupwork: "No",
    textbook: "Course materials",
    institution_id: 1,
    major_id: 1
)
Course.create!(
    coursename: "CS464 - Open Source Software",
    course_content: "Provides a theoretical foundation of the history, key concepts, technologies, and practices associated with modern Free and Open Source Software (FOSS) projects, and gives students an opportunity to explore and make contributions to FOSS projects with some mentoring and guidance.",
    prerequisite: "CS261 or CS361",
    proctoredexams: "Yes",
    groupwork: "Mandatory discussions and a few peer-reviews where you critique other students' posts",
    textbook: "Course materials",
    institution_id: 1,
    major_id: 1
)
Course.create!(
    coursename: "CS467 - Online Capstone Project",
    course_content: "Taken the last quarter before graduation. This course offers real-world team-based experience with the software engineering design and delivery cycle, including requirements analysis and specification, design techniques, and requirements and final project written documentation. In a group of 3, students spend the quarter creating a single project. (Formerly CS419)",
    prerequisite: "CS344, CS361, and CS362",
    proctoredexams: "No",
    groupwork: "This entire course is a group project",
    textbook: "Course materials",
    institution_id: 1,
    major_id: 1
)
Course.create!(
    coursename: "CS475 - Intro to Parallel Programming",
    course_content: "Theoretical and practical survey of parallel programming, including a discussion of parallel architectures, parallel programming paradigms, and parallel algorithms. Programming one or more parallel computers in a higher-level parallel language.",
    prerequisite: "CS261",
    proctoredexams: "Yes",
    groupwork: "No",
    textbook: "Course materials",
    institution_id: 1,
    major_id: 1
)
Course.create!(
    coursename: "CS493 - Cloud Application Development",
    course_content: "Covers developing RESTful cloud services, an approach based on representational state transfer technology, an architectural style and approach to communications used in modern cloud services development. ",
    prerequisite: "CS290 and CS340 and CS372",
    proctoredexams: "Yes",
    groupwork: "No",
    textbook: "Course materials",
    institution_id: 1,
    major_id: 1
)
Course.create!(
    coursename: "CS496 - Mobile and Cloud Software Development",
    course_content: "Introduction to the concepts and techniques for developing mobile and cloud applications.",
    prerequisite: "CS344",
    proctoredexams: "No",
    groupwork: "No",
    textbook: "Course materials",
    institution_id: 1,
    major_id: 1
)
puts "All courses created"
##### Courses #####

##### Reviews CS160 #####
Review.create!(
    reviews_content: "Do Repl.it code problems; study the model solutions carefully; try reading all the optional chapters; pay attention to what is covered on Canvas; do not use concepts/tools not covered yet; find a way to organize the material to keep track of what has been covered; revisit each week at least 2-3 times as you progress through the course; start coding week 9 and week 10 projects early; participate in online discussions — ask & answer; explain concepts to your classmates — helps you solidify; use pythontutor; get in the habit of drawing diagrams and variable states; get in the habit of tracing the code; the learning materials are thoroughly thought-through and have solid underlying logic.",
    course_id: 1,
    difficulty: 2,
    benefit: "1",
    time_spent: "4-6",
    major_id: 1,
    institution_id: 1
)

Review.create!(
    reviews_content: "Do your best to stay on top of things and get help from TAs/Slack/Piazza. There's no book and no proctored exams in this python redesign, so the external annoyances are minimal. I took it knowing very little python or programming, and found it to be really quite easy. I found the optional text (which can be downloaded as free PDF or purchased inexpensively as a paperback) to be a wonderful extension and secondary resource. Weekly assignments are short (too short, I would say), and quizzes were open-internet and allowed for a retake. I took the quizzes first and used them to help guide what I looked at as I reviewed the weekly lessons on Canvas. Instructor clearly wants everyone to have reasonable shot at 100% on quizzes, based on this setup. Quiz items are randomized from a larger problem set, and the quiz answer options are randomized as well, so you do have to focus on actually learning the ideas. The instructor introduces git on week one, and assignments are submitted through GitHub. However, the true power of git becomes apparent during weeks 8, 9, and 10, when the projects become long enough to warrant branching and merging. Try to remember that git is your friend when you get there. You can do some early studying via Udemy or other Python resources if you like, but it is not at all required. People who come in knowing Python are actually at a sort of disadvantage: we are forbidden from using non-covered topics and tools, and some Piazza/Slack convos were complaints about Why can't I use function.method()?? Do your best to stick to the script, because we are meant to learn the actual logical execution.",
    course_id: 1,
    difficulty: 3,
    benefit: "2",
    time_spent: "4-6",
    major_id: 1,
    institution_id: 1
)

Review.create!(
    reviews_content: "No textbook required, but free online PDF helps a lot when understanding material. Don't get behind on early material as is all reused on assignments... especially classes.",
    course_id: 1,
    difficulty: 3,
    benefit: "3",
    time_spent: "7-9",
    major_id: 1,
    institution_id: 1
)

##### Reviews CS161 #####
Review.create!(
    reviews_content: "Do Repl.it code problems; study the model solutions carefully; try reading all the optional chapters; pay attention to what is covered on Canvas; do not use concepts/tools not covered yet; find a way to organize the material to keep track of what has been covered; revisit each week at least 2-3 times as you progress through the course; start coding week 9 and week 10 projects early; participate in online discussions — ask & answer; explain concepts to your classmates — helps you solidify; use pythontutor; get in the habit of drawing diagrams and variable states; get in the habit of tracing the code; the learning materials are thoroughly thought-through and have solid underlying logic.",
    course_id: 2,
    difficulty: 1,
    benefit: "4",
    time_spent: "1-3",
    major_id: 1,
    institution_id: 1
)

Review.create!(
    reviews_content: "Do your best to stay on top of things and get help from TAs/Slack/Piazza. There's no book and no proctored exams in this python redesign, so the external annoyances are minimal. I took it knowing very little python or programming, and found it to be really quite easy. I found the optional text (which can be downloaded as free PDF or purchased inexpensively as a paperback) to be a wonderful extension and secondary resource. Weekly assignments are short (too short, I would say), and quizzes were open-internet and allowed for a retake. I took the quizzes first and used them to help guide what I looked at as I reviewed the weekly lessons on Canvas. Instructor clearly wants everyone to have reasonable shot at 100% on quizzes, based on this setup. Quiz items are randomized from a larger problem set, and the quiz answer options are randomized as well, so you do have to focus on actually learning the ideas. The instructor introduces git on week one, and assignments are submitted through GitHub. However, the true power of git becomes apparent during weeks 8, 9, and 10, when the projects become long enough to warrant branching and merging. Try to remember that git is your friend when you get there. You can do some early studying via Udemy or other Python resources if you like, but it is not at all required. People who come in knowing Python are actually at a sort of disadvantage: we are forbidden from using non-covered topics and tools, and some Piazza/Slack convos were complaints about Why can't I use function.method()?? Do your best to stick to the script, because we are meant to learn the actual logical execution.",
    course_id: 2,
    difficulty: 1,
    benefit: "4",
    time_spent: "4-6",
    major_id: 1,
    institution_id: 1
)

Review.create!(
    reviews_content: "No textbook required, but free online PDF helps a lot when understanding material. Don't get behind on early material as is all reused on assignments... especially classes.",
    course_id: 2,
    difficulty: 2,
    benefit: "4",
    time_spent: "4-6",
    major_id: 1,
    institution_id: 1
)

Review.create!(
    reviews_content: "Take a Udemy/Coursera class on Python beforehand. Doing so will morph this class into a cakewalk. I watched people with no prior programming experience wade into this class and have a ton of difficulty. I have no prior professional programming experience but took the Python Masterclass on Udemy over the summer before starting this class and the hardest I had to work was probably on the two projects at the end, both of which took me about 4-8 hours total time each. The time was simply due to how large the projects are compared to previous assignments and subsequent debugging and documenting you will have to do.",
    course_id: 2,
    difficulty: 2,
    benefit: "5",
    time_spent: "4-6",
    major_id: 1,
    institution_id: 1
)

Review.create!(
    reviews_content: "Take an intro to python programing course and you will be fine.",
    course_id: 2,
    difficulty: 2,
    benefit: "5",
    time_spent: "4-6",
    major_id: 1,
    institution_id: 1
)

Review.create!(
    reviews_content: "Take an intro to CS course in Python on Coursera or Udemy before this class. No textbook is needed, but I would google what the best beginner Python books are and buy one of those for extra practice/understanding. Stack Overflow has some pretty bad/inefficient code that doesn’t always work. Rely on academic literature online or your personal Python beginner’s book.",
    course_id: 2,
    difficulty: 3,
    benefit: "5",
    time_spent: "7-9",
    major_id: 1,
    institution_id: 1
)

Review.create!(
    reviews_content: "Start projects early. Stay on top of concepts. ",
    course_id: 2,
    difficulty: 3,
    benefit: "3",
    time_spent: "7-9",
    major_id: 1,
    institution_id: 1
)

Review.create!(
    reviews_content: "Practice as much hand-tracing of code as you can, especially for the midterm and final exam. The book is adequate at explaining concepts, but the video lectures were not very helpful. Do the end of chapter reviews, and code and compile examples from the book if you're having a tough time with a topic. Reach out for help when you feel you need it, as once you fall behind it's tough to catch back up. Google and YouTube will become your close friends as they have tons of available helpful information. The accelerated Summer schedule made this class feel a lot tougher than the original reviews I'd read here. ",
    course_id: 2,
    difficulty: 3,
    benefit: "3",
    time_spent: "10-12",
    major_id: 1,
    institution_id: 1
)

Review.create!(
    reviews_content: "Do practice coding problems",
    course_id: 2,
    difficulty: 4,
    benefit: "3",
    time_spent: "10-12",
    major_id: 1,
    institution_id: 1
)

Review.create!(
    reviews_content: "Start assignments early, watch Cherno, participate in slack and ask TA questions. ",
    course_id: 2,
    difficulty: 1,
    benefit: "3",
    time_spent: "13-15",
    major_id: 1,
    institution_id: 1
)
puts "Reviews created for CS161"

##### Reviews CS162 #####
Review.create!(
    reviews_content: "Do Repl.it code problems; study the model solutions carefully; try reading all the optional chapters; pay attention to what is covered on Canvas; do not use concepts/tools not covered yet; find a way to organize the material to keep track of what has been covered; revisit each week at least 2-3 times as you progress through the course; start coding week 9 and week 10 projects early; participate in online discussions — ask & answer; explain concepts to your classmates — helps you solidify; use pythontutor; get in the habit of drawing diagrams and variable states; get in the habit of tracing the code; the learning materials are thoroughly thought-through and have solid underlying logic.",
    course_id: 3,
    difficulty: 2,
    benefit: "3",
    time_spent: "4-6",
    major_id: 1,
    institution_id: 1
)

Review.create!(
    reviews_content: "Do your best to stay on top of things and get help from TAs/Slack/Piazza. There's no book and no proctored exams in this python redesign, so the external annoyances are minimal. I took it knowing very little python or programming, and found it to be really quite easy. I found the optional text (which can be downloaded as free PDF or purchased inexpensively as a paperback) to be a wonderful extension and secondary resource. Weekly assignments are short (too short, I would say), and quizzes were open-internet and allowed for a retake. I took the quizzes first and used them to help guide what I looked at as I reviewed the weekly lessons on Canvas. Instructor clearly wants everyone to have reasonable shot at 100% on quizzes, based on this setup. Quiz items are randomized from a larger problem set, and the quiz answer options are randomized as well, so you do have to focus on actually learning the ideas. The instructor introduces git on week one, and assignments are submitted through GitHub. However, the true power of git becomes apparent during weeks 8, 9, and 10, when the projects become long enough to warrant branching and merging. Try to remember that git is your friend when you get there. You can do some early studying via Udemy or other Python resources if you like, but it is not at all required. People who come in knowing Python are actually at a sort of disadvantage: we are forbidden from using non-covered topics and tools, and some Piazza/Slack convos were complaints about Why can't I use function.method()?? Do your best to stick to the script, because we are meant to learn the actual logical execution.",
    course_id: 3,
    difficulty: 3,
    benefit: "3",
    time_spent: "4-6",
    major_id: 1,
    institution_id: 1
)

Review.create!(
    reviews_content: "No textbook required, but free online PDF helps a lot when understanding material. Don't get behind on early material as is all reused on assignments... especially classes.",
    course_id: 3,
    difficulty: 3,
    benefit: "3",
    time_spent: "7-9",
    major_id: 1,
    institution_id: 1
)

Review.create!(
    reviews_content: "Take a Udemy/Coursera class on Python beforehand. Doing so will morph this class into a cakewalk. I watched people with no prior programming experience wade into this class and have a ton of difficulty. I have no prior professional programming experience but took the Python Masterclass on Udemy over the summer before starting this class and the hardest I had to work was probably on the two projects at the end, both of which took me about 4-8 hours total time each. The time was simply due to how large the projects are compared to previous assignments and subsequent debugging and documenting you will have to do.",
    course_id: 3,
    difficulty: 4,
    benefit: "3",
    time_spent: "10-12",
    major_id: 1,
    institution_id: 1
)

Review.create!(
    reviews_content: "Take an intro to python programing course and you will be fine.",
    course_id: 3,
    difficulty: 4,
    benefit: "4",
    time_spent: "13-15",
    major_id: 1,
    institution_id: 1
)

Review.create!(
    reviews_content: "Take an intro to CS course in Python on Coursera or Udemy before this class. No textbook is needed, but I would google what the best beginner Python books are and buy one of those for extra practice/understanding. Stack Overflow has some pretty bad/inefficient code that doesn’t always work. Rely on academic literature online or your personal Python beginner’s book.",
    course_id: 3,
    difficulty: 4,
    benefit: "4",
    time_spent: "13-15",
    major_id: 1,
    institution_id: 1
)

Review.create!(
    reviews_content: "Start projects early. Stay on top of concepts. ",
    course_id: 3,
    difficulty: 4,
    benefit: "4",
    time_spent: "13-15",
    major_id: 1,
    institution_id: 1
)

Review.create!(
    reviews_content: "Practice as much hand-tracing of code as you can, especially for the midterm and final exam. The book is adequate at explaining concepts, but the video lectures were not very helpful. Do the end of chapter reviews, and code and compile examples from the book if you're having a tough time with a topic. Reach out for help when you feel you need it, as once you fall behind it's tough to catch back up. Google and YouTube will become your close friends as they have tons of available helpful information. The accelerated Summer schedule made this class feel a lot tougher than the original reviews I'd read here. ",
    course_id: 3,
    difficulty: 5,
    benefit: "5",
    time_spent: "13-15",
    major_id: 1,
    institution_id: 1
)

Review.create!(
    reviews_content: "Do practice coding problems",
    course_id: 3,
    difficulty: 5,
    benefit: "5",
    time_spent: "13-15",
    major_id: 1,
    institution_id: 1
)

Review.create!(
    reviews_content: "Start assignments early, watch Cherno, participate in slack and ask TA questions. ",
    course_id: 2,
    difficulty: 5,
    benefit: "5",
    time_spent: "13-15",
    major_id: 1,
    institution_id: 1
)
puts "Reviews created for CS162"

##### Reviews CS165 #####
Review.create!(
    reviews_content: "Study hard, keep good notes, get into good coding habits, and make sure you understand all of the assignment requirements!",
    course_id: 4,
    difficulty: 2,
    benefit: "3",
    time_spent: "4-6",
    major_id: 1,
    institution_id: 1
)

Review.create!(
    reviews_content: "Do practice coding problems",
    course_id: 4,
    difficulty: 2,
    benefit: "4",
    time_spent: "4-6",
    major_id: 1,
    institution_id: 1
)

Review.create!(
    reviews_content: "Start assignments early, watch Cherno, participate in slack and ask TA questions. ",
    course_id: 4,
    difficulty: 3,
    benefit: "5",
    time_spent: "1-3",
    major_id: 1,
    institution_id: 1
)
puts "Reviews created for CS165"

##### Reviews CS225 #####
Review.create!(
    reviews_content: "Start early with homework. Make sure you do every exercise and read each assigned reading. Try doing extra problems. The class is not hard as long as you’re studying every day. Midterm and Final exams guides are there for a reason - do every problem listed there. Make sure to do problems in the lecture slides as well as in weekly quizzes. The TAs are very helpful, but make sure that you read assignments and do the problems first. ",
    course_id: 5,
    difficulty: 2,
    benefit: "2",
    time_spent: "4-6",
    major_id: 1,
    institution_id: 1
)
Review.create!(
    reviews_content: "I came in with an unusual level of preparation for this course, so I'm not the best judge of difficulty. The structure (two weekly assignments, weekly 2-hour quiz, bi-weekly discussion post) means that all students will spend a lot of time on this course. Most of my classmates who took both 161 and 225 spent at least 80% of their school time on 225. The grading is extremely lenient overall, rewarding effort and attempts with large partial credit allocations. The professor was extremely present on Slack and Piazza both, and she seemed to be working hard to answer questions posed by students. Please ask your questions on Piazza and Slack. (And, goodness gracious, please understand that 'Anonymous' posts on Piazza are only anonymous from the students -- the instructor and TAs know who posted what.)",
    course_id: 5,
    difficulty: 2,
    benefit: "4",
    time_spent: "4-6",
    major_id: 1,
    institution_id: 1
)
Review.create!(
    reviews_content: "Use outside resources especially on topics before the midterm. Make sure you understand homework and quizzes prior to midterm and final. Keep on top of the material as it is easy to fall behind. ",
    course_id: 5,
    difficulty: 3,
    benefit: "4",
    time_spent: "7-9-",
    major_id: 1,
    institution_id: 1
)
puts "Reviews created for CS225"

##### Reviews CS261 #####
Review.create!(
    reviews_content: "Get a group as soon as Slack access is set up. The worksheets have some typos here and there so you'll want to make sure you read them carefully, but so long as you put in the effort you'll get the points. Do not start assignments late, especially the Hashmap one at the end, you will be dealing with a lot of seg faults if your pointer knowledge isn't great.",
    course_id: 6,
    difficulty: 3,
    benefit: "3",
    time_spent: "1-3",
    major_id: 1,
    institution_id: 1
)
Review.create!(
    reviews_content: "I found this course really interesting and the topics covered are SUPER useful and important for pretty much every other class, especially Algorithms. The provided lectures and material are pretty poor so make sure you do whatever is necessary to understand what's being talked about. The concepts covered in this class are fundamental to lots of programming so it's easy to find outside resources.",
    course_id: 6,
    difficulty: 3,
    benefit: "4",
    time_spent: "1-3",
    major_id: 1,
    institution_id: 1
)
Review.create!(
    reviews_content: "The only concepts from C that you might not have covered in earlier classes were void pointers and function pointers - these will come up in the last quarter of the class. No need to do any specialized C prep. The most valuable things you can do to keep a good grade are (in order of importance): 1. Join a group early via slack, preferably before class starts. The students forming groups then will be the most motivated, and will help push you when you start getting lazy halfway through. 2. Create an implementation of each data structure from each worksheet along with unit tests. This will end up being a lot of work (10 hours per week, and more when doing AVL Trees/Heaps) since there are generally 5 worksheets per week. Your own C implementations internalize the structures/code so that you can answer questions on the exams that you might not have done before (if you don't Leetcode). Generally, exam coding questions will be something from the worksheets but with a twist. 3. Leetcode practice targeting each data structure is a fantastic supplement to the worksheets and their implementations - this will really help on the exam coding questions. It seems like it's easy to get a bad grade. Lots of students complained about the exam difficulty, but I'm not sure what kind of prep they did. I feel like doing these three things (and staying on it) helped earn an easy 97% final grade. ",
    course_id: 6,
    difficulty: 4,
    benefit: "5",
    time_spent: "1-3",
    major_id: 1,
    institution_id: 1
)
puts "Reviews created for CS261"

##### Reviews CS325 #####
Review.create!(
    reviews_content: "My instructor, Liang Huang, was quite awesome!",
    course_id: 9,
    difficulty: 5,
    benefit: "5",
    time_spent: "13-15",
    major_id: 1,
    institution_id: 1
)

Review.create!(
    reviews_content: "I took this class with graduate students teacher in summer 2019. Although exam was not really hard, Instructor curved a lot for the exams. The assignments were mostly group assignment and it was easy at all.",
    course_id: 9,
    difficulty: 4,
    benefit: "4",
    time_spent: "10-12",
    major_id: 1,
    institution_id: 1
)
puts "Reviews created for CS325"

##### Reviews CS344 #####
Review.create!(
    reviews_content: "I took this class at 2019 summer and I felt this class was extremely difficult. The instructor I took with was PHD student. His office hour was really helpful but his lecture was not. There were 4 assignments in total and I felt 3rd one and 4th assignment was extremelly hard. We really should start earlier to finish those 2 assignments.",
    course_id: 11,
    difficulty: 5,
    benefit: "4",
    time_spent: "13-15",
    major_id: 1,
    institution_id: 1
)
Review.create!(
    reviews_content: "I took this class at fall2019 and I felt this class was super hard. The hardest class at OSU undergraduate class.",
    course_id: 11,
    difficulty: 5,
    benefit: "3",
    time_spent: "13-15",
    major_id: 1,
    institution_id: 1
)
puts "Reviews created for CS344"

##### Reviews CS361 #####
Review.create!(
    reviews_content: "Took in summer 2019 with instructor. Assignments are entirely group projects and work with 4 to 5 students.",
    course_id: 13,
    difficulty: 2,
    benefit: "4",
    time_spent: "1-3",
    major_id: 1,
    institution_id: 1
)
puts "Reviews created for CS361"

##### Reviews CS372 #####
Review.create!(
    reviews_content: "I took this course at fall 2019 with instructor Bill Pheil. Assignments were labs and we entirely need to use Wireshark and observe some values. There were also coding extra credit and we could choose the language for coding. Midterm and final was pretty hard especially for the calculator problems. Better to prepare a lot for it.",
    course_id: 15,
    difficulty: 4,
    benefit: "4",
    time_spent: "4-6",
    major_id: 1,
    institution_id: 1
)
puts "Reviews created for CS372"