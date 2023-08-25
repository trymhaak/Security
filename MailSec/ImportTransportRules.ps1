Add-Type -AssemblyName System.Windows.Forms
Connect-ExchangeOnline

$FileBrowser = New-Object System.Windows.Forms.OpenFileDialog
$filepath = $FileBrowser.ShowDialog()
$filepath = $FileBrowser.FileName

Import-TransportRuleCollection -FileData ([System.IO.File]::ReadAllBytes($filepath))
