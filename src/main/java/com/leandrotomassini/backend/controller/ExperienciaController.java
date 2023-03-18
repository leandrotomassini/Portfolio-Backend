package com.leandrotomassini.backend.controller;


import com.leandrotomassini.backend.entity.Experiencia;
import com.leandrotomassini.backend.repository.ExperienciaRepository;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;


@RestController
@CrossOrigin("*")
//@RequestMapping("/api")
public class ExperienciaController {

    private final ExperienciaRepository experienciaRepository;

    public ExperienciaController(final ExperienciaRepository experienciaRepository) {
        this.experienciaRepository = experienciaRepository;

    }

    @GetMapping("/api/experiencia")
    public Iterable<Experiencia> getAllExperiencia() {
        return this.experienciaRepository.findAll();
    }

    @GetMapping("/api/experiencia/{id}")
    public Optional<Experiencia> getExperienciaById(@PathVariable("id") Integer id) {
        return this.experienciaRepository.findById(id);
    }

    @PostMapping("/editor/experiencia")
    @PreAuthorize("hasRole('ADMIN')")
    public Experiencia createNewExperiencia(@RequestBody Experiencia experiencia) {
        Experiencia newExperiencia = this.experienciaRepository.save(experiencia);
        return newExperiencia;
    }

    @PutMapping("/editor/experiencia/{id}")
    @PreAuthorize("hasRole('ADMIN')")
    public Experiencia updateExperiencia(
            @PathVariable("id") Integer id,
            @RequestBody Experiencia exp
    ) {
        Optional<Experiencia> experienciaToUpdateOptional = this.experienciaRepository.findById(id);
        if (!experienciaToUpdateOptional.isPresent()) {
            return null;
        }
        Experiencia experienciaToUpdate = experienciaToUpdateOptional.get();
        if (exp.getCargo() != null) {
            experienciaToUpdate.setCargo(exp.getCargo());
        }
        if (exp.getEmpresa() != null) {
            experienciaToUpdate.setEmpresa(exp.getEmpresa());
        }
        if (exp.getImgUrl() != null) {
            experienciaToUpdate.setImgUrl(exp.getImgUrl());
        }
        if (exp.getFechaDesde() != null) {
            experienciaToUpdate.setFechaDesde(exp.getFechaDesde());
        }
        if (exp.getFechaHasta() != null) {
            experienciaToUpdate.setFechaHasta(exp.getFechaHasta());
        }
        if (exp.getDescripcion() != null) {
            experienciaToUpdate.setDescripcion(exp.getDescripcion());
        }
        if (exp.getOrden() != null) {
            experienciaToUpdate.setOrden(exp.getOrden());
        }
        Experiencia updatedExperiencia = this.experienciaRepository.save(experienciaToUpdate);
        return updatedExperiencia;
    }

    @DeleteMapping("/editor/experiencia/{id}")
    @PreAuthorize("hasRole('ADMIN')")

    public Experiencia deleteExperiencia(@PathVariable("id") Integer id){
        Optional<Experiencia> experienciaToDeleteOptional = this.experienciaRepository.findById(id);

        if(!experienciaToDeleteOptional.isPresent()){
            return null;
        }

        Experiencia experienciaToDelete = experienciaToDeleteOptional.get();

        this.experienciaRepository.delete(experienciaToDelete);
        return experienciaToDelete;
    }
}

