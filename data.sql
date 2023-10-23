INSERT INTO ActivityType (ActivityTypeId, Name)
VALUES
    (1, 'Program'),
    (2, 'Sub Program'),
    (3, 'Project'),
    (4, 'Contract'),
    (5, 'Point');

INSERT INTO Activity (ActivityId, ParentId, ActivityTypeId, Name, AreaId)
VALUES
    (1, NULL, 1, 'Программа 1', NULL),
    (2, NULL, 1, 'Программа 2', NULL),
    (3, 1, 2, 'Подпрограмма 1.1', NULL),
    (4, 1, 2, 'Подпрограмма 1.2', NULL),
    (5, 3, 3, 'Проект 1.1.1', NULL),
    (6, 3, 3, 'Проект 1.1.2', NULL),
    (7, 5, 5, 'КТ (проекта) 1.1.1.1', NULL);

INSERT INTO Program (ActivityId)
VALUES (1),
       (2),
       (3),
       (6);

INSERT INTO SubProgram (ActivityId)
VALUES (4),
       (5);

INSERT INTO Project (ActivityId)
VALUES (2),
       (3),
       (4),
       (5);

INSERT INTO Contract (ActivityId, AreaId)
VALUES (3, 1),
       (4, 2),
       (6, 3);

INSERT INTO Point (ActivityId)
VALUES (1),
       (2),
       (3),
       (4),
       (5),
       (6);
