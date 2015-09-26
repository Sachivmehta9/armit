<?php
class ControllerModuleMagikpolo extends Controller {
    private $error = array(); // This is used to set the errors, if any.
 
    public function index() {
        // Loading the language file of magikpolo
        $this->load->language('module/magikpolo'); 
     
        // Set the title of the page to the heading title in the Language file i.e., Hello World
        $this->document->setTitle(strip_tags($this->language->get('heading_title')));
     
        // Load the Setting Model  (All of the OpenCart Module & General Settings are saved using this Model )
        $this->load->model('setting/setting');
     
        // Start If: Validates and check if data is coming by save (POST) method
        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {

            // Parse all the coming data to Setting Model to save it in database.

            $this->model_setting_setting->editSetting('magikpolo', $this->request->post);
     
            // To display the success text on data save
            $this->session->data['success'] = $this->language->get('text_success');
     
            // Redirect to the Module Listing
            $this->response->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
        }
     
        // Assign the language data for parsing it to view
        $data['heading_title'] = $this->language->get('heading_title');
     
        $data['text_edit']    = $this->language->get('text_edit');
        $data['text_yes']    = $this->language->get('text_yes');
        $data['text_no']    = $this->language->get('text_no');
        $data['text_enabled'] = $this->language->get('text_enabled');
        $data['text_disabled'] = $this->language->get('text_disabled');
        $data['text_content_top'] = $this->language->get('text_content_top');
        $data['text_content_bottom'] = $this->language->get('text_content_bottom');      
        $data['text_column_left'] = $this->language->get('text_column_left');
        $data['text_column_right'] = $this->language->get('text_column_right');
     
        $data['entry_code'] = $this->language->get('entry_code');
        $data['entry_layout'] = $this->language->get('entry_layout');
        $data['entry_position'] = $this->language->get('entry_position');
        $data['entry_status'] = $this->language->get('entry_status');
        $data['entry_sort_order'] = $this->language->get('entry_sort_order');
     
        $data['button_save'] = $this->language->get('button_save');
        $data['button_cancel'] = $this->language->get('button_cancel');
        $data['button_add_module'] = $this->language->get('button_add_module');
        $data['button_remove'] = $this->language->get('button_remove');
         
        // This Block returns the warning if any
        if (isset($this->error['warning'])) {
            $data['error_warning'] = $this->error['warning'];
        } else {
            $data['error_warning'] = '';
        }
     
        // This Block returns the error code if any
        if (isset($this->error['code'])) {
            $data['error_code'] = $this->error['code'];
        } else {
            $data['error_code'] = '';
        }     
     
        // Making of Breadcrumbs to be displayed on site
        $data['breadcrumbs'] = array();
        $data['breadcrumbs'][] = array(
            'text'      => $this->language->get('text_home'),
            'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => false
        );
        $data['breadcrumbs'][] = array(
            'text'      => $this->language->get('text_module'),
            'href'      => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => ' :: '
        );
        $data['breadcrumbs'][] = array(
            'text'      => $this->language->get('heading_title'),
            'href'      => $this->url->link('module/magikpolo', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => ' :: '
        );
          
        $data['action'] = $this->url->link('module/magikpolo', 'token=' . $this->session->data['token'], 'SSL'); // URL to be directed when the save button is pressed
     
        $data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'); // URL to be redirected when cancel button is pressed
              
        // This block checks, if the hello world text field is set it parses it to view otherwise get the default 
        // hello world text field from the database and parse it
        
$config_data = array(
        
        'magikpolo_address',
        'magikpolo_phone',
        'magikpolo_email',
        'magikpolo_fb',
        'magikpolo_twitter',
        'magikpolo_gglplus',
        'magikpolo_rss',
        'magikpolo_pinterest',
        'magikpolo_linkedin',
        'magikpolo_youtube',
        'magikpolo_powerby',
        'magikpolo_home_option',
        'magikpolo_quickview_button',
        'magikpolo_scroll_totop',
        'magikpolo_sale_label',
        'magikpolo_sale_labeltitle',
        'magikpolo_sale_labelcolor',
        'magikpolo_menubar_cb',
        'magikpolo_menubar_cbtitle',
        'magikpolo_menubar_cbcontent',
        'magikpolo_vmenubar_cb',
        'magikpolo_vmenubar_cbtitle',
        'magikpolo_vmenubar_cbcontent',
        'magikpolo_product_ct',
        'magikpolo_product_cttitle',
        'magikpolo_product_ctcontent',
        'magikpolo_product_ct2',
        'magikpolo_product_ct2title',
        'magikpolo_product_ct2content',
        'magikpolo_newsletter',
        'magikpolo_newslettercontent',
        'magikpolo_footer_cb',
        'magikpolo_footer_cbcontent',
        'magikpolo_body_bg',
        'magikpolo_body_bg_ed',
        'magikpolo_fontcolor',
        'magikpolo_fontcolor_ed',
        'magikpolo_linkcolor',
        'magikpolo_linkcolor_ed',
        'magikpolo_linkhovercolor',
        'magikpolo_linkhovercolor_ed',
        'magikpolo_headerbg',
        'magikpolo_headerbg_ed',
        'magikpolo_headerlinkcolor',
        'magikpolo_headerlinkcolor_ed',
        'magikpolo_headerlinkhovercolor',
        'magikpolo_headerlinkhovercolor_ed',
        'magikpolo_headerclcolor',
        'magikpolo_headerclcolor_ed',
        'magikpolo_mmbgcolor',
        'magikpolo_mmbgcolor_ed',
        'magikpolo_mmlinkscolor',
        'magikpolo_mmlinkscolor_ed',
        'magikpolo_mmlinkshovercolor',
        'magikpolo_mmlinkshovercolor_ed',
        'magikpolo_mmslinkscolor',
        'magikpolo_mmslinkscolor_ed',
        'magikpolo_mmslinkshovercolor',
        'magikpolo_mmslinkshovercolor_ed',
        'magikpolo_buttoncolor',
        'magikpolo_buttoncolor_ed',
        'magikpolo_buttonhovercolor',
        'magikpolo_buttonhovercolor_ed',
        'magikpolo_pricecolor',
        'magikpolo_pricecolor_ed',
        'magikpolo_oldpricecolor',
        'magikpolo_oldpricecolor_ed',
        'magikpolo_newpricecolor',
        'magikpolo_newpricecolor_ed',
        'magikpolo_footerbg',
        'magikpolo_footerbg_ed',
        'magikpolo_footerlinkcolor',
        'magikpolo_footerlinkcolor_ed',
        'magikpolo_footerlinkhovercolor',
        'magikpolo_footerlinkhovercolor_ed',
        'magikpolo_powerbycolor',
        'magikpolo_powerbycolor_ed',
        'magikpolo_fonttransform',
        'magikpolo_productpage_cb',
        'magikpolo_productpage_cbcontent',
        'magikpolo_headercb_ed',
        'magikpolo_headercb_content',
        'magikpolo_footer_fb',
        'magikpolo_footer_fbcontent',
        'magikpolo_animation_effect'
        );

foreach ($config_data as $conf) {
            if (isset($this->request->post[$conf])) {
                $data[$conf] = $this->request->post[$conf];
                
            } else {
                $data[$conf] = $this->config->get($conf);

            }
        } 

 
   
        $data['header'] = $this->load->controller('common/header');
        $data['column_left'] = $this->load->controller('common/column_left');
        $data['footer'] = $this->load->controller('common/footer');

        $this->response->setOutput($this->load->view('module/magikpolo.tpl', $data));

    }

    /* Function that validates the data when Save Button is pressed */
    protected function validate() {
 
        // Block to check the user permission to manipulate the module
        if (!$this->user->hasPermission('modify', 'module/magikpolo')) {
            $this->error['warning'] = $this->language->get('error_permission');
        }
 
        /* End Block*/
 
        // Block returns true if no error is found, else false if any error detected
        if (!$this->error) {
            return true;
        } else {
            return false;
        }
    }
}