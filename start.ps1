# TON Telegram Mini App 启动脚本 (Windows)

Write-Host "🚀 启动 TON Telegram Mini App..." -ForegroundColor Green

# 检查 Node.js 是否安装
try {
    $nodeVersion = node --version
    Write-Host "✅ Node.js 版本: $nodeVersion" -ForegroundColor Green
} catch {
    Write-Host "❌ 错误: Node.js 未安装" -ForegroundColor Red
    Write-Host "请访问 https://nodejs.org/ 安装 Node.js" -ForegroundColor Yellow
    exit 1
}

# 检查 npm 是否安装
try {
    $npmVersion = npm --version
    Write-Host "✅ npm 版本: $npmVersion" -ForegroundColor Green
} catch {
    Write-Host "❌ 错误: npm 未安装" -ForegroundColor Red
    exit 1
}

# 安装依赖（如果 node_modules 不存在）
if (!(Test-Path "node_modules")) {
    Write-Host "📦 安装依赖..." -ForegroundColor Yellow
    npm install
    if ($LASTEXITCODE -ne 0) {
        Write-Host "❌ 依赖安装失败" -ForegroundColor Red
        exit 1
    }
    Write-Host "✅ 依赖安装完成" -ForegroundColor Green
} else {
    Write-Host "✅ 依赖已存在" -ForegroundColor Green
}

# 启动开发服务器
Write-Host "🌐 启动开发服务器..." -ForegroundColor Cyan
Write-Host "📱 应用将在 http://localhost:3000 启动" -ForegroundColor Cyan
Write-Host "🔗 在Telegram中测试前，请确保应用已部署到公网域名" -ForegroundColor Yellow
Write-Host ""
Write-Host "按 Ctrl+C 停止服务器" -ForegroundColor Gray
Write-Host ""

npm run dev
