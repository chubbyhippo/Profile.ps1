function bash
{
    & 'C:\Program Files\Git\bin\bash.exe' -c $args
}

Invoke-Expression (&starship init powershell)