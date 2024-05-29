package com.primaria.persistance.entity;

import jakarta.persistence.*;
import lombok.Data;
import lombok.ToString;

@Data
@Entity
@ToString
@Table(name = "padres_de_familia")
public class PadreDeFamiliaEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_padre")
    private Integer idPadre;

    private String nombre;

    private String apellido;

    private String direccion;

    private String telefono;

}
