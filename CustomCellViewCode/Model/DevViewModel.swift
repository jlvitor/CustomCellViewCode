//
//  DevViewModel.swift
//  CustomCellViewCode
//
//  Created by Jean Lucas Vitor on 27/04/22.
//

import Foundation

struct DevViewModel {
    var listImage: String?
    var listTitle: String?
    var listIcon: String?
    var listDescription: String?
}

var DevData = [
    DevViewModel(
        listImage: "steve-jobs",
        listTitle: "Steve Jobs",
        listIcon: "apple",
        listDescription: "Apple Inc. é uma empresa multinacional norte-americana que tem o objetivo de projetar e comercializar produtos eletrônicos de consumo, software de computador e computadores pessoais."),
    DevViewModel(
        listImage: "linus-torvalds",
        listTitle: "Linus Torvalds",
        listIcon: "linux",
        listDescription: "Linux é um termo popularmente empregado para se referir a sistemas operativos ou sistemas operacionais que utilizam o Kernel Linux. O núcleo foi desenvolvido pelo programador finlandês Linus Torvalds, inspirado no sistema Minix."
    ),
    DevViewModel(
        listImage: "mark-zuckerberg",
        listTitle: "Mark Zuckerberg",
        listIcon: "facebook",
        listDescription: "Meta Platforms, Inc., nome comercial Meta é um conglomerado estadunidense de tecnologia e mídia social com sede em Menlo Park, Califórnia."
    ),
    DevViewModel(
        listImage: "parag-agrawal",
        listTitle: "Parag Agrawal",
        listIcon: "twitter",
        listDescription: "Twitter é uma rede social e um serviço de microblog, que permite aos usuários enviar e receber atualizações pessoais de outros contatos, por meio do website do serviço, por SMS e por softwares específicos de gerenciamento."
    ),
    DevViewModel(
        listImage: "bill-gates",
        listTitle: "Bill Gates",
        listIcon: "microsoft",
        listDescription: "Microsoft Corporation é uma empresa transnacional dos Estados Unidos com sede em Redmond, Washington, que desenvolve, fabrica, licencia, apoia e vende softwares de computador, produtos eletrônicos, computadores e serviços pessoais."
    ),
]
