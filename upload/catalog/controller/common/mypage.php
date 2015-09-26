<?php
Class ControllerCommonMypage extends Controller {
	public function index() {
		$this->load->language('common/mypage');

		$this->document->setTitle($this->language->get('page_title'));
		$this->document->setDescription($this->language->get('page_description'));
		$this->document->setKeywords($this->language->get('page_keywords'));

		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/mypage.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/common/mypage.tpl', $data));
		} else {
			$this->response->redirect($this->url->link('common/home'));
		}
	}
}