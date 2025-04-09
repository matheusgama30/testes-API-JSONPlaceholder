@echo off
title Execução de Testes com Newman

echo ========================================
echo     Iniciando testes com Newman...
echo ========================================

:: Nome da coleção
set COLLECTION="testes-api-jsonplaceholder.postman_collection.json"

:: Pasta para salvar o relatório
set REPORT_FOLDER=newman
set REPORT_PATH=%REPORT_FOLDER%\relatorio.html

:: Cria a pasta, se não existir
if not exist %REPORT_FOLDER% mkdir %REPORT_FOLDER%

:: Executa os testes e gera o relatório HTML com o htmlextra
newman run %COLLECTION% -r htmlextra --reporter-htmlextra-export "%REPORT_PATH%"

echo.
echo ========================================
echo     ✅ Testes concluídos com sucesso!
echo     📄 Relatório gerado em: %REPORT_PATH%
echo ========================================
echo.

pause
