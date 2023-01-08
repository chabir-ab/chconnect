
#bismilah hhh


while ($true) {
    
    $pingres = Test-Connection -ComputerName 8.8.8.8 -Count 1 -Quiet
    
    if (!$pingres) {
        
        $interfaces = Get-NetAdapter | Where-Object {$_.status -eq "disconnected"}

        if ($interfaces) {
            
            Enable-NetAdapter -name $interfaces.name
            
            Set-NetIPInterface -InterfaceIndex $interfaces.InterfaceIndex -Dhcp Enabled
       
            }
        
        ipconfig /release
        ipconfig /renew
            
        }

        else {
            
            Write-Output ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>---- You are Connected -----<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
            start-sleep -s 5
            break
        
            }

    }

#ila khsrat lik xi haja matsnani n9adha lik dber rask hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh
