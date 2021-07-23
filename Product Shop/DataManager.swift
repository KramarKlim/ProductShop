//
//  DataManager.swift
//  Product Shop
//
//  Created by Клим on 21.07.2021.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    private init() {}
    
    let products = [
        ProductModel(name: "Fruits", image: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/assortment-of-colorful-ripe-tropical-fruits-top-royalty-free-image-995518546-1564092355.jpg"),
        ProductModel(name: "Meat", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSalMlqLHh_yMtxh4gKLM3YO6iS9oB6v_btg&usqp=CAU"),
        ProductModel(name: "Vegetable", image: "https://cdn.britannica.com/17/196817-050-6A15DAC3/vegetables.jpg"),
        ProductModel(name: "Candy", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Candy_in_Damascus.jpg/1200px-Candy_in_Damascus.jpg"),
        ProductModel(name: "Snaks", image: "https://www.europesnacks.com/wp-content/uploads/2021/01/Europe_Snacks_food_manufacturer_private_label_Home_page.jpg"),
        ProductModel(name: "Pasta", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIpC5CPNXnk88I9I4Bo32HaGh0E0Aimo3xEL3aco3oq7UPpGEzyCmlOzH95bGTXJhioPJ2_dpg2L4&usqp=CAU")
    ]
    
    let listFruits = [
        ListModel(name: "Apple", image: "https://static.libertyprim.com/files/varietes/pomme-akane-large.jpg?1569320193", price: 112),
        ListModel(name: "Banana", image: "https://ryady.ru/upload/resize_cache/iblock/6c2/600_600_1/000000000000060033_0.jpg", price: 78),
        ListModel(name: "Pear", image: "https://static.libertyprim.com/files/familles/poire-large.jpg?1569271830", price: 59),
        ListModel(name: "Orange", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Orange-Fruit-Pieces.jpg/1280px-Orange-Fruit-Pieces.jpg", price: 150),
        ListModel(name: "Kiwi", image: "https://static.libertyprim.com/files/familles/kiwi-large.jpg?1569271790", price: 243)
    ]
    
    let listMeat = [
        ListModel(name: "Chicken", image: "https://st.depositphotos.com/3210553/4156/i/950/depositphotos_41568413-stock-photo-free-range-whole-chicken-isolated.jpg", price: 340),
        ListModel(name: "Beef", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmM5V_cMv958zePRxPrNLEYO0LDJBgwHGjlWq3O5mHA6oYQhH7t5x_4ELcD-dVly9G-zDnnt1DGjE&usqp=CAU", price: 462),
        ListModel(name: "Pork", image: "https://5.imimg.com/data5/MJ/EB/MY-37035014/pork-chops-500x500.jpg", price: 400)
    ]
    
    let listVegetable = [
        ListModel(name: "Tomato", image: "https://www.sansafe.ru/wp-content/uploads/2019/12/p3.jpg", price: 78),
        ListModel(name: "Cucumber", image: "https://static.libertyprim.com/files/varietes/concombre-hollandais-large.jpg?1569524167", price: 112),
        ListModel(name: "Onion", image: "https://harrycottbazar.com/storage/2021/05/New_Ingredients_onion_copy.jpg", price: 54),
        ListModel(name: "Cabbage", image: "https://media.istockphoto.com/photos/green-cabbage-isolated-on-white-picture-id673162168?k=6&m=673162168&s=612x612&w=0&h=Rqa0RQ7mcnb7L8S1GZuorSP7BsnKCDaN_leJA5HlLeo=", price: 69),
        ListModel(name: "Pepper", image: "https://sc04.alicdn.com/kf/ULB8PGE_LyaMiuJk43PTq6ySmXXaw.jpg", price: 90)
    ]
    
    let listCandy = [
        ListModel(name: "White M&M", image: "https://cdn.shopify.com/s/files/1/2028/7269/products/white_m_m.jpg?v=1574463726", price: 540),
        ListModel(name: "Yellow M&M", image: "https://cdn.shopify.com/s/files/1/2028/7269/products/Yellow_M_M_s_Chocolate_Candy.jpg?v=1547507406", price: 550),
        ListModel(name: "Gelatin Bears", image: "https://media.fooducate.com/comments/images/5BD95101-30D9-2680-4B05-8FB331D94156-13336-colorful-gummy-bears.jpeg", price: 620),
        ListModel(name: "Skittles", image: "https://samogon1.ru/wa-data/public/blog/img/53453456354534534.jpg", price: 580)
    ]
    let listSnaks = [
        ListModel(name: "Peanuts with cheese", image: "https://i.pinimg.com/736x/7e/d8/fe/7ed8fe7e2d2df23671034ff80044a48f.jpg", price: 60),
        ListModel(name: "Peanuts with salt", image: "https://nuts.com/images/rackcdn/ed910ae2d60f0d25bcb8-80550f96b5feb12604f4f720bfefb46d.ssl.cf1.rackcdn.com/bf4c7464b89c12f3-1dgn6-g4-large.jpg", price: 120),
        ListModel(name: "Peanuts with wasabi", image: "https://i.ytimg.com/vi/njDBRgWLik0/maxresdefault.jpg", price: 140),
        ListModel(name: "Crackers with garlic", image: "https://static.1000.menu/img/content-v2/6c/a1/4757/chesnochnye-suxariki-s-chesnokom_1604986909_17_max.jpg", price: 45),
        ListModel(name: "Crackers with cheese", image: "https://s3-eu-west-1.amazonaws.com/straus/media/products2/6274.jpg", price: 76)
    ]
    
    let listPasta = [
        ListModel(name: "Linguine", image: "https://www.starfrit.com/media/amasty/webp/contentmanager/content/crop/recipes/e1_r1_spaghetti_jpg.webp", price: 120),
        ListModel(name: "Ravioli", image: "https://fornelli.ru/upload/iblock/505/main1.jpg", price: 132),
        ListModel(name: "Rigatoni", image: "https://upload.wikimedia.org/wikipedia/commons/8/84/Rigatoni.jpg", price: 143)
    ]
}
