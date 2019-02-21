# redex-sample
A sample code to reproduce an issue with ReDex bytecode optimizer

# Bug Description:

I want to keep all classes that start with `Animal_`. To ensure this I have added the following proguard-rule

```
-keep class **Animal_** { *; }
```

Even after adding this rule ReDex removes the class.

## Steps to Reproduce the issue

- Clone this repository
- Inspect the `app-release.apk` and observe that it contains the class `com.example.redexsampleapp.Animal_Cat`
- Inspect the `configuration.txt` and observe that it have the following keep rule:

```
-keep class **Animal_** {
        <fields>;
        <methods>;
   }
```

- Execute the script `run_redex.sh`
- Inspect the `app-release-redex.apk` and observe that it does not contain the class `Animal_Cat`
