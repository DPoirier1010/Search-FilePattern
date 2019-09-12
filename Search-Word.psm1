<#
 .Synopsis
  Get the path of a certain word pattern

 .Description
  Return all instance of the word pattern
  

 .Example
   Search-Word -Path c: -Word .txt

#>
function Search-Word{
    param(
        [Parameter(Mandatory)][string] $Path,

        [Parameter(Mandatory)][string] $Word
    )      
    $Word = [string]"*" + $Word + [String]"*"
    Get-ChildItem -path $path -include $word -recurse -ErrorAction SilentlyContinue -file | select FullName



    }
    
    Export-ModuleMember -Function Search-Word
