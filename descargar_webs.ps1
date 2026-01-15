# Script para descargar las webs necesarias

Write-Host "Descargando web principal (Cloud Academy)..." -ForegroundColor Green
git clone https://github.com/cloudacademy/static-website-example web1_temp

Write-Host "Creando archivo zip de la web principal..." -ForegroundColor Green
Compress-Archive -Path web1_temp\* -DestinationPath web1.zip -Force

Write-Host "Descargando web del reloj..." -ForegroundColor Green
git clone https://github.com/ArchiDep/static-clock-website web2_temp

Write-Host "Creando archivo zip de la web del reloj..." -ForegroundColor Green
Compress-Archive -Path web2_temp\* -DestinationPath reloj.zip -Force

Write-Host "Limpiando carpetas temporales..." -ForegroundColor Green
Remove-Item -Path web1_temp, web2_temp -Recurse -Force

Write-Host "¡Listo! Tienes dos archivos ZIP:" -ForegroundColor Yellow
Write-Host "  - web1.zip (sube a la raíz)" -ForegroundColor Cyan
Write-Host "  - reloj.zip (sube a /reloj)" -ForegroundColor Cyan

