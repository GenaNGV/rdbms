INSERT INTO student (first_name, last_name, birth_date, sex, hostel_live) values ("Ivan","Ivanov", "1989/01/01", 1, 1);
INSERT INTO student (first_name, last_name, birth_date, sex, hostel_live) values ("Semen","Petrov", "1990/02/12", 1, 1);
INSERT INTO student (first_name, last_name, birth_date, sex, hostel_live) values ("Gera","Somov", "1990/05/10", 1, 1);
INSERT INTO student (first_name, last_name, birth_date, sex, hostel_live) values ("Vasil","Dremov", "1990/03/22", 1, 1);
INSERT INTO student (first_name, last_name, birth_date, sex, hostel_live) values ("Boris","Mohov", "1990/03/20", 1, 0);
INSERT INTO student (first_name, last_name, birth_date, sex, hostel_live) values ("Zema","Hotic", "1990/06/21", 1, 0);
INSERT INTO student (first_name, last_name, birth_date, sex, hostel_live) values ("Farid","Faidulov", "1990/03/20", 1, 0);
INSERT INTO student (first_name, last_name, birth_date, sex, hostel_live) values ("Alex","Sadov", "1990/06/21", 1, 1);

INSERT INTO student (first_name, last_name, birth_date, sex, hostel_live) values ("Masha","Petrova", "1990/03/11", 0, 1);
INSERT INTO student (first_name, last_name, birth_date, sex, hostel_live) values ("Dasha","Petrova", "1990/03/11", 0, 1);
INSERT INTO student (first_name, last_name, birth_date, sex, hostel_live) values ("Dasha","Vasilieva", "1990/04/21", 0, 1);
INSERT INTO student (first_name, last_name, birth_date, sex, hostel_live) values ("Maria","Dutova", "1990/08/12", 0, 0);
INSERT INTO student (first_name, last_name, birth_date, sex, hostel_live) values ("Vasilisa","Premudraja", "1990/09/17", 0, 0);
INSERT INTO student (first_name, last_name, birth_date, sex, hostel_live) values ("Natasha","Rochina", "1990/09/17", 0, 0);
commit;


INSERT INTO techer (first_name, last_name) values ("Sergei","Kashkevich");
INSERT INTO techer (first_name, last_name) values ("Dasha","Petrova");
INSERT INTO techer (first_name, last_name) values ("Slave","Dushkin");
INSERT INTO techer (first_name, last_name) values ("Slava","Pushkin");
commit;

INSERT INTO training_course (name, teacher_id) values ("RDBMS",1);
INSERT INTO training_course (name, teacher_id) values ("Literature",2);
INSERT INTO training_course (name, teacher_id) values ("Math",3);
INSERT INTO training_course (name, teacher_id) values ("Athletic",4);
INSERT INTO training_course (name, teacher_id) values ("Philosophy",4);
commit;

INSERT INTO exam (date, teacher_id, training_course_id) values ("2014/12/02", 1, 1);
INSERT INTO exam (date, teacher_id, training_course_id) values ("2014/12/02", 2, 2);
INSERT INTO exam (date, teacher_id, training_course_id) values ("2014/12/03", 3, 3);
INSERT INTO exam (date, teacher_id, training_course_id) values ("2014/12/04", 4, 4);

commit;

INSERT INTO exam_result (exam_id, teacher_id, student_id, result) values (1, 1, 1, 5);
INSERT INTO exam_result (exam_id, teacher_id, student_id, result) values (1, 1, 2, 2);
INSERT INTO exam_result (exam_id, teacher_id, student_id, result) values (1, 1, 3, 2);
INSERT INTO exam_result (exam_id, teacher_id, student_id, result) values (1, 1, 4, 4);
INSERT INTO exam_result (exam_id, teacher_id, student_id, result) values (1, 1, 5, 2);
INSERT INTO exam_result (exam_id, teacher_id, student_id, result) values (1, 2, 9, 5);
INSERT INTO exam_result (exam_id, teacher_id, student_id, result) values (1, 2, 10, 5);
INSERT INTO exam_result (exam_id, teacher_id, student_id, result) values (1, 2, 11, 4);
INSERT INTO exam_result (exam_id, teacher_id, student_id, result) values (1, 2, 12, 4);
INSERT INTO exam_result (exam_id, teacher_id, student_id, result) values (1, 2, 13, 3);
INSERT INTO exam_result (exam_id, teacher_id, student_id, result) values (1, 2, 14, 3);

