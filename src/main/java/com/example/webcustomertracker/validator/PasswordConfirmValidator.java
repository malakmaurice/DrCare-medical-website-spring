package com.example.webcustomertracker.validator;

import com.example.webcustomertracker.entity.user;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class PasswordConfirmValidator implements ConstraintValidator<PasswordConfirm,user> {
    @Override
    public void initialize(PasswordConfirm constraintAnnotation) {
    }

    @Override
    public boolean isValid(user o, ConstraintValidatorContext constraintValidatorContext) {

        return o.getPass().equals(o.getPassConfirm());
    }
}
