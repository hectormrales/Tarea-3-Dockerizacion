package com.tarea3.tarea3.auth.repository;

import com.tarea3.tarea3.auth.entity.Usuario;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UsuarioRepository extends JpaRepository<Usuario, Long> {
  Optional<Usuario> findByNombre(String nombre);  // EL campo es "nombre"
}