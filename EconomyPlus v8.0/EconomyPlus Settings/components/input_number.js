function onlyNumberKey(evt) {
    var ASCIICode = (evt.which) ? evt.which : evt.keyCode
    if (ASCIICode > 31 && (ASCIICode < 48 || ASCIICode > 57))
        return false;
    return true;
}

class InputNumber extends HTMLElement {  
    constructor() {
        super()
        let name = this.getAttribute("name")
        const info = this.getAttribute("info")
        const key = this.getAttribute("key")
        const defaultValue = this.getAttribute("default")
        const allowtext = this.getAttribute("allow-text") ?? false
        
        if (name == null)
            name = key

        const infoContainer = document.createElement("div")
        infoContainer.className = "info"

        const infoTooltipLeft = document.createElement("div")
        infoTooltipLeft.className = "info-tooltip left"

        const tooltipIcon = document.createElement("i")
        tooltipIcon.className = "bx bx-message-rounded-detail"

        const tooltip = document.createElement("div")
        tooltip.className = "tooltip"

        const infoText = document.createElement("p")
        infoText.textContent = info
        
        const container = document.createElement("div")
        container.className = "container"

        const text = document.createElement("h3")
        text.textContent = name
        text.className = "text"

        const input = document.createElement("input")
        if (!allowtext)
            input.onkeypress = onlyNumberKey
        input.className = "input-number-field"

        let value = sessionStorage.getItem(key)
        if (value == null) {
            value = defaultValue ?? 0
            sessionStorage.setItem(key, value)
        }
        input.value = value

        input.addEventListener("change", function onKeyClicked() {
            if (input.value == "" || input.value == undefined)
                input.value = 0
            sessionStorage.setItem(key, input.value)
        })

        tooltip.appendChild(infoText)
        infoContainer.appendChild(infoTooltipLeft)
        infoTooltipLeft.appendChild(tooltipIcon)
        infoTooltipLeft.appendChild(tooltip)
        container.appendChild(infoContainer)
        container.appendChild(text)
        container.appendChild(input)
        this.appendChild(container)
    }
}
customElements.define('input-number', InputNumber);