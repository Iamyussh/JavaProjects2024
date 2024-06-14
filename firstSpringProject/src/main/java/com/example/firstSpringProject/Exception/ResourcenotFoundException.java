package com.example.firstSpringProject.Exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(value = HttpStatus.NOT_FOUND)
public class ResourcenotFoundException {
    public void  ResourceNotFoundException(String message){

    }

}
