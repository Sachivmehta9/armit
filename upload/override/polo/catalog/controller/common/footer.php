<?php
class polo_ControllerCommonFooter extends ControllerCommonFooter {

public function preRender( $template_buffer, $template_name, &$data ) {
        if ($template_name != $this->config->get('config_template').'/template/common/footer.tpl') {
            return parent::preRender( $template_buffer, $template_name, $data );
        }
       
        // add new controller variables

        $this->load->language( 'common/footer' );
        $data['text_follow_us'] = $this->language->get( 'text_follow_us' );

        $data['newslettersubscription'] = $this->load->controller('module/newslettersubscription');
        // call parent method
        return parent::preRender( $template_buffer, $template_name, $data );
    }
}