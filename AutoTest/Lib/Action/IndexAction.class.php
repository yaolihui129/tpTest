<?php

class IndexAction extends CommonAction {
    public function index(){
    	//var_dump($_SESSION);

	     $this->display();
    }


    function top() {
        $this->display();
    }

    function menu() {

        $this->display();
    }

    public  function test(){
        $ip= get_client_ip();
        //echo $ip;
        $this->assign('ip',$ip);
        $this->display();
    }

}