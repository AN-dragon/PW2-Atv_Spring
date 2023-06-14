package application.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import jakarta.persistence.Id;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;


@Entity
@Table(name="jogos")
public class Jogo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    private int id;
    private String titulo;
    private int anoDeLancamento;

    //get e set do id
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    //get e set do titulo
    public String getTitulo() {
        return titulo;
    }
    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    //get e set do anoDeLancamento
    public int getAnoDeLancamento() {
        return anoDeLancamento;
    }
    public void setAnoDeLancamento(int anoDeLancamento) {
        this.anoDeLancamento = anoDeLancamento;
    }
}