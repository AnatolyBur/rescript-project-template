@val external document: 'a = "document"
@module("swiper") external swiper: 'a = "Swiper"


// call a method
document["addEventListener"]("DOMContentLoaded", _event => {
    Js.log(_event)
    Js.log(swiper)


    let a = %raw(`
        new Swiper.Swiper("#carouselExampleIndicators", {
            slidesPerView: 1,
            spaceBetween: 30,
            loop: true,
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
            observer: true,  
            observeParents: true,
        })
    `)

    let b = %raw(`
        new Swiper.Swiper("#my_carousel", {
            loop: true,

            pagination: {
                el: ".swiper-pagination",
            },
        })
    `)
    Js.log(a)
    Js.log(b)

    // let slider = raise(swiper("#carouselExampleIndicators", {
    //     direction: "vertical",
    //     loop: true,

    //     pagination: {
    //         el: ".swiper-pagination",
    //     },

    //     navigation: {
    //         nextEl: ".swiper-button-next",
    //         prevEl: ".swiper-button-prev",
    //     },

    //     // And if we need scrollbar
    //     scrollbar: {
    //         el: ".swiper-scrollbar",
    //     },
    // }));


})
