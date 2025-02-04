Function Prompt
{
    $git_cmd = "git rev-parse --abbrev-ref HEAD"
    Invoke-Expression $git_cmd 2> $null | Tee-Object -Variable git_branch | Out-Null
    $git_branch_text = $None
    if ( $git_branch -And -Not $git_branch.StartsWith($git_cmd)) 
    {
        $git_branch_text = "[$git_branch] "
    }

    $stringBuilder = New-Object System.Text.StringBuilder
    $null = $stringBuilder.Append("PS ")
    if ($git_branch_text) { $null = $stringBuilder.Append($git_branch_text) }
    $null = $stringBuilder.Append($($executionContext.SessionState.Path.CurrentLocation))
    $null = $stringBuilder.Append($('>' * ($nestedPromptLevel + 1)))
    $null = $stringBuilder.Append(" ")
    return $stringBuilder.ToString()
}

