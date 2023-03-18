package com.leandrotomassini.backend.entity;


import javax.persistence.*;

@Entity
@Table(name = "Perfil_usuario")
public class PerfilUsuario {

    @Id
    @GeneratedValue (strategy = GenerationType.AUTO)
    private Integer id;


    @Column(name = "NOMBRE")
    private String nombre;

    @Column(name ="CARGO")
    private String cargo;

    @Column(name= "INTRO")
    private String intro;

    @Column(name="IMG_URL")
    private String imgUrl;

    @Column(name="PORTADA_URL")
    private String portadaUrl;

    public String getPortadaUrl() {
        return portadaUrl;
    }

    public void setPortadaUrl(String portadaUrl) {
        this.portadaUrl = portadaUrl;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }
}
