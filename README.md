# PhotoGallery
A full-stack photo gallery website. My first full-stack web development project.

## Features

### 📸 Gallery Management
- Multiple gallery categories including:
  - Nature Photography
  - Portrait Photography
  - Sports Photography
  - Travel Photography
- Lightbox image viewing with zoom capabilities
- Image lazy loading for optimal performance
- Thumbnail generation and management
- Image metadata management (title, description, date)

### ⚙️ Admin Panel (nedmin)
- Secure authentication system
- Dashboard with statistics and overview
- Content Management:
  - Upload and organize photos
  - Create and manage gallery categories
  - Edit photo information and metadata
  - Manage slider content
  - Sort and arrange photos
- User Management:
  - Create and manage admin users
  - Role-based access control
  - User activity logging
- Site Settings:
  - Logo management
  - Contact information

### 🎨 Frontend Features
- Responsive Design:
  - Mobile-first approach
  - Adapts to all screen sizes
  - Touch-friendly navigation
- Dynamic Image Loading:
  - Progressive image loading
  - Optimized for fast page loads
  - Automatic image resizing
- Interactive Elements:
  - Smooth scrolling animations
  - Image hover effects
  - Category filtering

### 🎯 Gallery Categories
- Organized category system
- Category-specific settings:
  - Custom layouts
  - Unique descriptions
  - Category thumbnails


### 📱 User Experience
- Fast loading times
- Intuitive navigation
- Search functionality
- Social media sharing

### 🔧 Technical Features
- SEO Optimized:
  - Meta tags management
  - XML sitemap
  - Clean URLs
- Security Features:
  - SQL injection protection
  - XSS prevention
  - CSRF protection
  - Secure file upload handling
- Performance Optimizations:
  - Image compression
  - Caching system
  - Minified assets
  - Database optimization

### 📊 Additional Features
- Multi-language support capability
- Backup system
- Error logging
- Analytics integration
- Custom 404 error page
- Maintenance mode option


## Technologies Used

- PHP
- MySQL
- Bootstrap
- jQuery
- CSS3/SCSS
- Font Awesome
- Various JavaScript libraries:
  - AOS (Animate On Scroll)
  - Owl Carousel
  - Light Gallery
  - Swiper
  - And more

## Installation

1. Clone the repository
2. Import the database file from `sql/projectphoto.sql`
3. Configure the database connection in `nedmin/netting/baglan.php`
4. Place the project in your web server directory
5. Access the website through your local server

## Admin Panel

Access the admin panel through `/nedmin`:
- Manage photos
- Add/edit categories
- Manage users
- Control slider content
- View and manage site settings

## Directory Structure

- `nedmin/` - Admin panel and backend management
- `images/` - Image assets
- `css/` - Stylesheet files
- `js/` - JavaScript files
- `scss/` - SASS source files
- `sql/` - Database file
- Various PHP files for different gallery categories and pages

## Requirements

- PHP 7.0 or higher
- MySQL 5.6 or higher
- Apache/Nginx web server
- mod_rewrite enabled (for clean URLs)


## Credits
- Bootstrap
- jQuery
- Font Awesome
- All other third-party libraries used in this project

## Contact

goralanil@gmail.com
