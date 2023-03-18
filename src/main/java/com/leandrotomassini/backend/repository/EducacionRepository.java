package com.leandrotomassini.backend.repository;


import com.leandrotomassini.backend.entity.Educacion;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EducacionRepository extends CrudRepository<Educacion, Integer> {


}
