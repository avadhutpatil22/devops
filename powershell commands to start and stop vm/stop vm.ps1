$vmList = Get-AzVM

$count = 0;
foreach ($vm in $vmList) {
    Write-Output "Starting VM $($vm.Name) is switching off"
    $count++
    $j =Start-AzVM -Name $vm.Name -ResourceGroupName $vm.ResourceGroupName -Force -AsJob
    if (($count % 5 -eq 0) -or ($count -ge $vmList.count)) {
        Get-Job | Wait-Job
    }
}