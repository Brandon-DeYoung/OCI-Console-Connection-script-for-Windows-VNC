Add-Type -AssemblyName System.Windows.Forms
function Replace-PathInCommand {
    $form = New-Object System.Windows.Forms.Form
    $form.Text = 'Input Command'
    $form.Size = New-Object System.Drawing.Size(300,200)
    $form.StartPosition = 'CenterScreen'
    $textBox = New-Object System.Windows.Forms.TextBox
    $textBox.Location = New-Object System.Drawing.Point(10,10)
    $textBox.Size = New-Object System.Drawing.Size(260,100)
    $textBox.Multiline = $true
    $form.Controls.Add($textBox)
    $okButton = New-Object System.Windows.Forms.Button
    $okButton.Location = New-Object System.Drawing.Point(10,120)
    $okButton.Size = New-Object System.Drawing.Size(75,23)
    $okButton.Text = 'OK'
    $okButton.DialogResult = [System.Windows.Forms.DialogResult]::OK
    $form.Controls.Add($okButton)
    $form.AcceptButton = $okButton
    $form.Topmost = $true
    $result = $form.ShowDialog()
    if ($result -eq [System.Windows.Forms.DialogResult]::OK) {
        $command = $textBox.Text
        $oldPath = '$env:homedrive$env:homepath\oci\console.ppk'
        $newPath = "C:\Users\$env:username\oci\console.ppk"
        $newCommand = $command.Replace($oldPath, $newPath)

        Invoke-Expression $newCommand
    }
}

Replace-PathInCommand