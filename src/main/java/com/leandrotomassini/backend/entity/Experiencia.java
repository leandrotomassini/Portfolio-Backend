package com.leandrotomassini.backend.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;


    @Entity
    @Table(name = "Experiencia")
    @Getter
    @Setter
    public class Experiencia {

        @Id
        @GeneratedValue(strategy = GenerationType.AUTO)
        private Integer id;

        @Column(name = "CARGO")
        private String cargo;

        @Column(name = "EMPRESA")
        private String empresa;

        @Column(name = "IMG_URL")
        private String imgUrl;

        @Column(name = "FECHA_DESDE")
        private String fechaDesde;

        @Column(name = "FECHA_HASTA")
        private String fechaHasta;

        @Column(name = "DESCRIPCION")
        private String descripcion;

        @Column (name = "ORDEN")
        private Integer orden;

    }