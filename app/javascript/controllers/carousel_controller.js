import { Application } from "@hotwired/stimulus"
import Carousel from "stimulus-carousel"
import Swiper from "swiper/swiper-bundle"

const application = Application.start()
application.register("carousel", Carousel)
console.log('Hello')
