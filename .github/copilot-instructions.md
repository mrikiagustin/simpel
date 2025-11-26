# SIMPEL - CodeIgniter Project Guidelines

## Project Overview
SIMPEL is a laboratory information management system (LIMS) built with **CodeIgniter 3.x** and PHP. The application manages laboratory testing requests ("permohonan"), samples, test parameters, and generates reports in PDF/Word formats.

**Base URL**: `http://simpel.test/` (configured in `application/config/config.php`)  
**Default Controller**: `work/permohonan` (see `application/config/routes.php`)

## Architecture

### HMVC Module Structure (Modular Extensions)
This project uses **Wiredesignz Modular Extensions HMVC** for CodeIgniter, enabling modular organization:

- **Core Extension**: `application/core/MY_Loader.php` loads MX_Loader from `application/third_party/MX/`
- **Module Location**: All modules live in `application/modules/`
- **Module Structure**: Each module contains its own `controllers/`, `models/`, `views/` subdirectories

**Key Modules**:
- `work/` - Main workflow controllers (permohonan, hasil, kontrak, hp)
- `portal/` - Portal-facing controllers for requests and submissions
- `master/` - Master data management (paket, parameter_pengujian, pelanggan, metode, kemasan, kondisi, satuan)
- `setting/` - Configuration management (counter, lhp, pengantar_contoh)
- `administration/` - Administrative functions
- `rekap/` - Reporting and recapitulation

### Custom Base Classes
- **MY_Model** (`application/core/MY_Model.php`): Base model with filtering, pagination, soft deletes (via `deleted_at`), keyword search across `like` fields
- **MY_Loader**: Extends MX_Loader for HMVC support
- **Page Library** (`application/libraries/Page.php`): Custom template management with `use_directory()`, `view()`, `view2()` methods

### URL Routing Pattern
Controllers using directories MUST call `$this->page->use_directory()` in constructor to properly set base URLs:
```php
function __construct() {
    parent::__construct();
    $this->page->use_directory(); // Required for modules
}
```

## Database Patterns

### Soft Deletes
Models inheriting from MY_Model automatically filter out soft-deleted records where `deleted_at IS NULL`. To include deleted records, set `$this->deleted_at = false` in your model.

### Common Tables
- `permohonan` - Laboratory test requests (main entity)
- `permohonan_detail` - Request line items (samples)
- `permohonan_detail_parameter` - Test parameters per sample
- `permohonan_detail_metode` - Test methods per sample
- `parameter_pengujian` - Available test parameters
- `paket` - Test parameter packages
- `paket_detail` - Package compositions
- `metode` - Test methods
- `pelanggan` - Customers
- `setting_kop`, `setting_permohonan` - Report header/footer configurations
- `menu`, `menu_access` - Dynamic navigation system

### Database Configuration
Located in `application/config/database.php`:
- Host: `localhost:13306` (custom port for Laragon MySQL)
- Database: `simpel`
- Credentials: `root/123456`

## Key Libraries & Dependencies

### Grocery CRUD
Heavy use of **Grocery CRUD** library for rapid CRUD interfaces:
```php
$crud = new grocery_CRUD();
$crud->set_table('table_name');
$crud->set_subject('Display Name');
$crud->callback_add_field('field_name', array($this, 'callback_method'));
```

**Custom Callbacks**:
- `callback_before_insert`, `callback_after_insert`
- `callback_before_update`, `callback_after_update`
- `callback_add_field`, `callback_edit_field` - for complex form fields
- `callback_column` - for custom column rendering

### Document Generation
- **PhpWord** (via Composer): Generate Word documents from templates (`application/third_party/vendor/phpoffice/phpword`)
- **TCPDF** (helper): Generate PDFs with custom headers/footers (`application/helpers/tcpdf/`)
  - Helper function: `init_pdf($orientation, $unit, $format, $unicode, $encoding, $diskcache, $print_header)`
  - Custom page sizes: `array(width_mm, height_mm)`

### Frontend
- **AdminLTE 2.x**: Main admin template (`assets/AdminLTE/`)
- **Select2**: Enhanced select boxes
- **jQuery UI Datepicker**: Indonesian localization via `jquery.ui.datepicker-id.js`
- **CKEditor**: Rich text editing for `hasil_kaji_ulang` fields

