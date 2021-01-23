import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';

@Component({
  selector: 'app-signup',
  templateUrl: './signup.component.html',
  styleUrls: ['./signup.component.sass']
})
export class SignupComponent implements OnInit {

  loginForm!: FormGroup;
  isLoading = false;
  error: string | undefined;

  constructor(
    private formBuilder: FormBuilder,
  ) {
    this.createForm();
  }

  ngOnInit() { }

  login() {
    this.isLoading = true;
    setTimeout(() => { this.isLoading = false; }, 3000);
  }

  private createForm() {
    this.loginForm = this.formBuilder.group({
      username: ['', Validators.required],
      password: ['', Validators.required],
      remember: true,
    });
  }

}
