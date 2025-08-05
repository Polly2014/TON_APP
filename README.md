# TON Telegram Mini App

[![Deploy to Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https://github.com/Polly2014/TON_APP)
[![Deploy to Netlify](https://www.netlify.com/img/deploy/button.svg)](https://app.netlify.com/start/deploy?repository=https://github.com/Polly2014/TON_APP)

一个基于TON区块链的Telegram小程序，提供钱包连接、余额查询和转账功能。

## 🌟 功能特色

- 🔗 **TON Connect集成** - 安全连接TON钱包
- 💰 **余额查询** - 实时查看TON余额  
- 💸 **转账功能** - 快速发送TON代币
- 📱 **Telegram优化** - 完美适配Telegram Web App环境
- 🎨 **响应式设计** - 支持各种屏幕尺寸

## 🚀 在线演示

- **Live Demo**: [https://ton-app-demo.vercel.app](https://ton-app-demo.vercel.app)
- **Telegram Bot**: [@YourTONBot](https://t.me/YourTONBot)

## 📱 快速开始

### 本地运行

```bash
# 克隆项目
git clone https://github.com/Polly2014/TON_APP.git
cd TON_APP

# 安装依赖
npm install

# 启动开发服务器
npm start
```

访问 `http://localhost:3000` 查看应用。

### 一键部署

点击下面的按钮快速部署：

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https://github.com/Polly2014/TON_APP)

## 🛠️ 技术栈

- **前端**: HTML5, CSS3, JavaScript (ES6+)
- **区块链**: TON Blockchain
- **钱包连接**: TON Connect UI v2.0
- **平台**: Telegram Web App API

## 📖 使用指南

### 1. 配置TON API

编辑 `public/index.html`，替换API密钥：

```javascript
'X-API-Key': 'your-api-key-here' // 在 toncenter.com 获取
```

### 2. 更新Manifest

编辑 `public/tonconnect-manifest.json`：

```json
{
    "url": "https://your-domain.com",
    "name": "你的应用名称",
    "iconUrl": "https://your-domain.com/icon.png"
}
```

### 3. 配置Telegram Bot

1. 与 [@BotFather](https://t.me/botfather) 对话
2. 创建新Bot: `/newbot`
3. 创建Web App: `/newapp`
4. 设置Web App URL为你的部署地址

## 📂 项目结构

```
TON_APP/
├── public/
│   ├── index.html                  # 主应用文件
│   └── tonconnect-manifest.json    # TON Connect配置
├── package.json                    # 项目配置
├── README.md                       # 项目文档
└── DEPLOYMENT.md                   # 部署指南
```

## 🔧 开发

### 本地开发

```bash
# 启动开发服务器
npm run dev

# 构建项目
npm run build
```

### 部署

支持多种部署方式：

- **Vercel**: 推荐，支持自动部署
- **Netlify**: 简单易用
- **GitHub Pages**: 免费托管

详细部署指南请查看 [DEPLOYMENT.md](DEPLOYMENT.md)

## 🤝 贡献

欢迎贡献代码！请查看 [贡献指南](CONTRIBUTING.md)

1. Fork 项目
2. 创建功能分支 (`git checkout -b feature/amazing-feature`)
3. 提交更改 (`git commit -m 'Add amazing feature'`)
4. 推送到分支 (`git push origin feature/amazing-feature`)
5. 开启 Pull Request

## 📄 许可证

本项目采用 MIT 许可证 - 查看 [LICENSE](LICENSE) 文件了解详情。

## 🔗 相关链接

- [TON区块链官方文档](https://ton.org/docs/)
- [TON Connect文档](https://docs.ton.org/develop/dapps/ton-connect/)
- [Telegram Bot API](https://core.telegram.org/bots/api)
- [Telegram Web Apps](https://core.telegram.org/bots/webapps)

## 📞 支持

如果你遇到问题或有任何建议，请：

- 在 [GitHub Issues](https://github.com/Polly2014/TON_APP/issues) 中提交问题
- 发送邮件至 26716201@qq.com
- 在 [Discussions](https://github.com/Polly2014/TON_APP/discussions) 中讨论

---

⭐ 如果这个项目对你有帮助，请给它一个星标！
