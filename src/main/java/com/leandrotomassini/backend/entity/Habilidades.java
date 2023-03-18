package com.leandrotomassini.backend.entity;


import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "Habilidades")
@Getter
@Setter

public class Habilidades {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    @Column(name = "TITULO")
    private String titulo;

    @Column( name = "AVANCE")
    private Integer avance;

    @Column (name = "ORDEN")
    private Integer orden;
}
