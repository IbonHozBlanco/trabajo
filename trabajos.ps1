Set-ExecutionPolicy unrestricted
New-localGroup -Name "Trabajadores"
New-LocalGroup -Name "Responsables"

for ($i=1; $i -le 5; $i++){
New-LocalUser -Name "Trabajador$i" -AccountExpires "12/11/2024"
Add-LocalGroupMember -Group "Trabajadores" -Member "Trabajador$i"
}

New-LocalUser -Name "Responsable1" 
New-LocalUser -Name "Responsable2" 
Add-LocalGroupMember -Group "Responsables" -Member "Responsable1" 
Add-LocalGroupMember -Group "Responsables" -Member "Responsable2" 

New-LocalUser -Name "Informatico" -PasswordNeverExpires
Add-LocalGroupMember -Group "Administradores" -Member "Informatico"
New-LocalUser -Name "nuevo_usuario"