## Common Development Patterns

### Controller Template Rendering
Two rendering methods in Page library:
```php
// Method 1: Load view directly (legacy)
$this->page->view('view_name', $data);

// Method 2: Load view as string, pass to template (preferred for Grocery CRUD)
$output = $crud->render();
$c = $this->load->view('view_name', (array)$output, true);
$this->page->view2($c);
```

### Master-Detail Form Pattern
See `portal/permohonan::detail()` for canonical implementation:
1. Generate HTML table with master row + dynamic detail rows
2. Use JavaScript to clone rows (`.master_detail`, `.master_detail2` classes)
3. Array-based naming: `name="det[0][field]"`, `name="det[0][pengujian][0][param]"`
4. Hidden fields track existing records: `name="det[0][hidden_id]"` (value "z" = new record)
5. On update: delete orphaned details, insert new, update existing

### Helper Functions
`application/helpers/riki_helper.php` contains project-specific utilities:
- `tgl_indo($tanggal)` - Format dates as Indonesian locale
- `MyOptions` class - Generate HTML `<select>` elements from database queries
- `MyOptionsData` class - Advanced select generation with grouping

### Database Query Builder Patterns
Common patterns in controllers:
```php
// Join with aliases
$this->db->join("satuan", "satuan.id_satuan = det.satuan");
$this->db->select("det.*, satuan.satuan");
$this->db->where("det.id_permohonan", $id);
$result = $this->db->get("permohonan_detail det")->result();

// Nested loops for hierarchical data
foreach ($main_data->mdetail as $i => $v) {
    $v->mpengujian = $this->db->get_where("permohonan_detail_parameter", 
        ["id_permohonan_detail" => $v->id_permohonan_detail])->result();
}
```

## Environment & Deployment

### Local Development (Laragon)
- Environment: Set `ENVIRONMENT` constant in `index.php` (currently: `'production'`)
- Error reporting: Suppressed in production, visible in development
- Virtual host: `simpel.test` (Laragon auto-configuration)
- Mod_rewrite enabled: `$config['index_page'] = '';` (no `index.php` in URLs)

### Docker Support
Docker Compose configuration available (`docker-compose.yaml`):
- **web**: PHP/Apache container (port 8080)
- **db**: MySQL 5.7 (internal networking)
- **phpmyadmin**: Database management UI (port 8081)

### Autoloading
Configured in `application/config/autoload.php`:
- Libraries: `database`, `session`, `page`
- Helpers: `url`, `riki`

## Security Notes
- CSRF protection: Currently DISABLED (`$config['csrf_protection'] = FALSE`)
- XSS filtering: Global filtering DISABLED (handle per-input)
- Session: File-based, 2-hour expiration
- Database: Prepared statements via Query Builder (secure by default)

## Testing & Quality
- PHPUnit configured in `tests/` (see `tests/phpunit.xml`)
- SQL backup files suggest active database versioning (multiple `.sql` files in root)

## Navigation System
Dynamic menu loaded from database (`menu` table) with role-based access control:
- Menu structure: `parent_menu` field creates hierarchy
- Access control: `menu_access` table filters by `id_role`
- Active state: Matches `$this->router->fetch_module()` and `fetch_class()`

## Common Pitfalls
1. **Forgetting `use_directory()`**: Controllers in modules MUST call this in constructor
2. **Array indexing in forms**: Grocery CRUD callbacks must preserve numeric array keys for detail arrays
3. **Hidden field convention**: Use `"z"` string value to mark new records vs. existing IDs
4. **Template variable**: Check `$zxc` variable to determine rendering method (`1` = load view, `2` = echo string)
5. **Custom port**: Database runs on port `13306`, not default `3306`

## Key Files for AI Context
- `application/config/routes.php` - Default controller and routing rules
- `application/core/MY_Model.php` - Base model patterns
- `application/libraries/Page.php` - Template rendering logic
- `application/helpers/riki_helper.php` - Project utilities
- `application/modules/portal/controllers/permohonan.php` - Reference implementation (1099 lines, master-detail CRUD)
- `application/views/templates/admin_tpl.php` - Main layout template
