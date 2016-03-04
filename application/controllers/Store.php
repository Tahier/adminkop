<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Store extends CI_Controller {

    public function __construct(){
        parent::__construct(); //inherit dari parent

        $this->load->model('product_model');
        $this->load->model('product_category_model');
    }
    
    function index(){
        redirect('store/l');
    }

    function l(){
        $data['page_name']          = 'Page Name';
        $data['page_sub_name']      = '';

        $keyword = $this->input->get('q');
        

        $data['keyword'] = NULL;
        if ($keyword) {
            $data['keyword'] = $keyword;
        }

        ///// START Setting Filter /////
        // STEP. 1 : Array nama alias dan syntax db
        $keyword_by = array(
            array(
                'alias'=>'semua',
                'parameter'=> array
                        (   
                            'produk.nama'   => $keyword,
                            'produk.desk'   => $keyword,
                            'produk.warna'  => $keyword,
                            'produk.tipe'   => $keyword,
                        ),
                ),
      
            array(
                'alias'     =>'nama',
                'parameter' =>'produk.nama',
                ),
            array(
                'alias'     =>'deskripsi',
                'parameter' =>'produk.desk',
                ),
            array(
                'alias'     =>'warna',
                'parameter' =>'produk.warna',
                ),
            array(
                'alias'     =>'tipe',
                'parameter' =>'produk.tipe',
                ),
            
        );


        $sort = array(
            array(
                'alias'     =>'produk terbaru',
                'parameter' =>'produk.service_time',
                ),
            array(
                'alias'     =>'harga',
                'parameter' =>'produk.price_n',
                ),
            
            );


        $sort_order = array(
            array(
                'alias'     =>'z-a',
                'parameter' =>'desc',
                ),
            array(
                'alias'     =>'a-z',
                'parameter' =>'asc',
                ),
        );

        // Filter

        $get_product_category = $this->product_category_model->get_all(NULL,NULL,NULL,NULL);
        $data['product_category'] = $get_product_category['data'];

        $filter_product_category = array(
        array(
            'alias'     =>'SEMUA KATEGORI',
            'parameter' =>NULL,
            )
        );

        foreach ($get_product_category['data'] as $k => $v) {
            array_push($filter_product_category, array(
                'alias'     => strtoupper($v['nama']),
                'parameter' => strtolower($v['id_kategori']),
            ));
        }

        

        
        // STEP. 2 : Masukan Array Filter ke Array Data

        $data['keyword_by'] = $keyword_by;
        $data['sort']       = $sort;
        $data['sort_order'] = $sort_order;
        // Filter
        $data['filter_product_category'] = $filter_product_category;


        // STEP. 3 : Proses Parsing array Alias dan parameter        

        $def_param_keyword_by = $keyword_by[0]['parameter'];
        $param_keyword_by   = strtolower($this->input->get('keyword_by'));
        $data['param_keyword_by'] = 'semua';
        if (isset($param_keyword_by)) {
            $data['param_keyword_by'] = $param_keyword_by;
            $key = array_search($param_keyword_by, array_column($keyword_by,'alias'));
            if ($key) {
                $param_keyword_by = $keyword_by[$key]['parameter'];
                $data['param_keyword_by'] = $keyword_by[$key]['alias'];
            } else{
                $param_keyword_by = $def_param_keyword_by;
            }
        }else{
            $param_keyword_by = $def_param_keyword_by;
        }
        

        $def_param_sort = 'produk.service_time';
        $param_sort         = strtolower($this->input->get('sort'));
        $data['param_sort'] = 'produk terbaru';
        if (isset($param_sort)) {
            $data['param_sort'] = $param_sort;
            $key = array_search($param_sort, array_column($sort,'alias'));
            if ($key) {
                $param_sort = $sort[$key]['parameter'];
                $data['param_sort'] = $sort[$key]['alias'];
            } else{
                $param_sort = $def_param_sort;
            }
        }else{
            $param_sort = $def_param_sort;
        }


        $def_param_sort_order = 'desc';
        $param_sort_order   = strtolower($this->input->get('sort_order'));
        $data['param_sort_order'] = 'z-a';
        if (isset($param_sort_order)) {
            $data['param_sort_order'] = $param_sort_order;
            $key = array_search($param_sort_order,array_column($sort_order,'alias'));
            if ($key) {
                $param_sort_order = $sort_order[$key]['parameter'];
                $data['param_sort_order'] = $sort_order[$key]['alias'];
            } else{
                $param_sort_order = $def_param_sort_order;
            }
        }else{
            $param_sort_order = $def_param_sort_order;
        }



        // Filter command
        $def_param_filter_product_category = $filter_product_category;
        $get_filter_product_category = $this->input->get('filter_product_category');
        $param_filter_product_category   = strtoupper($get_filter_product_category);
        $data['param_filter_product_category'] = $filter_product_category;
        if (isset($param_filter_product_category)) {
            $data['param_filter_product_category'] = $param_filter_product_category;
            $key = array_search($param_filter_product_category,array_column($filter_product_category,'alias'));
            if ($key) {
                $param_filter_product_category = $filter_product_category[$key]['parameter'];
                $data['param_filter_product_category'] = $filter_product_category[$key]['alias'];
            } else{
                $param_filter_product_category = $def_param_filter_product_category;
            }
        }else{
            $param_filter_product_category = $def_param_filter_product_category;
        }


        // STEP. 4 : Simpan hasil sbg parameter utk query di database 

        $param_query['keyword_by'] = $param_keyword_by;
        $param_query['sort']       = $param_sort;
        $param_query['sort_order'] = $param_sort_order;

        // Filter
        $param_query['filter_product_category']    = $param_filter_product_category;
        
        ///// END Setting Filter /////
 





        //Setting Pagination
        $this->load->library('pagination');
        $config['base_url']             = site_url('store/index');
        $config['reuse_query_string']   = TRUE;
        $config['use_page_numbers']     = FALSE;
        
        $config['per_page']     = 50; 
        $config['num_links']    = 10;
        $config['uri_segment']  = 3;

        $config['full_tag_open']    = "<ul class='pagination'>";
        $config['full_tag_close']   = "</ul>";
        $config['num_tag_open']     = '<li>';
        $config['num_tag_close']    = '</li>';
        $config['cur_tag_open']     = "<li class='disabled'><li class='active'><a href='#'>";
        $config['cur_tag_close']    = "<span class='sr-only'></span></a></li>";
        $config['next_tag_open']    = "<li>";
        $config['next_tagl_close']  = "</li>";
        $config['prev_tag_open']    = "<li>";
        $config['prev_tagl_close']  = "</li>";
        $config['first_tag_open']   = "<li>";
        $config['first_tagl_close'] = "</li>";
        $config['last_tag_open']    = "<li>";
        $config['last_tagl_close']  = "</li>";

        $limit = $config['per_page'];
        $offset = $this->uri->segment(3);

        //Load Data from Database
        $product = $this->product_model->get_all($keyword,$limit,$offset,$param_query);
        $data['product'] = NULL;
        if ($product['count']!=0) {
            $data['product'] = $product['data'];

        }

        
        $config['total_rows']   = $product['count_all'];
        $this->pagination->initialize($config); 
        $data['pagination'] = $this->pagination->create_links();

        $data['page_name']          = 'Product';
        $data['is_content_header']  = TRUE;
        $data['page']               = 'compro/store_list_view';
        $this->load->view('compro/main_view',$data);
    }

    function item($product_id){
        $product = $this->product_model->get($product_id);
        $data['product'] = NULL;
        if ($product!=FALSE) {
            $data['product'] = $product;
        }else{
            redirect('404');
        }

        //CEK APAKAH TELAH MASUK CART

        $cart_content = $this->cart->contents();
        $is_item_on_cart    = FALSE;
        if (!empty($cart_content)) {
            foreach ($cart_content as $k => $v) {
                if ($v['id']==$product_id) {
                    $is_item_on_cart    = TRUE;
                    $data['is_on_cart'] = TRUE;
                    $data['form_action_cart'] = base_url('store/cart_update');
                    $data['qty_item'] = $v['qty'];
                    $data['rowid'] = $k;
                }
            }
        }

        if ($is_item_on_cart==FALSE) {
            $data['rowid'] = NULL;
            $data['is_on_cart'] = FALSE;
            $data['form_action_cart'] = base_url('store/cart_add');
            $data['qty_item'] = 1;
        }
        

        $get_product_category = $this->product_category_model->get_all(NULL,NULL,NULL,NULL);
        $data['product_category'] = $get_product_category['data'];

        $filter_product_category = array(
        array(
            'alias'     =>'SEMUA KATEGORI',
            'parameter' =>NULL,
            )
        );

        foreach ($get_product_category['data'] as $k => $v) {
            array_push($filter_product_category, array(
                'alias'     => strtoupper($v['nama']),
                'parameter' => strtolower($v['id_kategori']),
            ));
        }

         $data['filter_product_category'] = $filter_product_category;

        $def_param_filter_product_category = $filter_product_category;
        $get_filter_product_category = $this->input->get('filter_product_category');
        $param_filter_product_category   = strtoupper($get_filter_product_category);
        $data['param_filter_product_category'] = $filter_product_category;
        if (isset($param_filter_product_category)) {
            $data['param_filter_product_category'] = $param_filter_product_category;
            $key = array_search($param_filter_product_category,array_column($filter_product_category,'alias'));
            if ($key) {
                $param_filter_product_category = $filter_product_category[$key]['parameter'];
                $data['param_filter_product_category'] = $filter_product_category[$key]['alias'];
            } else{
                $param_filter_product_category = $def_param_filter_product_category;
            }
        }else{
            $param_filter_product_category = $def_param_filter_product_category;
        }


        $data['page_name']          = 'Product Detail';
        $data['is_content_header']  = TRUE;
        $data['page']               = 'compro/store_item_view';
        $this->load->view('compro/main_view',$data);
    }

    function cart(){

        $get_product_category = $this->product_category_model->get_all(NULL,NULL,NULL,NULL);
        $data['product_category'] = $get_product_category['data'];

        $filter_product_category = array(
        array(
            'alias'     =>'SEMUA KATEGORI',
            'parameter' =>NULL,
            )
        );

        foreach ($get_product_category['data'] as $k => $v) {
            array_push($filter_product_category, array(
                'alias'     => strtoupper($v['nama']),
                'parameter' => strtolower($v['id_kategori']),
            ));
        }

         $data['filter_product_category'] = $filter_product_category;

        $def_param_filter_product_category = $filter_product_category;
        $get_filter_product_category = $this->input->get('filter_product_category');
        $param_filter_product_category   = strtoupper($get_filter_product_category);
        $data['param_filter_product_category'] = $filter_product_category;
        if (isset($param_filter_product_category)) {
            $data['param_filter_product_category'] = $param_filter_product_category;
            $key = array_search($param_filter_product_category,array_column($filter_product_category,'alias'));
            if ($key) {
                $param_filter_product_category = $filter_product_category[$key]['parameter'];
                $data['param_filter_product_category'] = $filter_product_category[$key]['alias'];
            } else{
                $param_filter_product_category = $def_param_filter_product_category;
            }
        }else{
            $param_filter_product_category = $def_param_filter_product_category;
        }

        $data['cart'] = $this->cart->contents();
        // $this->cart->destroy();


        $data['page_name']         = 'Cart';
        $data['page_sub_name']     = '';
        $data['page']              = 'compro/store_cart_view';
        $this->load->view('compro/main_view',$data);
    }

    function cart_add(){
        $get_post = $this->input->post();
        $product_id = $get_post['produk'];
        $qty_item   = $get_post['qty_item'];

        $get_product = $this->product_model->get($product_id);
        if ($get_product==FALSE) {
            redirect('404');
        }

        $data_cart = array(
            'id'      => $get_product['id_produk'],
            'qty'     => $qty_item,
            'price'   => $get_product['price_s'],
            'name'    => $get_product['nama_produk'],
            'foto_path' => $get_product['foto_path'], 
            'berat' => $get_product['berat'],
            'options' => array()
        );

        $this->cart->insert($data_cart);

        redirect(site_url('store/item').'/'.$product_id,'REFRESH');
        
    }

    function cart_update(){
        $get_post = $this->input->post();
        $data_cart = array();
        foreach ($get_post['rowid'] as $k => $v) {
            $data_cart[$k]['rowid'] = $v;
        }
        foreach ($get_post['qty_item'] as $k => $v) {
            $data_cart[$k]['qty'] = $v;
        }
        
        $this->cart->update($data_cart);
        redirect(site_url('store/cart'));
    }

    function cart_remove($rowid){
        $this->cart->remove($rowid);
        redirect(site_url('store/cart'));
    }

    function check_out(){
       $get_product_category = $this->product_category_model->get_all(NULL,NULL,NULL,NULL);
        $data['product_category'] = $get_product_category['data'];

        $filter_product_category = array(
        array(
            'alias'     =>'SEMUA KATEGORI',
            'parameter' =>NULL,
            )
        );

        foreach ($get_product_category['data'] as $k => $v) {
            array_push($filter_product_category, array(
                'alias'     => strtoupper($v['nama']),
                'parameter' => strtolower($v['id_kategori']),
            ));
        }

         $data['filter_product_category'] = $filter_product_category;

        $def_param_filter_product_category = $filter_product_category;
        $get_filter_product_category = $this->input->get('filter_product_category');
        $param_filter_product_category   = strtoupper($get_filter_product_category);
        $data['param_filter_product_category'] = $filter_product_category;
        if (isset($param_filter_product_category)) {
            $data['param_filter_product_category'] = $param_filter_product_category;
            $key = array_search($param_filter_product_category,array_column($filter_product_category,'alias'));
            if ($key) {
                $param_filter_product_category = $filter_product_category[$key]['parameter'];
                $data['param_filter_product_category'] = $filter_product_category[$key]['alias'];
            } else{
                $param_filter_product_category = $def_param_filter_product_category;
            }
        }else{
            $param_filter_product_category = $def_param_filter_product_category;
        }

        $data['cart'] = $this->cart->contents();

        $data['page_name']         = 'Check Out';
        $data['page_sub_name']     = '';
        $data['page']              = 'compro/store_check_out_view';
        $this->load->view('compro/main_view',$data);
    }

   
}