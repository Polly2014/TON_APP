# Contributing to TON Telegram Mini App

感谢你对TON Telegram Mini App项目的贡献兴趣！

## 🚀 如何贡献

### 报告Bug

如果你发现了bug，请在 [GitHub Issues](https://github.com/Polly2014/TON_APP/issues) 中创建一个新的issue，并包含以下信息：

- 详细的bug描述
- 重现步骤
- 期望的行为
- 实际的行为
- 屏幕截图（如果适用）
- 浏览器和操作系统信息

### 功能请求

我们欢迎新功能的建议！请在 [GitHub Issues](https://github.com/Polly2014/TON_APP/issues) 中创建一个feature request，包含：

- 功能的详细描述
- 使用场景
- 为什么这个功能有用
- 可能的实现方案

### 代码贡献

1. **Fork项目**
   ```bash
   # 点击GitHub页面右上角的Fork按钮
   ```

2. **克隆你的Fork**
   ```bash
   git clone https://github.com/你的用户名/TON_APP.git
   cd TON_APP
   ```

3. **创建功能分支**
   ```bash
   git checkout -b feature/your-feature-name
   ```

4. **进行开发**
   - 遵循现有的代码风格
   - 添加必要的注释
   - 确保代码的可读性

5. **测试你的更改**
   ```bash
   npm install
   npm start
   ```

6. **提交更改**
   ```bash
   git add .
   git commit -m "Add your feature description"
   ```

7. **推送到你的Fork**
   ```bash
   git push origin feature/your-feature-name
   ```

8. **创建Pull Request**
   - 在GitHub上访问你的Fork
   - 点击"New Pull Request"
   - 填写详细的描述

## 📝 代码规范

### JavaScript

- 使用ES6+语法
- 使用驼峰命名法
- 添加适当的注释
- 保持函数简洁

### HTML/CSS

- 使用语义化的HTML标签
- CSS类名使用kebab-case
- 保持代码整洁和可读性

### 提交信息

使用清晰的提交信息：

```
type(scope): description

[optional body]

[optional footer]
```

类型：
- `feat`: 新功能
- `fix`: Bug修复
- `docs`: 文档更新
- `style`: 代码格式化
- `refactor`: 代码重构
- `test`: 测试
- `chore`: 构建过程或辅助工具的变动

## 🧪 测试

确保你的更改不会破坏现有功能：

1. 本地测试应用
2. 测试钱包连接功能
3. 测试余额查询功能
4. 测试转账功能
5. 测试在不同设备上的响应性

## 📖 文档

如果你的贡献涉及到：
- 新功能：更新README.md
- API变更：更新相关文档
- 配置变更：更新配置说明

## 🤔 需要帮助？

如果你在贡献过程中遇到问题：

- 查看现有的 [Issues](https://github.com/Polly2014/TON_APP/issues)
- 在 [Discussions](https://github.com/Polly2014/TON_APP/discussions) 中提问
- 发送邮件至 26716201@qq.com

## 🎯 优先贡献领域

我们特别欢迎以下方面的贡献：

- 🔐 安全性改进
- 🎨 UI/UX优化
- 📱 移动端适配
- 🌐 国际化支持
- 🧪 测试覆盖
- 📚 文档改进
- ⚡ 性能优化

## 📋 Pull Request检查清单

在提交PR之前，请确保：

- [ ] 代码遵循项目的编码规范
- [ ] 所有测试都通过
- [ ] 添加了必要的文档
- [ ] 提交信息清晰明确
- [ ] 没有不相关的文件被提交
- [ ] 与现有功能兼容

感谢你的贡献！🙏
