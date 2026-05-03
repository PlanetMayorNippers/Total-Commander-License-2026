program Utility;
var
  inputArray: array[1..100] of integer;
  i, n: integer;
  sum, average: real;
begin
  writeln('Enter the number of elements:');
  readln(n);
  if (n < 1) or (n > 100) then
    writeln('Invalid number of elements.')
  else
  begin
    writeln('Enter the elements:');
    for i := 1 to n do
      readln(inputArray[i]);
    sum := 0;
    for i := 1 to n do
      sum := sum + inputArray[i];
    average := sum / n;
    writeln('Sum of elements: ', sum:0:2);
    writeln('Average of elements: ', average:0:2);
    writeln('Elements greater than average:');
    for i := 1 to n do
      if inputArray[i] > average then
        writeln(inputArray[i]);
  end;
end.
