import HTML

// Change the css link when switched to the islandhomecapital.com domain
func baseLayout(title pageTitle: String, @NodeBuilder children: () -> NodeConvertible) -> Node {
    html(lang: "en-US") {
        head {
            link(href: "\(SiteMetadata.url)css/output.css", rel: "stylesheet")
            meta(charset: "UTF-8")
            meta(content: "width=device-width, initial-scale=1.0", name: "viewport")
            title {
                "\(pageTitle) — \(SiteMetadata.name)"
            }
            script(defer: true, src: "https://unpkg.com/alpinejs")
        }
        body {
            div(class: "bg-white") {
                header(class: "absolute inset-x-0 top-0 z-50", customAttributes: ["x-data": "{ open: false}", "@keydown.window.escape": "open = false"]) {
                    div(class: "mx-auto max-w-7xl") {
                        div(class: "px-6 pt-6 lg:max-w-2xl lg:pr-0 lg:pl-8") {
                            nav(class: "flex items-center justify-between lg:justify-start", customAttributes: ["aria-label": "Global"]) {
                                div(class:"text-base font-serif font-semibold text-orange-600") {
                                    a(href: "#") {
                                        SiteMetadata.name
                                    }
                                }
                                button(class:"-m-2.5 rounded-md p-2.5 text-gray-700 lg:hidden", type: "button", customAttributes: ["@click": "open = true"]) {
                                    span(class:"sr-only") {
                                        "Open main menu"
                                    }
                                    Node.raw("""
                                    <svg class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" aria-hidden="true">
                                        <path stroke-linecap="round" stroke-linejoin="round" d="M3.75 6.75h16.5M3.75 12h16.5m-16.5 5.25h16.5" />
                                    </svg>
                                    """)
                                }
                                div(class: "hidden lg:ml-12 lg:flex lg:gap-x-14") {
                                    a(class: "text-sm font-semibold text-gray-900", href: "#") {
                                        "Product"
                                    }
                                    a(class: "text-sm font-semibold text-gray-900", href: "#") { 
                                        "Features"
                                    }
                                    a(class: "text-sm font-semibold text-gray-900") {
                                        "Company"
                                    }
                                    a(class: "text-sm font-semibold text-gray-900") {
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
                                          SiteMetadata.name
                                        }
                                    }
                                }
                                button(class: "-m-2.5 rounded-md p-2.5 text-gray-700", type: "button", customAttributes: ["@click": "open = false"]) {
                                    span(class: "sr-only") {
                                        "Close menu"
                                    }
                                    Node.raw("""
                                    <svg class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" aria-hidden="true">
                                        <path stroke-linecap="round" stroke-linejoin="round" d="M6 18L18 6M6 6l12 12" />
                                    </svg>
                                    """)
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
                children()
                // Not sure why we needed this border-color
                hr(class: "border-gray-900/10")
                footer(customAttributes: ["aria-labelledby": "footer-heading"]) {
                    h2(class: "sr-only", id: "footer-heading") {
                        "Footer"
                    }
                    div(class: "mx-auto max-w-7xl px-6 pb-8 pt-16 sm:pt-24 lg:px-8 lg:pt-32") {
                        div(class: "xl:grid xl:grid-cols-3 xl:gap-8") {
                            div(class: "space-y-8") {
                                div(class: "text-base font-serif font-semibold text-orange-600") {
                                    a(href: "#") {
                                        "Island Home Capital"
                                    }
                                }
                                div(class: "space-y-4") {
                                    address(class:"not-italic text-sm leading-6 text-gray-600") {
                                        "P.O. Box 437463"
                                        br()
                                        "Kamuela, Hawaii 96743"
                                    }
                                    div() {
                                        a(class: "text-sm leading-6 text-gray-600", href: "https://nmlsconsumeraccess.org/EntityDetails.aspx/COMPANY/42942") {
                                            "NMLS 42942"
                                        }
                                    }
                                }
                                div(class: "flex space-x-6") {
                                    a(class:"text-gray-400 hover:text-gray-500", href:"#") {
                                        span(class: "sr-only") {
                                            "Facebook"
                                        }
                                        Node.raw("""
                                        <svg class="h-6 w-6" fill="currentColor" viewBox="0 0 24 24" aria-hidden="true">
                                            <path fill-rule="evenodd" d="M22 12c0-5.523-4.477-10-10-10S2 6.477 2 12c0 4.991 3.657 9.128 8.438 9.878v-6.987h-2.54V12h2.54V9.797c0-2.506 1.492-3.89 3.777-3.89 1.094 0 2.238.195 2.238.195v2.46h-1.26c-1.243 0-1.63.771-1.63 1.562V12h2.773l-.443 2.89h-2.33v6.988C18.343 21.128 22 16.991 22 12z" clip-rule="evenodd" />
                                        </svg>
                                        """)
                                    }
                                    a(class:"text-gray-400 hover:text-gray-500", href:"#") {
                                        span(class: "sr-only") {
                                            "Instagram"
                                        }
                                        Node.raw("""
                                        <svg class="h-6 w-6" fill="currentColor" viewBox="0 0 24 24" aria-hidden="true">
                                            <path fill-rule="evenodd" d="M12.315 2c2.43 0 2.784.013 3.808.06 1.064.049 1.791.218 2.427.465a4.902 4.902 0 011.772 1.153 4.902 4.902 0 011.153 1.772c.247.636.416 1.363.465 2.427.048 1.067.06 1.407.06 4.123v.08c0 2.643-.012 2.987-.06 4.043-.049 1.064-.218 1.791-.465 2.427a4.902 4.902 0 01-1.153 1.772 4.902 4.902 0 01-1.772 1.153c-.636.247-1.363.416-2.427.465-1.067.048-1.407.06-4.123.06h-.08c-2.643 0-2.987-.012-4.043-.06-1.064-.049-1.791-.218-2.427-.465a4.902 4.902 0 01-1.772-1.153 4.902 4.902 0 01-1.153-1.772c-.247-.636-.416-1.363-.465-2.427-.047-1.024-.06-1.379-.06-3.808v-.63c0-2.43.013-2.784.06-3.808.049-1.064.218-1.791.465-2.427a4.902 4.902 0 011.153-1.772A4.902 4.902 0 015.45 2.525c.636-.247 1.363-.416 2.427-.465C8.901 2.013 9.256 2 11.685 2h.63zm-.081 1.802h-.468c-2.456 0-2.784.011-3.807.058-.975.045-1.504.207-1.857.344-.467.182-.8.398-1.15.748-.35.35-.566.683-.748 1.15-.137.353-.3.882-.344 1.857-.047 1.023-.058 1.351-.058 3.807v.468c0 2.456.011 2.784.058 3.807.045.975.207 1.504.344 1.857.182.466.399.8.748 1.15.35.35.683.566 1.15.748.353.137.882.3 1.857.344 1.054.048 1.37.058 4.041.058h.08c2.597 0 2.917-.01 3.96-.058.976-.045 1.505-.207 1.858-.344.466-.182.8-.398 1.15-.748.35-.35.566-.683.748-1.15.137-.353.3-.882.344-1.857.048-1.055.058-1.37.058-4.041v-.08c0-2.597-.01-2.917-.058-3.96-.045-.976-.207-1.505-.344-1.858a3.097 3.097 0 00-.748-1.15 3.098 3.098 0 00-1.15-.748c-.353-.137-.882-.3-1.857-.344-1.023-.047-1.351-.058-3.807-.058zM12 6.865a5.135 5.135 0 110 10.27 5.135 5.135 0 010-10.27zm0 1.802a3.333 3.333 0 100 6.666 3.333 3.333 0 000-6.666zm5.338-3.205a1.2 1.2 0 110 2.4 1.2 1.2 0 010-2.4z" clip-rule="evenodd" />
                                        </svg>
                                        """)
                                    }
                                    a(class:"text-gray-400 hover:text-gray-500", href:"#") {
                                        span(class: "sr-only") {
                                            "Twitter"
                                        }
                                        Node.raw("""
                                        <svg class="h-6 w-6" fill="currentColor" viewBox="0 0 24 24" aria-hidden="true">
                                            <path d="M8.29 20.251c7.547 0 11.675-6.253 11.675-11.675 0-.178 0-.355-.012-.53A8.348 8.348 0 0022 5.92a8.19 8.19 0 01-2.357.646 4.118 4.118 0 001.804-2.27 8.224 8.224 0 01-2.605.996 4.107 4.107 0 00-6.993 3.743 11.65 11.65 0 01-8.457-4.287 4.106 4.106 0 001.27 5.477A4.072 4.072 0 012.8 9.713v.052a4.105 4.105 0 003.292 4.022 4.095 4.095 0 01-1.853.07 4.108 4.108 0 003.834 2.85A8.233 8.233 0 012 18.407a11.616 11.616 0 006.29 1.84" />
                                        </svg>
                                        """)
                                    }
                                    a(class:"text-gray-400 hover:text-gray-500", href:"#") {
                                        span(class: "sr-only") {
                                            "GitHub"
                                        }
                                        Node.raw("""
                                        <svg class="h-6 w-6" fill="currentColor" viewBox="0 0 24 24" aria-hidden="true">
                                            <path fill-rule="evenodd" d="M12 2C6.477 2 2 6.484 2 12.017c0 4.425 2.865 8.18 6.839 9.504.5.092.682-.217.682-.483 0-.237-.008-.868-.013-1.703-2.782.605-3.369-1.343-3.369-1.343-.454-1.158-1.11-1.466-1.11-1.466-.908-.62.069-.608.069-.608 1.003.07 1.531 1.032 1.531 1.032.892 1.53 2.341 1.088 2.91.832.092-.647.35-1.088.636-1.338-2.22-.253-4.555-1.113-4.555-4.951 0-1.093.39-1.988 1.029-2.688-.103-.253-.446-1.272.098-2.65 0 0 .84-.27 2.75 1.026A9.564 9.564 0 0112 6.844c.85.004 1.705.115 2.504.337 1.909-1.296 2.747-1.027 2.747-1.027.546 1.379.202 2.398.1 2.651.64.7 1.028 1.595 1.028 2.688 0 3.848-2.339 4.695-4.566 4.943.359.309.678.92.678 1.855 0 1.338-.012 2.419-.012 2.747 0 .268.18.58.688.482A10.019 10.019 0 0022 12.017C22 6.484 17.522 2 12 2z" clip-rule="evenodd" />
                                        </svg>
                                        """)
                                    }
                                    a(class:"text-gray-400 hover:text-gray-500", href:"#") {
                                        span(class: "sr-only") {
                                            "YouTube"
                                        }
                                        Node.raw("""
                                        <svg class="h-6 w-6" fill="currentColor" viewBox="0 0 24 24" aria-hidden="true">
                                            <path fill-rule="evenodd" d="M19.812 5.418c.861.23 1.538.907 1.768 1.768C21.998 8.746 22 12 22 12s0 3.255-.418 4.814a2.504 2.504 0 0 1-1.768 1.768c-1.56.419-7.814.419-7.814.419s-6.255 0-7.814-.419a2.505 2.505 0 0 1-1.768-1.768C2 15.255 2 12 2 12s0-3.255.417-4.814a2.507 2.507 0 0 1 1.768-1.768C5.744 5 11.998 5 11.998 5s6.255 0 7.814.418ZM15.194 12 10 15V9l5.194 3Z" clip-rule="evenodd" />
                                        </svg>
                                        """)
                                    }
                                }
                            }
                            div(class: "mt-16 grid grid-cols-2 gap-8 xl:col-span-2 xl:mt-0") {
                                div(class: "md:grid md:grid-cols-2 md:gap-8") {
                                    div() {
                                        h3(class: "text-sm font-semibold leading-6 text-gray-900") {
                                            "Solutions"
                                        }
                                        ul(class: "mt-6 space-y-4", role: "list") {
                                            li() {
                                                a(class: "text-sm leading-6 text-gray-600 hover:text-gray-900", href: "#") {
                                                    "Marketing"
                                                }
                                            }
                                            li() {
                                                a(class: "text-sm leading-6 text-gray-600 hover:text-gray-900", href: "#") {
                                                    "Analytics"
                                                }
                                            }
                                            li() {
                                                a(class: "text-sm leading-6 text-gray-600 hover:text-gray-900", href: "#") {
                                                    "Commerce"
                                                }
                                            }
                                            li() {
                                                a(class: "text-sm leading-6 text-gray-600 hover:text-gray-900", href: "#") {
                                                    "Insights"
                                                }
                                            }
                                        }
                                    }
                                    div(class: "mt-10 md:mt-0") {
                                        h3(class: "text-sm font-semibold leading-6 text-gray-900") {
                                            "Support"
                                        }
                                        ul(class:"mt-6 space-y-4", role: "list") {
                                            li() {
                                                a(class: "text-sm leading-6 text-gray-600 hover:text-gray-900", href: "#") {
                                                    "Pricing"
                                                }
                                            }
                                            li() {
                                                a(class: "text-sm leading-6 text-gray-600 hover:text-gray-900", href: "#") {
                                                    "Documentation"
                                                }
                                            }
                                            li() {
                                                a(class: "text-sm leading-6 text-gray-600 hover:text-gray-900", href: "#") {
                                                    "Guides"
                                                }
                                            }
                                            li() {
                                                a(class: "text-sm leading-6 text-gray-600 hover:text-gray-900", href: "#") {
                                                    "API Status"
                                                }
                                            }
                                        }
                                    }
                                }
                                div(class: "md:grid md:grid-cols-2 md:gap-8") {
                                    div() {
                                        h3(class: "text-sm font-semibold leading-6 text-gray-900") {
                                            "Company"
                                        }
                                        ul(class: "mt-6 space-y-4", role: "list") {
                                            li {
                                                a(class: "text-sm leading-6 text-gray-600 hover:text-gray-900", href: "#") {
                                                    "About"
                                                }
                                            }
                                            li {
                                                a(class: "text-sm leading-6 text-gray-600 hover:text-gray-900", href: "#") {
                                                    "Blog"
                                                }
                                            }
                                            li {
                                                a(class: "text-sm leading-6 text-gray-600 hover:text-gray-900", href: "#") {
                                                    "Jobs"
                                                }
                                            }
                                            li {
                                                a(class: "text-sm leading-6 text-gray-600 hover:text-gray-900", href: "#") {
                                                    "Press"
                                                }
                                            }
                                            li {
                                                a(class: "text-sm leading-6 text-gray-600 hover:text-gray-900", href: "#") {
                                                    "Partners"
                                                }
                                            }
                                        }
                                    }
                                    div(class: "mt-10 md:mt-0") {
                                        h3(class: "text-sm font-semibold leading-6 text-gray-900") {
                                            "Legal"
                                        }
                                        ul(class: "mt-6 space-y-4", role: "list") {
                                            li() {
                                                a(class: "text-sm leading-6 text-gray-600 hover:text-gray-900", href: "#") {
                                                    "Claim"
                                                }
                                            }
                                            li() {
                                                a(class: "text-sm leading-6 text-gray-600 hover:text-gray-900", href: "#") {
                                                    "Privacy"
                                                }
                                            }
                                            li() {
                                                a(class: "text-sm leading-6 text-gray-600 hover:text-gray-900", href: "#") {
                                                    "Terms"
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        div(class: "mt-16 border-t border-gray-900/10 pt-8 sm:mt-20 lg:mt-24") {
                            p(class: "text-xs leading-5 text-gray-500") {
                                Node.raw("&copy;")
                                "2023 Island Home Capital, Inc. All rights reserved."
                            }
                        }
                    }
                }
            }
        }
    }
}