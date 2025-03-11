class Pregunta {
  final String texto;
  final String tipo; // "texto", "opcion" o "multiple"
  final List<String> opciones;

  Pregunta({required this.texto, required this.tipo, this.opciones = const []});
}

List<List<Pregunta>> preguntasPorSeccion = [
  [
    Pregunta(texto: "¿Cuál es tu nombre?", tipo: "texto"),
    Pregunta(
        texto: "¿Cuál es tu género?",
        tipo: "opcion",
        opciones: ["Masculino", "Femenino", "Otro"]),
    Pregunta(
        texto: "¿Qué deportes practicas?",
        tipo: "multiple",
        opciones: ["Fútbol", "Baloncesto", "Natación", "Ciclismo"]),
  ],
  // Adulto mayor
  [
    Pregunta(texto: "¿Cuál es tu nombre?", tipo: "texto"),
    Pregunta(texto: "¿Cuál es tu nombre?", tipo: "texto"),
    Pregunta(
        texto: "¿Cuál es tu género?",
        tipo: "opcion",
        opciones: ["Masculino", "Femenino"]),
    Pregunta(
        texto: "¿Qué deportes practicas?",
        tipo: "multiple",
        opciones: ["Fútbol", "Baloncesto", "Natación", "Ciclismo"]),
    Pregunta(
        texto: "¿Qué deportes practicas?",
        tipo: "multiple",
        opciones: ["Fútbol", "Baloncesto", "Natación", "Ciclismo"]),
  ],
  // Desarrollo Infantil
  [
    Pregunta(texto: "¿Cuál es tu nombre?", tipo: "texto"),
    Pregunta(
        texto: "¿Cuál es tu género?",
        tipo: "opcion",
        opciones: ["Femenino", "Otro"]),
    Pregunta(
        texto: "¿Qué deportes practicas?",
        tipo: "multiple",
        opciones: ["Fútbol", "Baloncesto", "Natación", "Ciclismo"]),
  ],
];
