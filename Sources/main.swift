import Saga
import SagaParsleyMarkdownReader
import SagaSwimRenderer
import HTML
import PathKit

enum SiteMetadata {
    static let name = "Island Home Capital"
    static let url = "https://islandhomecapital.github.io/website/"
}

struct HomeMetadata: Metadata {
    let hero: String 
}

struct PageMetadata: Metadata {
    let published: Bool
    let title: String
}

func renderHome(context: ItemRenderingContext<HomeMetadata>) -> Node {
    baseLayout(title: "Home") {
        div(class: "relative") {
            div(class: "mx-auto max-w-7xl") {
                div(class: "relative z-10 pt-14 lg:w-full lg:max-w-2xl") {
                    Node.raw("""
                            <svg class="absolute inset-y-0 right-8 hidden h-full w-80 translate-x-1/2 transform fill-white lg:block" viewBox="0 0 100 100" preserveAspectRatio="none" aria-hidden="true">
                                <polygon points="0,0 90,0 50,100 0,100" />
                            </svg>
                            """)
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
                img(class: "aspect-[3/2] object-cover lg:aspect-auto lg:h-full lg:w-full", src: context.item.metadata.hero)
            }
        }
        div(class: "py-24 sm:py-32") {
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
                                Node.raw("""
                                        <svg class="absolute left-0 top-1 h-5 w-5 text-orange-500" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                                            <path fill-rule="evenodd" d="M16.704 4.153a.75.75 0 01.143 1.052l-8 10.5a.75.75 0 01-1.127.075l-4.5-4.5a.75.75 0 011.06-1.06l3.894 3.893 7.48-9.817a.75.75 0 011.05-.143z" clip-rule="evenodd" />
                                        </svg>
                                        """)
                                "First-time home buyer"
                            }
                            dd(class: "mt-2") {
                                "Rerum repellat labore necessitatibus reprehenderit molestiae praesentium."
                            }
                        }
                        div(class: "relative pl-9") {
                            dt(class: "font-semibold text-gray-900") {
                                Node.raw("""
                                        <svg class="absolute left-0 top-1 h-5 w-5 text-orange-500" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                                            <path fill-rule="evenodd" d="M16.704 4.153a.75.75 0 01.143 1.052l-8 10.5a.75.75 0 01-1.127.075l-4.5-4.5a.75.75 0 011.06-1.06l3.894 3.893 7.48-9.817a.75.75 0 011.05-.143z" clip-rule="evenodd" />
                                        </svg>
                                        """)
                                "Cash-out refinance"
                            }
                            dd(class: "mt-2") {
                                "Corporis asperiores ea nulla temporibus asperiores non tempore assumenda aut."
                            }
                        }
                        div(class: "relative pl-9") {
                            dt(class: "font-semibold text-gray-900") {
                                Node.raw("""
                                        <svg class="absolute left-0 top-1 h-5 w-5 text-orange-500" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                                            <path fill-rule="evenodd" d="M16.704 4.153a.75.75 0 01.143 1.052l-8 10.5a.75.75 0 01-1.127.075l-4.5-4.5a.75.75 0 011.06-1.06l3.894 3.893 7.48-9.817a.75.75 0 011.05-.143z" clip-rule="evenodd" />
                                        </svg>
                                        """)
                                "Rate-term refinance"
                            }
                            dd(class: "mt-2") {
                                "In sit qui aliquid deleniti et. Ad nobis sunt omnis. Quo sapiente dicta laboriosam."
                            }
                        }
                        div(class: "relative pl-9") {
                            dt(class: "font-semibold text-gray-900") {
                                Node.raw("""
                                        <svg class="absolute left-0 top-1 h-5 w-5 text-orange-500" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                                            <path fill-rule="evenodd" d="M16.704 4.153a.75.75 0 01.143 1.052l-8 10.5a.75.75 0 01-1.127.075l-4.5-4.5a.75.75 0 011.06-1.06l3.894 3.893 7.48-9.817a.75.75 0 011.05-.143z" clip-rule="evenodd" />
                                        </svg>
                                        """)
                                "Investment properties"
                            }
                            dd(class: "mt-2") {
                                "Sed rerum sunt dignissimos ullam. Iusto iure occaecati voluptate eligendi fugiat sequi."
                            }
                        }
                        div(class: "relative pl-9") {
                            dt(class: "font-semibold text-gray-900") {
                                Node.raw("""
                                        <svg class="absolute left-0 top-1 h-5 w-5 text-orange-500" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                                            <path fill-rule="evenodd" d="M16.704 4.153a.75.75 0 01.143 1.052l-8 10.5a.75.75 0 01-1.127.075l-4.5-4.5a.75.75 0 011.06-1.06l3.894 3.893 7.48-9.817a.75.75 0 011.05-.143z" clip-rule="evenodd" />
                                        </svg>
                                        """)
                                "Agricultural loans"
                            }
                            dd(class: "mt-2") {
                                "Quos inventore harum enim nesciunt. Aut repellat rerum omnis adipisci."
                            }
                        }
                        div(class: "relative pl-9") {
                            dt(class: "font-semibold text-gray-900") {
                                Node.raw("""
                                        <svg class="absolute left-0 top-1 h-5 w-5 text-orange-500" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                                            <path fill-rule="evenodd" d="M16.704 4.153a.75.75 0 01.143 1.052l-8 10.5a.75.75 0 01-1.127.075l-4.5-4.5a.75.75 0 011.06-1.06l3.894 3.893 7.48-9.817a.75.75 0 011.05-.143z" clip-rule="evenodd" />
                                        </svg>
                                        """)
                                "Veteran loans"
                            }
                            dd(class: "mt-2") {
                                "Quae sit sunt excepturi fugit veniam voluptatem ipsum commodi."
                            }
                        }
                        div(class: "relative pl-9") {
                            dt(class: "font-semibold text-gray-900") {
                                Node.raw("""
                                        <svg class="absolute left-0 top-1 h-5 w-5 text-orange-500" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                                            <path fill-rule="evenodd" d="M16.704 4.153a.75.75 0 01.143 1.052l-8 10.5a.75.75 0 01-1.127.075l-4.5-4.5a.75.75 0 011.06-1.06l3.894 3.893 7.48-9.817a.75.75 0 011.05-.143z" clip-rule="evenodd" />
                                        </svg>
                                        """)
                                "Construction loans"
                            }
                            dd(class: "mt-2") {
                                "Eos laudantium repellat sed architecto earum unde incidunt. Illum sit dolores voluptatem."
                            }
                        }
                        div(class: "relative pl-9") {
                            dt(class: "font-semibold text-gray-900") {
                                Node.raw("""
                                        <svg class="absolute left-0 top-1 h-5 w-5 text-orange-500" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                                            <path fill-rule="evenodd" d="M16.704 4.153a.75.75 0 01.143 1.052l-8 10.5a.75.75 0 01-1.127.075l-4.5-4.5a.75.75 0 011.06-1.06l3.894 3.893 7.48-9.817a.75.75 0 011.05-.143z" clip-rule="evenodd" />
                                        </svg>
                                        """)
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
    }                    
}        

func renderPage(context: ItemRenderingContext<PageMetadata>) -> Node {
    baseLayout(title: context.item.title) {
        div(class: "px-6 py-32 lg:px-8") {
            div(class: "mx-auto max-w-3xl text-base/7 text-gray-700") {
                article(class: "prose") {
                    h1 {
                        context.item.title
                    }
                    Node.raw(context.item.body)
                }
            }
        }
    }
}

func pagePermalink(item: Item<PageMetadata>) {
    let components = item.relativeDestination.components.dropFirst()
    item.relativeDestination = Path(components: components)
}

func title(item: Item<PageMetadata>) {
    item.title = item.metadata.title
}

try await Saga(input: "content", output: "deploy")
    .register(
        folder: "pages",
        metadata: PageMetadata.self,
        readers: [.parsleyMarkdownReader],
        itemProcessor: sequence(title, pagePermalink),
        filter: \.metadata.published,
        writers: [.itemWriter(swim(renderPage))]
    )

    // All Markdown files within the `input` folder will be parsed to html.
    .register(
        metadata: HomeMetadata.self,
        readers: [.parsleyMarkdownReader],
        writers: [.itemWriter(swim(renderHome))]
    )

    // Run the step we registered above
    .run()

    // All the remaining files that were not parsed from markdown, so for example 
    // images, raw html files and css, are copied as-is to the output folder.
    .staticFiles()