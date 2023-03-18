package com.leandrotomassini.backend.entity;


import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "Proyectos")
@Getter
@Setter
public class Proyectos {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    @Column (name = "TITULO")
    private String titulo;

    @Column (name = "IMG_URL")
    private String imgUrl;

    @Column (name = "DESCRIPCION")
    private String descripcion;

    @Column (name = "TECNOLOGIAS")
    private String tecnologias;

    @Column (name = "PROYECTO_URL")
    private String proyectoUrl;

    @Column (name = "SOURCECODE_URL")
    private String sourceCodeUrl;

    @Column (name = "ORDEN")
    private Integer orden;
}
