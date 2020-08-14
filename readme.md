# rust-app

## Why?

There isn't much more Rust hosting out there. I want to fast setup Rust-lang environment with problem any problems with exporting $PATH or repeating again same command to recover my application with all necessary installations. 

For me its CI/CD heaven. Rust can be installed in the user space at linux vm. No need for sudo/root. If are looking for do it separately, this feature may not be required, but if you want do it in single run this may be great option.


To install rust environment:
```
npx rust-app rustup-init
```

To call any command with the unlimited params:
```
npx rust-app cargo
npx rust-app rustc -V
npx rust-app rustup show
...
```
