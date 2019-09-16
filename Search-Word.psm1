<#
 .Synopsis
  Get the path of a certain word pattern

 .Description
 Search for a pattern in the selected path
  

 .Example
   Search-FilePattern -Path c: -Word .txt

#>
function Search-FilePattern{
    param(
        [Parameter(Mandatory)][string] $Path,

        [Parameter(Mandatory)][string] $Pattern
    )      
    $Pattern = [string]"*" + $Pattern + [String]"*"
    Get-ChildItem -path $path -include $Pattern -recurse -ErrorAction SilentlyContinue -file | select FullName



    }
    
    Export-ModuleMember -Function Search-FilePattern
