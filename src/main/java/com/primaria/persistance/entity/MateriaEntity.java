package com.primaria.persistance.entity;

import jakarta.persistence.*;
import lombok.Data;
import lombok.ToString;

@Data
@Entity
@ToString
@Table(name = "Materias")
public class MateriaEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_materia")
    private Integer idMateria;

    private String nombre;

    @ManyToOne
    @JoinColumn(name = "maestro_id")
    private MaestroEntity maestro;



}
