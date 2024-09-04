object daenerys{
    const property inventario = #{}
    const property historialItems = #{}
    var property capacidad = 2

    method lugar() {return !(inventario.size() == capacidad)}

    method agregar(item) {
        historialItems.add(item)
        if (self.lugar()) {
            if (inventario.contains(item)) {
                return "ya tiene ese item"
            }
            else {
                inventario.add(item)
                return true
            }
            }
        else {return self.lugar()}
    }

    method depositar(lugar) {
        lugar.guardarAqui(inventario)
        inventario.clear()
    }

    method agarre() = inventario + castillo.rocaDragon()

    method tengo(item) = self.agarre().contains(item)

}

object castillo {
    const property rocaDragon = []

    method guardarAqui(lista) {
        rocaDragon.addAll(lista)
    }
}

object espada {}
object libro {}
object collar {}
object armadura {}