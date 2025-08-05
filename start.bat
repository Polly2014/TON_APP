@echo off
echo 🚀 启动 TON Telegram Mini App...

cd /d "%~dp0"

echo 📦 检查依赖...
if not exist "node_modules" (
    echo 安装依赖中...
    npm install
    if errorlevel 1 (
        echo ❌ 依赖安装失败
        pause
        exit /b 1
    )
)

echo 🌐 启动开发服务器...
echo 📱 应用将在 http://localhost:3000 启动
echo 🔗 在Telegram中测试前，请确保应用已部署到公网域名
echo.
echo 按 Ctrl+C 停止服务器
echo.

npx http-server public -p 3000 -c-1 --cors
pause
