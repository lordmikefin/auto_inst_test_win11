#C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe

# NOTE: This script is copied for 'LMAutoSetBotWin'.


# Copyright (c) 2019, Mikko Niemelä a.k.a. Lord Mike (lordmike@iki.fi)
# 
# License of this script file:
#   MIT License
# 
# License is available online:
#   https://github.com/lordmikefin/LMAutoSetBotWin/blob/master/LICENSE
# 
# Latest version of this script file:
#   https://github.com/lordmikefin/LMAutoSetBotWin/blob/master/init.ps1

# init.ps1
# This script will install software for my other scripts :)
# Download and install.
#  - Git
#  - Python

$Current_script_ver="0.0.3"
$Current_script_date="2020-01-04"
$Current_script="init.ps1"
#echo Current_script_ver: ${Current_script_ver} (${Current_script_date})
Write-Host "Current_script_ver: ${Current_script_ver} (${Current_script_date})"


#URL_PY37
#Write-Host "URL_PY37: %URL_PY37%"
#$url_py37=Get-Item Env:URL_PY37
#$url_py37=& {Get-Item Env:URL_PY37}
#Write-Host "URL_PY37:" $url_py37

#Get-Variable *P*

# Get variable from outside of this script and print it.
#Write-Host "URL_PY37: ${Env:URL_PY37}"


# NOTE: Download with PowerShell
#   https://superuser.com/questions/25538/how-to-download-files-from-command-line-in-windows-like-wget-or-curl
#$client = new-object System.Net.WebClient
#$client.DownloadFile("http://www.xyz.net/file.txt","C:\tmp\file.txt")
$client = new-object System.Net.WebClient



# TODO: Improve how to 'Get-Item' error is supressed


# NOTE: Why I was installing Git? Were I going to use 'bash'?
#       I think Git is not needed anymore.

# Download Git into temp folder
Write-Host ""
Try {
	$url = "${Env:URL_GIT}"
	$file = "${Env:PATH_INSTALLERS}\${Env:FILE_GIT}"
	$file_item = Get-Item ${file} -ErrorAction Stop
	$file_size = ${file_item}.length
	Write-Host "Download Git into temp folder"
	Write-Host "url: ${url}"
	Write-Host "file: ${file}"
	Write-Host "file size: ${file_size}"
	#file size: 68778784
	if ( ${file_size} -eq 68778784) {
		Write-Host "File already exist."
	} else {
		$client.DownloadFile("${url}","${file}")
	}
}
Catch {
	Write-Host "Download Git into temp folder"
	Write-Host "url: ${url}"
	Write-Host "file: ${file}"
	$client.DownloadFile("${url}","${file}")
}


# Download Python into temp folder
Write-Host ""
Try {
	$url = "${Env:URL_PY37}"
	$file = "${Env:PATH_INSTALLERS}\${Env:FILE_PY37}"
	$file_item = Get-Item ${file} -ErrorAction Stop
	$file_size = ${file_item}.length
	Write-Host "Download Python into temp folder"
	Write-Host "url: ${url}"
	Write-Host "file: ${file}"
	Write-Host "file size: ${file_size}"
	#file size: 26680368
	if ( ${file_size} -eq 26680368 ) {
		Write-Host "File already exist."
	} else {
		$client.DownloadFile("${url}","${file}")
	}
}
Catch {
	Write-Host "Download Python into temp folder"
	Write-Host "url: ${url}"
	Write-Host "file: ${file}"
	$client.DownloadFile("${url}","${file}")
}

Write-Host ""
Write-Host "End of script '${Current_script}'"
