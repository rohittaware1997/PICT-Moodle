delimiter //
create trigger blank_validate
after insert on SubjectTable
for each row
begin
IF NEW.SubjectName = '' THEN
                SIGNAL SQLSTATE '45001' SET MESSAGE_TEXT = 'Blank value on mytable.myfield';
        END IF;
end//
