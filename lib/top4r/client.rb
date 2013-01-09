# -*- encoding : utf-8 -*-
class Top4R::Client
  include Top4R::ClassUtilMixin
  
  @@no_login_required_methods = {
    :user => {
      :info => 'taobao.user.get',
      :multi_info => 'taobao.users.get'
    },
    :trade => {},
    :area => {
      :list => 'taobao.areas.get'
    },
    :logistic_company => {
      :list => 'taobao.logistics.companies.get'
    },
    :shop => {
      :cats_list => 'taobao.sellercats.list.get', 
      :shop_info => 'taobao.shop.get'      
    },
    :item => {
      :item_info => 'taobao.item.get', 
      :items_info => 'taobao.items.list.get', 
      :item_skus => 'taobao.item.skus.get', 
      :search => 'taobao.items.get'
    },
    :taobaoke_item => {
      :taobaoke_items_get => 'taobao.taobaoke.items.get', 
      :taobaoke_items_detail_get => 'taobao.taobaoke.items.detail.get', 
      :taobaoke_items_convert => 'taobao.taobaoke.items.convert', 
      :taobaoke_shops_convert => 'taobao.taobaoke.shops.convert'
    },
    :item_cat => {
      :cats_info => 'taobao.itemcats.get'
    }
  }
end

require 'top4r/client/base'
require 'top4r/client/user'
require 'top4r/client/shipping'
require 'top4r/client/trade'
require 'top4r/client/suite'
require 'top4r/client/item'
require 'top4r/client/shop'
require 'top4r/client/taobaokeitem'
require 'top4r/client/itemcat'
