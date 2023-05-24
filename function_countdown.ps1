function Show-Countdown {
    param (
        [int]$seconds
    )

    $x = $host.ui.rawui.CursorPosition.X
    $y = $host.ui.rawui.CursorPosition.Y

    for ($i = $seconds; $i -ge 1; $i--) {
        $countdown = "$i..."
        $spaces = " " * $countdown.Length

        Write-Host $countdown -NoNewline
        Start-Sleep -Milliseconds 500
        Write-Host "`b$spaces`b" -NoNewline
        Start-Sleep -Milliseconds 500

        # Reset cursor position
        $host.ui.rawui.CursorPosition.X = $x
        $host.ui.rawui.CursorPosition.Y = $y
    }

    Write-Host
}