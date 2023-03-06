/*
 - Author: Alessandro Riccumeni
 */

import UIKit

let products = [
    "PROD01" : (
        "Macbook air 2020",
        "elettronica",
        950.99
    ),
    "PROD02" : (
        "I promessi sposi",
        "libri",
        20.50
    ),
    "PROD03" : (
        "lavatrice",
        "elettrodomestici",
        400.60
    ),
    "PROD04" : (
        "La divina commedia",
        "libri",
        15.49
    ),
    "PROD05" : (
        "lavatrice2",
        "elettrodomestici",
        600
    ),
    "PROD06" : (
        "Macbook pro 2021",
        "elettronica",
        1600
    ),
    "PROD07" : (
        "Chromebook",
        "elettronica",
        300
    ),
    "PROD08" : (
        "Harry potter e il principe mezzosangue",
        "libri",
        25
    ),
    "PROD09" : (
        "Mabook air 2022",
        "elettronica",
        1400
    ),
    "PROD10" : (
        "lavatrice3",
        "elettrodomestici",
        900
    )
]

// Ho utilizzato il metodo filter per passare alla funzione media un array con dentro solo le tuple di una determinata categoria

var mediaElettronica = media(products: products.values.filter{ $0.1 == "elettronica"}) // [ (tupla), (tupla), ...]
var mediaElettrodomestici = media(products: products.values.filter{ $0.1 == "elettrodomestici"})
var mediaLibri = media(products: products.values.filter{ $0.1 == "libri"})

print("Media Elettronica: \(mediaElettronica)")
print("Media Elettrodomestici: \(mediaElettrodomestici)")
print("Media Libri: \(mediaLibri)")

func media(products : Array<(String, String, Double)>) -> Double{
    
    var media : Double = 0
    
    for product in products {
        media += product.2
    }
    
    return media / Double(products.count)
}
