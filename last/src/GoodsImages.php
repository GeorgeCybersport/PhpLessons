<?php


namespace MyApp;


class GoodsImages
{
    private $config;

    public function __construct($config)
    {
        $this->config = $config;
    }
    public function getImagesUrls($id)
    {
        $dirPath=$this->config['dir'] . '/' . $id;
        $files=[];
        if (file_exists($dirPath)){
            $files = array_slice(scandir($dirPath), 2);
        }
        $urls=[];
        foreach ($files as $file){
            array_push($urls, $this->config['url'].'/'.$id.'/'.$file);
        }
        return $urls;
    }
}