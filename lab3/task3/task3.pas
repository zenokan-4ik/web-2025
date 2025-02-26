PROGRAM HelloUser(INPUT, OUTPUT);
USES
  DOS;
VAR
  Name, Args: STRING;
  Index: INTEGER;
BEGIN
  WRITELN('Content-Type: text/plain');
  WRITELN;
  Args := GetEnv('QUERY_STRING');
  Index := Pos('name=', Args);
  Name := Copy(Args, Index+5);
  WRITE('Hello dear, ');
  IF(Name <> '')
  THEN
    WRITELN(Name, '!')
  ELSE
    WRITELN('Anonymous!')
END.
