#!/bin/bash

# Black Myth: Zhong Kui Site Deployment Script
# This script helps you deploy your site to GitHub and prepare for Cloudflare

echo "🚀 Black Myth: Zhong Kui Site Deployment Script"
echo "================================================"

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install Git first."
    exit 1
fi

# Check if we're in a git repository
if [ ! -d ".git" ]; then
    echo "📁 Initializing Git repository..."
    git init
    echo "✅ Git repository initialized"
else
    echo "✅ Git repository already exists"
fi

# Add all files
echo "📝 Adding files to Git..."
git add .

# Check if there are changes to commit
if git diff --staged --quiet; then
    echo "ℹ️  No changes to commit"
else
    echo "💾 Committing changes..."
    git commit -m "Update: Black Myth Zhong Kui site $(date '+%Y-%m-%d %H:%M:%S')"
    echo "✅ Changes committed"
fi

# Check if remote origin exists
if ! git remote get-url origin &> /dev/null; then
    echo "🔗 Please add your GitHub repository as remote origin:"
    echo "   git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git"
    echo ""
    echo "   Then run this script again."
    exit 1
fi

# Push to GitHub
echo "🚀 Pushing to GitHub..."
if git push origin main; then
    echo "✅ Successfully pushed to GitHub"
else
    echo "❌ Failed to push to GitHub. Please check your credentials and try again."
    exit 1
fi

echo ""
echo "🎉 Deployment to GitHub completed!"
echo ""
echo "📋 Next steps:"
echo "1. Go to your GitHub repository"
echo "2. Go to Settings > Pages"
echo "3. Select 'Deploy from a branch'"
echo "4. Choose 'main' branch and '/' folder"
echo "5. Click Save"
echo ""
echo "🌐 For Cloudflare deployment:"
echo "1. Go to Cloudflare Dashboard > Pages"
echo "2. Create a new project"
echo "3. Connect to your GitHub repository"
echo "4. Deploy with default settings"
echo "5. Add custom domain: blackmythzhongkui.site"
echo ""
echo "🔗 Your site will be available at:"
echo "   GitHub Pages: https://YOUR_USERNAME.github.io/YOUR_REPO_NAME"
echo "   Custom Domain: https://blackmythzhongkui.site (after Cloudflare setup)"
echo ""
echo "✨ Happy gaming!"
