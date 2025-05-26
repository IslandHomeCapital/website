import Saga
import SagaParsleyMarkdownReader
import SagaSwimRenderer
import HTML

func renderPage(context: ItemRenderingContext<EmptyMetadata>) -> Node {
    html(lang: "en-US") {
        head {
            meta(charset: "UTF-8")
            meta(content: "width=device-width, initial-scale=1.0", name: "viewport")
            title {
                "Home — Island Home Capital"
            }
            script(defer: true, src: "https://unpkg.com/alpinejs")
            script(src: "https://cdn.tailwindcss.com")
        }
        body {
            div(class: "bg-white") {
                header(class: "absolute inset-x-0 top-0 z-50", customAttributes: ["x-data": "{ open: false}", "@keydown.window.escape": "open = false"]) {
                    div(class: "mx-auto max-w-7xl") {
                        div(class: "px-6 pt-6 lg:max-w-2xl lg:pr-0 lg:pl-8") {
                            nav(class: "flex items-center justify-between lg:justify-start", customAttributes: ["aria-label": "Global"]) {
                                div(class:"text-base font-serif font-semibold text-orange-600") {
                                    a(href: "#") {
                                        "Island Home Capital"
                                    }
                                }
                                button(class:"-m-2.5 rounded-md p-2.5 text-gray-700 lg:hidden", type: "button", customAttributes: ["@click": "open = true"]) {
                                    span(class:"sr-only") {
                                        "Open main menu"
                                    }
                                    img(class: "h-6 w-6", src: "/media/hamburger.svg")
                                }
                                div(class: "hidden lg:ml-12 lg:flex lg:gap-x-14") {
                                    a(class: "text-sm/6 font-semibold text-gray-900", href: "#") {
                                        "Product"
                                    }
                                    a(class: "text-sm/6 font-semibold text-gray-900", href: "#") { 
                                        "Features"
                                    }
                                    a(class: "text-sm/6 font-semibold text-gray-900", href: "#") {
                                        "Marketplace"
                                    }
                                    a(class: "text-sm/6 font-semibold text-gray-900") {
                                        "Company"
                                    }
                                    a(class: "text-sm/6 font-semibold text-gray-900") {
                                        "Log in"
                                    }
                                }
                            }
                        }
                    }
                    div(class: "lg:hidden", role: "dialog", customAttributes: [
                      "x-description": "Mobile menu, show/hide based on menu open state.",
                      "x-ref": "dialog",
                      "x-show": "open",
                      "aria-modal": "true"]) {
                        div(class: "fixed inset-0 z-50", customAttributes: [
                            "x-description": "Background backdrop, show/hide based on slide-over state."
                        ]) {}
                        div(class: "fixed inset-y-0 right-0 z-50 w-full overflow-y-auto bg-white px-6 py-6 sm:max-w-sm sm:ring-1 sm:ring-gray-900/10", customAttributes: ["@click.away": "open = false"]) {
                            div(class: "flex items-center justify-between") {
                                div(class: "h-8 w-auto text-base font-serif font-semibold text-orange-600") {
                                    a(class: "-m-1.5 p-1.5", href: "#") {
                                        span() {
                                          "Island Home Capital"
                                        }
                                    }
                                }
                                button(class: "-m-2.5 rounded-md p-2.5 text-gray-700", type: "button", customAttributes: ["@click": "open = false"]) {
                                    span(class: "sr-only") {
                                        "Close menu"
                                    }
                                    img(class: "h-6 w-6", src: "/media/close.svg")
                                }
                            }
                            div(class: "mt-6 flow-root") {
                                div(class: "-my-6 divide-y divide-gray-500/10") {
                                    div(class: "space-y-2 py-6") {
                                        a(class: "-mx-3 block rounded-lg px-3 py-2 text-base font-semibold leading-7 text-gray-900 hover:bg-gray-50", href: "#") {
                                            "Product"
                                        }
                                        a(class: "-mx-3 block rounded-lg px-3 py-2 text-base font-semibold leading-7 text-gray-900 hover:bg-gray-50", href: "#") {
                                            "Features"
                                        }
                                        a(class: "-mx-3 block rounded-lg px-3 py-2 text-base font-semibold leading-7 text-gray-900 hover:bg-gray-50", href: "#") {
                                            "Company"
                                        }
                                        a(class: "-mx-3 block rounded-lg px-3 py-2 text-base font-semibold leading-7 text-gray-900 hover:bg-gray-50", href: "#") {
                                            "Log in"
                                        }
                                    }
                                    div(class: "py-6"){
                                        a(class: "-mx-3 block rounded-lg px-3 py-2.5 text-base font-semibold leading-7 text-gray-900 hover:bg-gray-50", href: "#") {
                                            "Log in"
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                div(class: "relative") {
                    div(class: "mx-auto max-w-7xl") {
                        div(class: "relative z-10 pt-14 lg:w-full lg:max-w-2xl") {
                            img(class: "absolute inset-y-0 right-8 hidden h-full w-80 translate-x-1/2 transform fill-white lg:block", src: "/media/hero-mask.svg")
                            div(class: "relative px-6 py-32 sm:py-40 lg:px-8 lg:py-56 lg:pr-0") {
                                div(class: "mx-auto max-w-2xl lg:mx-0 lg:max-w-xl") {
                                    div(class: "hidden sm:mb-10 sm:flex") {}
                                    h1(class: "text-4xl font-serif font-bold tracking-tight text-gray-900 sm:text-6xl") {
                                        "Hawaii's residential mortgage experts"
                                    }
                                    p(class: "mt-6 text-lg leading-8 text-gray-600") {
                                        "Whether you're looking to buy your first home or financing your next investment we have the mortgage for you."
                                    }
                                    div(class: "mt-10 flex items-center gap-x-6") {
                                        a(class: "rounded-md bg-orange-600 px-3.5 py-2.5 text-sm font-semibold text-white shadow-sm hover:bg-orange-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-orange-600", href: "#") {
                                            "Get started"
                                        }
                                    }
                                }
                            }
                        }
                    }
                    div(class: "bg-gray-50 lg:absolute lg:inset-y-0 lg:right-0 lg:w-1/2") {
                        img(class: "aspect-[3/2] object-cover lg:aspect-auto lg:h-full lg:w-full", src: "/media/ian-stauffer-r5kvBZIFP0A-unsplash.jpg")
                    }
                }
            }
            div(class: "bg-white py-24 sm:py-32") {
                div(class: "mx-auto max-w-7xl px-6 lg:px-8") {
                    div(class: "mx-auto grid max-w-2xl grid-cols-1 gap-x-8 gap-y-16 sm:gap-y-20 lg:mx-0 lg:max-w-none lg:grid-cols-3") {
                        div() {
                            h2(class: "text-base font-semibold leading-7 text-orange-600") {
                                "Why use a mortgage brokerage?"
                            }
                            p(class: "mt-2 text-3xl font-serif font-bold tracking-tight text-gray-900 sm:text-4xl") {
                                "We have a solution for every home"
                            }
                            p(class: "mt-6 text-base leading-7 text-gray-600") {
                                "As a mortgage brokerage we have a mix of local, national, and private lenders, providing us with a variety of products so that we can find the right mortgage for your specific scenario."
                            }
                        }
                        dl(class: "col-span-2 grid grid-cols-1 gap-x-8 gap-y-10 text-base leading-7 text-gray-600 sm:grid-cols-2 lg:gap-y-16") {
                            div(class: "relative pl-9") {
                                dt(class: "font-semibold text-gray-900") {
                                    img(class: "absolute left-0 top-1 h-5 w-5 text-orange-500", src: "/media/check.svg")
                                    "First-time home buyer"
                                }
                                dd(class: "mt-2") {
                                    "Rerum repellat labore necessitatibus reprehenderit molestiae praesentium."
                                }
                            }
                            div(class: "relative pl-9") {
                                dt(class: "font-semibold text-gray-900") {
                                    img(class: "absolute left-0 top-1 h-5 w-5 text-orange-500", src: "/media/check.svg")
                                    "Cash-out refinance"
                                }
                                dd(class: "mt-2") {
                                    "Corporis asperiores ea nulla temporibus asperiores non tempore assumenda aut."
                                }
                            }
                            div(class: "relative pl-9") {
                                dt(class: "font-semibold text-gray-900") {
                                    img(class: "absolute left-0 top-1 h-5 w-5 text-orange-500", src: "/media/check.svg")
                                    "Rate-term refinance"
                                }
                                dd(class: "mt-2") {
                                    "In sit qui aliquid deleniti et. Ad nobis sunt omnis. Quo sapiente dicta laboriosam."
                                }
                            }
                            div(class: "relative pl-9") {
                                dt(class: "font-semibold text-gray-900") {
                                    img(class: "absolute left-0 top-1 h-5 w-5 text-orange-500", src: "/media/check.svg")
                                    "Investment properties"
                                }
                                dd(class: "mt-2") {
                                    "Sed rerum sunt dignissimos ullam. Iusto iure occaecati voluptate eligendi fugiat sequi."
                                }
                            }
                            div(class: "relative pl-9") {
                                dt(class: "font-semibold text-gray-900") {
                                    img(class: "absolute left-0 top-1 h-5 w-5 text-orange-500", src: "/media/check.svg")
                                    "Agricultural loans"
                                }
                                dd(class: "mt-2") {
                                    "Quos inventore harum enim nesciunt. Aut repellat rerum omnis adipisci."
                                }
                            }
                            div(class: "relative pl-9") {
                                dt(class: "font-semibold text-gray-900") {
                                    img(class: "absolute left-0 top-1 h-5 w-5 text-orange-500", src: "/media/check.svg")
                                    "Veteran loans"
                                }
                                dd(class: "mt-2") {
                                    "Quae sit sunt excepturi fugit veniam voluptatem ipsum commodi."
                                }
                            }
                            div(class: "relative pl-9") {
                                dt(class: "font-semibold text-gray-900") {
                                    img(class: "absolute left-0 top-1 h-5 w-5 text-orange-500", src: "/media/check.svg")
                                    "Construction loans"
                                }
                                dd(class: "mt-2") {
                                    "Eos laudantium repellat sed architecto earum unde incidunt. Illum sit dolores voluptatem."
                                }
                            }
                            div(class: "relative pl-9") {
                                dt(class: "font-semibold text-gray-900") {
                                    img(class: "absolute left-0 top-1 h-5 w-5 text-orange-500", src: "/media/check.svg")
                                    "Mobile app"
                                }
                                dd(class: "mt-2") {
                                    "Nulla est saepe accusamus nostrum est est. Fugit voluptatum omnis quidem voluptatem."
                                }
                            }
                        }
                    }
                }
            }

            div(id: "content") {
            h1 { context.item.title }
            Node.raw(context.item.body)
            }
        }
    }
}

try await Saga(input: "content", output: "deploy")
    // All Markdown files within the `input` folder will be parsed to html.
    .register(
        readers: [.parsleyMarkdownReader],
        writers: [.itemWriter(swim(renderPage))]
    )

    // Run the step we registered above
    .run()

    // All the remaining files that were not parsed from markdown, so for example 
    // images, raw html files and css, are copied as-is to the output folder.
    .staticFiles()