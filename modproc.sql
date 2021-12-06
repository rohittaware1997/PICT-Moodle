delimiter //
drop procedure ab;
CREATE PROCEDURE ab(tbl_name VARCHAR(255), username varchar(255)) NOT DETERMINISTIC READS SQL DATA SQL SECURITY DEFINER
BEGIN
  SET @table_name = tbl_name;
  
SET @subcode := (select SubjectCode from SubjectCoordinator where 
UserID = username );

    select @subcode;
	set @q = 'INSERT INTO AssignmentExist values ( @table_name,@subcode)';

  PREPARE sam1 FROM @q;
  EXECUTE sam1;
  DEALLOCATE PREPARE sam1;


 
  SET @i := 3001;
	set @c=0;

 SET @sql_text1 = concat( 'CREATE TABLE IF NOT EXISTS ',@table_name,' (Rollno int(4), SubjectCode int(3), ScheduledDate varchar(20), SubmissionDate varchar(20), Marks int(4), Approved int(1))');


  PREPARE stmt1 FROM @sql_text1;
  EXECUTE stmt1;
  DEALLOCATE PREPARE stmt1;

set @st = concat('SELECT count(*) INTO @var1 FROM ',@table_name,' WHERE SubjectCode = ',@subcode,'');
	prepare smt from @st;
	execute smt;
	deallocate prepare smt;

if(@var1 = 0) then
some_label:LOOP
        set @st = concat( 'INSERT INTO ',@table_name,' (Rollno, SubjectCode, ScheduledDate, SubmissionDate, Marks, Approved) VALUES (',@i+@c,',',@subcode,',"dd-mm-yyyy","dd-mm-yyyy", 0,0)');
	prepare smt from @st;
	execute smt;
	deallocate prepare smt;
	set @c = @c + 1;
        IF @c > 80 THEN LEAVE some_label; END IF;
    END LOOP;

end if;
END
//



