<?php
class PublicAction extends Action{

    /*
     * 验证码类
     */
    public function code(){
        $w=isset($_GET['w'])?$_GET['w']:30;
        $h=isset($_GET['h'])?$_GET['h']:30;
        import('ORG.Util.Image');
        Image::buildImageVerify(4,1,'png',$w,$h,'code');
    }



    public function fenlei(){
         $d=M('dict');
         $where=array("type"=>"testgp","state"=>"正常");
         $dgps=$d->field('k,v',false)->where($where)->select();
        foreach (  $dgps as $dic       ){
           $a= $dic.k.$dic.v;
        }
      return $a;
    }

}