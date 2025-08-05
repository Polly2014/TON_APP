#!/bin/bash

# TON Telegram Mini App 启动脚本

echo "🚀 启动 TON Telegram Mini App..."

# 检查 Node.js 是否安装
if ! command -v node &> /dev/null; then
    echo "❌ 错误: Node.js 未安装"
    echo "请访问 https://nodejs.org/ 安装 Node.js"
    exit 1
fi

# 检查 npm 是否安装
if ! command -v npm &> /dev/null; then
    echo "❌ 错误: npm 未安装"
    exit 1
fi

echo "✅ Node.js 版本: $(node --version)"
echo "✅ npm 版本: $(npm --version)"

# 安装依赖（如果 node_modules 不存在）
if [ ! -d "node_modules" ]; then
    echo "📦 安装依赖..."
    npm install
    if [ $? -ne 0 ]; then
        echo "❌ 依赖安装失败"
        exit 1
    fi
    echo "✅ 依赖安装完成"
else
    echo "✅ 依赖已存在"
fi

# 启动开发服务器
echo "🌐 启动开发服务器..."
echo "📱 应用将在 http://localhost:3000 启动"
echo "🔗 在Telegram中测试前，请确保应用已部署到公网域名"
echo ""
echo "按 Ctrl+C 停止服务器"
echo ""

npm run dev
