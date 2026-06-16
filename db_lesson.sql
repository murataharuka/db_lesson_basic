セクション１０　SQL 課題内容

Q1 
CREATE TABLE departments(
department_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(20) NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

Q2 
ALTER TABLE people ADD department_id INT UNSIGNED AFTER email;

Q3INSERT INTO departments (name) VALUES
('営業'),
('開発'),
('経理'),
('人事'),
('情報システム');

Q4 INSERT INTO people (name, email, department_id, age, gender) VALUES
('鈴木たかし', 'suzukitakasi@example.com', 1, 25, 1),
('田中ゆうこ', 'tanakayuuko@example.com', 1, 30, 2),
('福田だいすけ', 'hukudataisuke@example.com', 1, 25, 1),
('豊島はなこ',' toyosimahanako@example.com', 2, 30, 2),
('橋本環奈', 'hasimotokanna@example.com', 2, 28,2),
('村田春花', 'murataharuka@example.com', 2, 24, 2),
('佐藤太郎', 'satoutarou@example.com', 2, 40, 1),
('山田花子', 'yamadahanako@example.com', 3, 38, 2),
('小池百合子', 'koikeyuriko@example.com', 4, 50, 2),
('松本潤', 'matumotojyunn@example.com', 5, 48, 1);

Q5 UPDATE people SET department_id = 1 WHERE person_id = 17;
UPDATE people SET department_id = 2 WHERE person_id = 18;
SELECT name, age FROM people WHERE gender = 1 ORDER BY age DESC;

Q6 peopleというテーブルから。name,eemail,ageという3つのカラムを抽出をします。department＿idが１であるレコードのみに条件を絞り込み、最終的にcreated＿atの値に基づいて日付の古い順で並び替えて表示する、という命令です。

Q7 SELECT name FROM people
WHERE (age BETWEEN 20 AND 29 AND gender = 2)
OR (age BETWEEN 40 AND 49 AND gender = 1);

Q８SELECT * FROM people
WHERE department_id = 1
ORDER BY age ASC;

q９SELECT AVG(age) AS average_age
FROM people
WHERE department_id = 2 AND gender = 2;

Q10 SELECT p.name, d.name AS department_name, r.content
FROM people p 
JOIN departments d ON p.department_id = d.department_id
JOIN reports r ON p.person_id = r.person_id;

Q11 SELECT p.name
FROM people p
LEFT JOIN reports r ON p.person_id = r.person_id
WHERE r.report_id IS NULL; 
