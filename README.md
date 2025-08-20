# Black Myth: Zhong Kui - Fan Site

A responsive, SEO-optimized landing page for the upcoming game "Black Myth: Zhong Kui".

## Features

- 🎮 Responsive design for all devices
- 🎥 YouTube video embedding
- 🔍 SEO optimized with proper meta tags
- 📱 Mobile-first approach
- ⚡ Fast loading with pure HTML/CSS/JS
- 🎨 Modern, attractive design
- 📖 Rich content about the game

## Setup Instructions

### 1. Local Development
```bash
# Clone the repository
git clone https://github.com/yourusername/black-myth-zhongkui-site.git
cd black-myth-zhongkui-site

# Open in browser
open index.html
```

### 2. Update YouTube Video ID
- Open `index.html`
- Find the iframe with `src="https://www.youtube.com/embed/VIDEO_ID_HERE"`
- Replace `VIDEO_ID_HERE` with the actual YouTube video ID
- Example: If your YouTube URL is `https://www.youtube.com/watch?v=abc123`, use `abc123`

### 3. Deploy to GitHub

```bash
# Initialize git repository
git init

# Add all files
git add .

# Commit changes
git commit -m "Initial commit: Black Myth Zhong Kui landing page"

# Add remote origin (replace with your GitHub username and repo name)
git remote add origin https://github.com/yourusername/black-myth-zhongkui-site.git

# Push to GitHub
git push -u origin main
```

### 4. Enable GitHub Pages
1. Go to your GitHub repository
2. Click on "Settings"
3. Scroll down to "Pages" section
4. Under "Source", select "Deploy from a branch"
5. Choose "main" branch and "/ (root)" folder
6. Click "Save"
7. Your site will be available at `https://username.github.io/repository-name`

### 5. Deploy to Cloudflare

#### Option A: Connect GitHub Repository
1. Log in to [Cloudflare Dashboard](https://dash.cloudflare.com/)
2. Go to "Pages" section
3. Click "Create a project"
4. Choose "Connect to Git"
5. Select your GitHub repository
6. Configure build settings:
   - Build command: Leave empty (not needed for static site)
   - Build output directory: Leave empty
   - Root directory: Leave empty
7. Click "Save and Deploy"

#### Option B: Manual Upload
1. Download your site files from GitHub
2. In Cloudflare Pages, choose "Direct Upload"
3. Upload the ZIP file of your site
4. Deploy

### 6. Connect Custom Domain
1. In Cloudflare Pages project settings, go to "Custom domains"
2. Add your domain: `blackmythzhongkui.site`
3. Update DNS records if needed
4. Enable HTTPS (Cloudflare handles this automatically)

## File Structure

```
├── index.html          # Main HTML file
├── styles.css          # CSS styles
├── script.js           # JavaScript functionality
├── README.md           # This file
└── .gitignore          # Git ignore file
```

## Customization

### Colors
The main color scheme uses:
- Primary: #ffd700 (Gold)
- Secondary: #1a1a2e (Dark Blue)
- Accent: #16213e (Medium Blue)

### Content Updates
- Edit `index.html` to update text content
- Modify `styles.css` for design changes
- Update `script.js` for functionality changes

### SEO Optimization
- Update meta tags in `index.html`
- Modify title and description
- Add Open Graph tags for social sharing
- Update keywords as needed

## Future Enhancements

- [ ] React.js migration
- [ ] Database integration
- [ ] User comments system
- [ ] Newsletter signup
- [ ] Social media integration
- [ ] Game news feed
- [ ] Image gallery
- [ ] Contact form

## SEO Features

- Semantic HTML structure
- Meta tags optimization
- Open Graph tags
- Proper heading hierarchy (H1-H6)
- Alt text for images
- Structured data markup ready
- Mobile-friendly design
- Fast loading times

## Browser Support

- Chrome (latest)
- Firefox (latest)
- Safari (latest)
- Edge (latest)
- Mobile browsers (iOS Safari, Chrome Mobile)

## Performance

- Optimized CSS with minimal redundancy
- Efficient JavaScript with event delegation
- Responsive images and layouts
- Minimal external dependencies
- Fast loading times

## License

This project is for educational/fan purposes. All game content and trademarks belong to their respective owners.

## Contributing

Feel free to submit issues and enhancement requests!

## Troubleshooting

### Common Issues

1. **YouTube video not showing**
   - Check if video ID is correct
   - Ensure video is public and embeddable

2. **Styles not loading**
   - Check file paths in HTML
   - Verify CSS file exists

3. **GitHub Pages not updating**
   - Wait a few minutes for deployment
   - Check GitHub Actions for build status

4. **Cloudflare deployment issues**
   - Verify repository connection
   - Check build logs for errors

### Support

For technical issues, check:
- GitHub Issues
- Cloudflare Community
- Browser developer tools console