INSERT INTO exam_result (exam_id, teacher_id, student_id, result) values (2, 2, 2, 4);
INSERT INTO exam_result (exam_id, teacher_id, student_id, result) values (2, 3, 3, 5);
INSERT INTO exam_result (exam_id, teacher_id, student_id, result) values (2, 3, 4, 3);
INSERT INTO exam_result (exam_id, teacher_id, student_id, result) values (2, 3, 5, 4);
INSERT INTO exam_result (exam_id, teacher_id, student_id, result) values (2, 2, 9, 5);
INSERT INTO exam_result (exam_id, teacher_id, student_id, result) values (2, 2, 10, 5);
INSERT INTO exam_result (exam_id, teacher_id, student_id, result) values (2, 2, 11, 5);
INSERT INTO exam_result (exam_id, teacher_id, student_id, result) values (2, 2, 12, 5);
INSERT INTO exam_result (exam_id, teacher_id, student_id, result) values (2, 2, 13, 4);
INSERT INTO exam_result (exam_id, teacher_id, student_id, result) values (2, 2, 14, 2);

INSERT INTO exam_result (exam_id, teacher_id, student_id, result) values (3, 4, 1, 3);
INSERT INTO exam_result (exam_id, teacher_id, student_id, result) values (3, 4, 2, 3);
INSERT INTO exam_result (exam_id, teacher_id, student_id, result) values (3, 4, 3, 4);
INSERT INTO exam_result (exam_id, teacher_id, student_id, result) values (3, 4, 4, 3);
INSERT INTO exam_result (exam_id, teacher_id, student_id, result) values (3, 4, 5, 3);
INSERT INTO exam_result (exam_id, teacher_id, student_id, result) values (3, 4, 6, 3);
INSERT INTO exam_result (exam_id, teacher_id, student_id, result) values (3, 4, 7, 3);
INSERT INTO exam_result (exam_id, teacher_id, student_id, result) values (3, 4, 8, 3);
INSERT INTO exam_result (exam_id, teacher_id, student_id, result) values (3, 4, 9, 2);
INSERT INTO exam_result (exam_id, teacher_id, student_id, result) values (3, 4, 10, 2);
INSERT INTO exam_result (exam_id, teacher_id, student_id, result) values (3, 4, 11, 2);
INSERT INTO exam_result (exam_id, teacher_id, student_id, result) values (3, 4, 12, 2);
INSERT INTO exam_result (exam_id, teacher_id, student_id, result) values (3, 4, 13, 4);
INSERT INTO exam_result (exam_id, teacher_id, student_id, result) values (3, 4, 14, 2);

commit;



INSERT INTO student_result (exam_id, training_course_id, student_id, result, date) values (1, 1, 1, 5, "2014/12/02");
INSERT INTO student_result (exam_id, training_course_id, student_id, result, date) values (1, 1, 2, 2, "2014/12/02");
INSERT INTO student_result (exam_id, training_course_id, student_id, result, date) values (1, 1, 3, 5, "2014/12/02");
INSERT INTO student_result (exam_id, training_course_id, student_id, result, date) values (1, 1, 4, 4, "2014/12/02");
INSERT INTO student_result (exam_id, training_course_id, student_id, result, date) values (1, 1, 5, 2, "2014/12/02");
INSERT INTO student_result (exam_id, training_course_id, student_id, result, date) values (null, 1, 6, 4, "2014/12/02");
INSERT INTO student_result (exam_id, training_course_id, student_id, result, date) values (null, 1, 7, 5, "2014/12/02");
INSERT INTO student_result (exam_id, training_course_id, student_id, result, date) values (null, 1, 8, 5, "2014/12/02");
INSERT INTO student_result (exam_id, training_course_id, student_id, result, date) values (1, 1, 9, 5, "2014/12/02");
INSERT INTO student_result (exam_id, training_course_id, student_id, result, date) values (1, 1, 10, 5, "2014/12/02");
INSERT INTO student_result (exam_id, training_course_id, student_id, result, date) values (1, 1, 11, 4, "2014/12/02");
INSERT INTO student_result (exam_id, training_course_id, student_id, result, date) values (1, 1, 12, 4, "2014/12/02");
INSERT INTO student_result (exam_id, training_course_id, student_id, result, date) values (1, 1, 13, 3, "2014/12/02");
INSERT INTO student_result (exam_id, training_course_id, student_id, result, date) values (1, 1, 14, 3, "2014/12/02");

