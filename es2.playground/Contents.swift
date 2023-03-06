/*
 - Author: Alessandro Riccumeni
*/

import UIKit

let products = [
    "PROD01" : Product(descrizione: "Macbook air 2020", categoria: Category.elettronica, prezzo: 999.99),
    "PROD02" : Product(descrizione: "I promessi sposi", categoria: Category.libri, prezzo: 19.99),
    "PROD03" : Product(descrizione: "lavatrice", categoria: Category.elettrodomestici, prezzo: 599.99),
    "PROD04" : Product(descrizione: "la divina commedia", categoria: Category.libri, prezzo: 29.99),
    "PROD05" : Product(descrizione: "lavatrice2", categoria: Category.elettrodomestici, prezzo: 799.99),
    "PROD06" : Product(descrizione: "macbook pro 2021", categoria: Category.elettronica, prezzo: 1699.99),
    "PROD07" : Product(descrizione: "chromebook", categoria: Category.elettronica, prezzo: 209.99),
    "PROD08" : Product(descrizione: "harry potter e il principe mezzosangue", categoria: Category.libri, prezzo: 19.99),
    "PROD09" : Product(descrizione: "macbook air 2022", categoria: Category.elettronica, prezzo: 1299.99),
    "PROD10" : Product(descrizione: "lavatrice3", categoria: Category.elettrodomestici, prezzo: 299.99)
]

var mediaElettronica = media(products: products.values.filter{ $0.categoria == Category.elettronica})
var mediaElettrodomestici = media(products: products.values.filter{ $0.categoria == Category.elettrodomestici})
var mediaLibri = media(products: products.values.filter{ $0.categoria == Category.libri})

print("######## PRODOTTI ELETTRONICI ########")
printProduct(products.values.filter{ $0.categoria == Category.elettronica})
print("Media Prodotti Elettronici: \(mediaElettronica)")
print("######################################\n")

print("######## PRODOTTI ELETTRODOMESTICI ########")
printProduct(products.values.filter{ $0.categoria == Category.elettrodomestici})
print("Media Prodotti Elettrodomestici: \(mediaElettrodomestici)")
print("######################################\n")

print("######## PRODOTTI LIBRI ########")
printProduct(products.values.filter{ $0.categoria == Category.elettrodomestici})
print("Media Prodotti Libri: \(mediaLibri)")
print("######################################")

func printProduct(_ products: Array<Product>){
    for product in products{
        print("Nome prodotto: \(product.descrizione)")
        print("Prezzo: \(product.prezzo)")
        print("------------------------------------")
    }
}

func media(products : Array<Product>) -> Double{
    
    var media : Double = 0
    
    for product in products {
        media += product.prezzo
    }
    
    return media / Double(products.count)
}

enum Category{
    case elettrodomestici, elettronica, libri
}

struct Product{
    var descrizione: String
    var categoria: Category
    var prezzo: Double
    
    init(descrizione: String, categoria: Category, prezzo: Double) {
        self.categoria = categoria
        self.prezzo = prezzo
        self.descrizione = descrizione
    }
}
