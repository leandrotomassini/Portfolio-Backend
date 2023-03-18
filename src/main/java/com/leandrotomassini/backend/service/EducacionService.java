package com.leandrotomassini.backend.service;

import com.leandrotomassini.backend.entity.Educacion;
import com.leandrotomassini.backend.repository.EducacionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class EducacionService {

    @Autowired
    EducacionRepository educacionRepository;

    public Iterable<Educacion> obtenerTodos(){
        Iterable<Educacion> educacionLista = educacionRepository.findAll();
        return educacionLista;
    }


}
