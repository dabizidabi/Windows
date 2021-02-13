$ast = (1, 3, 2, 10, 6, 11, 4, 8, 5)
$l = $ast.length
while ($l -ne 0)
{
    $l--
    for ($i = 0; $i -lt $ast.length-1; $i++)
    {
        if ($ast[$i] -gt $ast[$i+1])
        {
            $c = $ast[$i]
            $ast[$i] = $ast[$i+1]
            $ast[$i+1] = $c

        }
    }
}
$ast