INSERT INTO student_result (exam_id, training_course_id, student_id, result, date) values (null, 2, 1, 5, "2014/12/04");
INSERT INTO student_result (exam_id, training_course_id, student_id, result, date) values (null, 2, 2, 5, "2014/12/04");
INSERT INTO student_result (exam_id, training_course_id, student_id, result, date) values (null, 2, 3, 5, "2014/12/04");
INSERT INTO student_result (exam_id, training_course_id, student_id, result, date) values (2, 2, 4, 3, "2014/12/04");
INSERT INTO student_result (exam_id, training_course_id, student_id, result, date) values (2, 2, 5, 4, "2014/12/04");
INSERT INTO student_result (exam_id, training_course_id, student_id, result, date) values (2, 2, 6, 5, "2014/12/04");
INSERT INTO student_result (exam_id, training_course_id, student_id, result, date) values (2, 2, 7, 2, "2014/12/04");
INSERT INTO student_result (exam_id, training_course_id, student_id, result, date) values (2, 2, 8, 2, "2014/12/04");
INSERT INTO student_result (exam_id, training_course_id, student_id, result, date) values (2, 2, 9, 5, "2014/12/04");
INSERT INTO student_result (exam_id, training_course_id, student_id, result, date) values (2, 2, 10, 5, "2014/12/04");
INSERT INTO student_result (exam_id, training_course_id, student_id, result, date) values (2, 2, 11, 5, "2014/12/04");
INSERT INTO student_result (exam_id, training_course_id, student_id, result, date) values (2, 2, 12, 5, "2014/12/04");
INSERT INTO student_result (exam_id, training_course_id, student_id, result, date) values (2, 2, 13, 4, "2014/12/04");
INSERT INTO student_result (exam_id, training_course_id, student_id, result, date) values (2, 2, 14, 2, "2014/12/04");

INSERT INTO student_result (exam_id, training_course_id, student_id, result, date) values (3, 4, 1, 3, "2014/12/04");
INSERT INTO student_result (exam_id, training_course_id, student_id, result, date) values (3, 4, 2, 3, "2014/12/04");
INSERT INTO student_result (exam_id, training_course_id, student_id, result, date) values (3, 4, 3, 4, "2014/12/04");
INSERT INTO student_result (exam_id, training_course_id, student_id, result, date) values (3, 4, 4, 3, "2014/12/04");
INSERT INTO student_result (exam_id, training_course_id, student_id, result, date) values (3, 4, 5, 3, "2014/12/04");
INSERT INTO student_result (exam_id, training_course_id, student_id, result, date) values (3, 4, 6, 3, "2014/12/04");
INSERT INTO student_result (exam_id, training_course_id, student_id, result, date) values (3, 4, 7, 3, "2014/12/04");
INSERT INTO student_result (exam_id, training_course_id, student_id, result, date) values (3, 4, 8, 3, "2014/12/04");
INSERT INTO student_result (exam_id, training_course_id, student_id, result, date) values (3, 4, 9, 2, "2014/12/04");
INSERT INTO student_result (exam_id, training_course_id, student_id, result, date) values (3, 4, 10, 2, "2014/12/04");
INSERT INTO student_result (exam_id, training_course_id, student_id, result, date) values (3, 4, 11, 2, "2014/12/04");
INSERT INTO student_result (exam_id, training_course_id, student_id, result, date) values (3, 4, 12, 2, "2014/12/04");
INSERT INTO student_result (exam_id, training_course_id, student_id, result, date) values (3, 4, 13, 4, "2014/12/04");
INSERT INTO student_result (exam_id, training_course_id, student_id, result, date) values (3, 4, 14, 2, "2014/12/04");
commit;