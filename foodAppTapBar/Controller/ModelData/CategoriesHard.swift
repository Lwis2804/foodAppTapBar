//
//  CategoriesHard.swift
//  foodApp
//
//  Created by LUIS GONZALEZ on 17/05/23.
//

import Foundation

class CategoriesHard {
    ////// ////// ////// ////// ////// ////// ////// ////// ////// //////
    var arrCategories: [Categories] = []
    
    var category = Categories()
    var category2 = Categories()
    var category3 = Categories()
    var category4 = Categories()
    
    
    var arrSndCategories: [SndCategories] = []
    
    var Scategory = SndCategories()
    var Scategory2 = SndCategories()
    var Scategory3 = SndCategories()
    
    var arrSearchDetailCat: [searchDetailCat] = []
    
    var searchDetail1 = searchDetailCat()
    
    
    
    var bCategoryCV = bundleCollectionCategories()
    var bCategoryCV2 = bundleCollectionCategories()
    var bCategoryCV3 = bundleCollectionCategories()
    
    var tCategoryBundle = tableBundleCategories()
    var tCategoryBundle2 = tableBundleCategories()
    var tCategoryBundle3 = tableBundleCategories()
    var tCategoryBundle4 = tableBundleCategories()




    
    
    
    ////// ////// ////// ////// ////// ////// ////// ////// ////// //////
    func returnDataOnCategoriesToFirstCV() -> [Categories] {
        var arrFinal: [Categories] = []
        category.title = "First Bundle"
        category.stars = "5"
        category.time = "30 m"
        category.images.append("1366_2000")
        category.images.append("2016-02-02-Imagen2420x420pxs-Imusa-V1-1-oblgpvk12qtvzpi7meqjwmmpt5lctqhzdbwu7s1i6g")
        category.images.append("35702711_m")
        category.images.append("baklava 13")
        
        arrFinal.append(category)
    
        category2.title = "Second Bundle"
        category2.stars = "4.5"
        category2.time = "35 m"
        category2.images.append("1585184618041")
        category2.images.append("Baklava(1)")
        category2.images.append("frappe-cafe-frio-leche-vaso-sobre-mesa-madera-marmol-dulce-leche-caramelo-salado_603822-731")
        category2.images.append("Samosa-de-Pollo")
        
        arrFinal.append(category2)
        
        category3.title = "First Bundle"
        category3.stars = "5"
        category3.time = "30 m"
        category3.images.append("1366_2000")
        category3.images.append("2016-02-02-Imagen2420x420pxs-Imusa-V1-1-oblgpvk12qtvzpi7meqjwmmpt5lctqhzdbwu7s1i6g")
        category3.images.append("35702711_m")
        category3.images.append("baklava 13")
        
        arrFinal.append(category3)
        
        category4.title = "Second Bundle"
        category4.stars = "4.5"
        category4.time = "35 m"
        category4.images.append("1585184618041")
        category4.images.append("Baklava(1)")
        category4.images.append("frappe-cafe-frio-leche-vaso-sobre-mesa-madera-marmol-dulce-leche-caramelo-salado_603822-731")
        category4.images.append("Samosa-de-Pollo")
        
        arrFinal.append(category4)
        
        
        return arrFinal
    }
    
    
    
    
    
    func returnDataOnCategoriesToSecndCV() -> [SndCategories] {
        var arrFinalSnd: [SndCategories] = []
        Scategory.title = "Dalgona"
        Scategory.subTitle = "Korean style"
        Scategory.stars = "5"
        Scategory.time = "30 m"
        Scategory.images.append("dalgona")
        
        arrFinalSnd.append(Scategory)
        
        Scategory2.title = "Seeds"
        Scategory2.subTitle = "For afternoon t..."
        Scategory2.stars = "5"
        Scategory2.time = "30 m"
        Scategory2.images.append("seeds")
        
        arrFinalSnd.append(Scategory2)
        
        Scategory3.title = "Taiyaki"
        Scategory3.subTitle = "Japanese ice..."
        Scategory3.stars = "5"
        Scategory3.time = "30 m"
        Scategory3.images.append("taiyaki")
        
        arrFinalSnd.append(Scategory3)
    
        return arrFinalSnd
    }
   
    
    func returnDataOnSearchDetailCV() -> [searchDetailCat] {
        var arrFinalSD: [searchDetailCat] = []
        searchDetail1.title = "Turkish Tea time"
        searchDetail1.description = "Authentic Turkish tea and snack bundle"
        searchDetail1.price = "$10.99"
        searchDetail1.stars = "4.9"
        searchDetail1.time = "30 m"
        searchDetail1.images.append("TasteslikeTurkey.NiaMcRay.IzmirTurkeyCayTeaTime-07-horizontal-scaled")
        searchDetail1.images.append("Turkish-Eggs-2")
        searchDetail1.images.append("turkish-pide-21588-1")
        searchDetail1.images.append("Turkish-pide-with-cheese-and-ground-meat")
        
        arrFinalSD.append(searchDetail1)
        

        return arrFinalSD
    }
    
    
    
    func returnDataOnCategoriesToBundleCV() -> [bundleCollectionCategories] {
        var arrFinalBundle: [bundleCollectionCategories] = []
        
        bCategoryCV.title = "Review 10 snacks of guilty pleasure"
        bCategoryCV.images = "Baklava(1)"
        
        arrFinalBundle.append(bCategoryCV)
        
        bCategoryCV2.title = "Review 10 snacks good for your health"
        bCategoryCV2.images = "Samosa-de-Pollo"
        
        arrFinalBundle.append(bCategoryCV2)
    
        bCategoryCV3.title = "Good afternoon Take a break from work."
        bCategoryCV3.images = "taiyaki"
        
        arrFinalBundle.append(bCategoryCV3)

        return arrFinalBundle
    }
    
    
    func returnDataOnCategoriesTableBundle() -> [tableBundleCategories] {
        var arrFinalTableBundle: [tableBundleCategories] = []
        
        tCategoryBundle.title = "Seeds"
        tCategoryBundle.image = "seeds"
        tCategoryBundle.description = "For afternoon tea time"
        tCategoryBundle.price = "$ 4.99"
        tCategoryBundle.time = "32 m"
        tCategoryBundle.stars = "4.6"
        
        arrFinalTableBundle.append(tCategoryBundle)
     
        tCategoryBundle2.title = "Simit lovers"
        tCategoryBundle2.image = "turkish-pide-21588-1"
        tCategoryBundle2.description = "Japanese ice cream"
        tCategoryBundle2.price = "$ 4.99"
        tCategoryBundle2.time = "28 m"
        tCategoryBundle2.stars = "5"
        
        arrFinalTableBundle.append(tCategoryBundle2)
        
        tCategoryBundle3.title = "Frappe frio"
        tCategoryBundle3.image = "frappe-cafe-frio-leche-vaso-sobre-mesa-madera-marmol-dulce-leche-caramelo-salado_603822-731"
        tCategoryBundle3.description = "For noo time"
        tCategoryBundle3.price = "$ 4.99"
        tCategoryBundle3.time = "30 m"
        tCategoryBundle3.stars = "4.6"
        
        arrFinalTableBundle.append(tCategoryBundle3)
        
        tCategoryBundle4.title = "Dalgona"
        tCategoryBundle4.image = "dalgona"
        tCategoryBundle4.description = "Every time"
        tCategoryBundle4.price = "$ 4.75"
        tCategoryBundle4.time = "30 m"
        tCategoryBundle4.stars = "5"
        
        arrFinalTableBundle.append(tCategoryBundle4)
        
        return arrFinalTableBundle
    }
}



