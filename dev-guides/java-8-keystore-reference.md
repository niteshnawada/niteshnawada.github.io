# Java 8 Custom Truststore Reference (Windows CMD / Git Bash)

## Truststore Location

### Windows
```text
C:\Users\kumarn\.bin\cacerts
```

### Git Bash
```text
/c/Users/kumarn/.bin/cacerts
```

---

## List All Certificates

### Windows CMD

```cmd
"C:\Program Files\Java\jdk1.8.0_491\bin\keytool.exe" -list ^
-keystore "C:\Users\kumarn\.bin\cacerts" ^
-storepass changeit
```

### Git Bash

```bash
"/c/Program Files/Java/jdk1.8.0_491/bin/keytool.exe" -list \
-keystore "/c/Users/kumarn/.bin/cacerts" \
-storepass changeit
```

---

## List All Certificates (Verbose)

### Windows CMD

```cmd
"C:\Program Files\Java\jdk1.8.0_491\bin\keytool.exe" -list -v ^
-keystore "C:\Users\kumarn\.bin\cacerts" ^
-storepass changeit
```

### Git Bash

```bash
"/c/Program Files/Java/jdk1.8.0_491/bin/keytool.exe" -list -v \
-keystore "/c/Users/kumarn/.bin/cacerts" \
-storepass changeit
```

---

## Search for a Certificate

### Windows CMD

```cmd
"C:\Program Files\Java\jdk1.8.0_491\bin\keytool.exe" -list ^
-keystore "C:\Users\kumarn\.bin\cacerts" ^
-storepass changeit | findstr /i vodacom
```

### Git Bash

```bash
"/c/Program Files/Java/jdk1.8.0_491/bin/keytool.exe" -list \
-keystore "/c/Users/kumarn/.bin/cacerts" \
-storepass changeit | grep -i vodacom
```

---

## View a Specific Certificate

### Windows CMD

```cmd
"C:\Program Files\Java\jdk1.8.0_491\bin\keytool.exe" -list -v ^
-alias vodacom-subca ^
-keystore "C:\Users\kumarn\.bin\cacerts" ^
-storepass changeit
```

### Git Bash

```bash
"/c/Program Files/Java/jdk1.8.0_491/bin/keytool.exe" -list -v \
-alias vodacom-subca \
-keystore "/c/Users/kumarn/.bin/cacerts" \
-storepass changeit
```

---

## Export Server Certificate

### Git Bash

```bash
openssl s_client \
-connect newdomain.com:443 \
-servername newdomain.com \
< /dev/null 2>/dev/null \
| openssl x509 -outform PEM > newdomain.crt
```

### Windows CMD

```cmd
openssl s_client -connect newdomain.com:443 -showcerts
```

Copy the certificate block into:

```text
newdomain.crt
```

---

## Inspect Certificate File

### Windows CMD

```cmd
"C:\Program Files\Java\jdk1.8.0_491\bin\keytool.exe" -printcert ^
-file "newdomain.crt"
```

### Git Bash

```bash
"/c/Program Files/Java/jdk1.8.0_491/bin/keytool.exe" -printcert \
-file "newdomain.crt"
```

---

## Import Certificate

### Windows CMD

```cmd
"C:\Program Files\Java\jdk1.8.0_491\bin\keytool.exe" -importcert ^
-alias newdomain ^
-file "newdomain.crt" ^
-keystore "C:\Users\kumarn\.bin\cacerts" ^
-storepass changeit
```

### Git Bash

```bash
"/c/Program Files/Java/jdk1.8.0_491/bin/keytool.exe" -importcert \
-alias newdomain \
-file "newdomain.crt" \
-keystore "/c/Users/kumarn/.bin/cacerts" \
-storepass changeit
```

---

## Import Certificate (Silent)

### Windows CMD

```cmd
"C:\Program Files\Java\jdk1.8.0_491\bin\keytool.exe" -importcert ^
-alias newdomain ^
-file "newdomain.crt" ^
-keystore "C:\Users\kumarn\.bin\cacerts" ^
-storepass changeit ^
-noprompt
```

### Git Bash

```bash
"/c/Program Files/Java/jdk1.8.0_491/bin/keytool.exe" -importcert \
-alias newdomain \
-file "newdomain.crt" \
-keystore "/c/Users/kumarn/.bin/cacerts" \
-storepass changeit \
-noprompt
```

---

## Delete Certificate

### Windows CMD

```cmd
"C:\Program Files\Java\jdk1.8.0_491\bin\keytool.exe" -delete ^
-alias newdomain ^
-keystore "C:\Users\kumarn\.bin\cacerts" ^
-storepass changeit
```

### Git Bash

```bash
"/c/Program Files/Java/jdk1.8.0_491/bin/keytool.exe" -delete \
-alias newdomain \
-keystore "/c/Users/kumarn/.bin/cacerts" \
-storepass changeit
```

---

## Verify Import

### Windows CMD

```cmd
"C:\Program Files\Java\jdk1.8.0_491\bin\keytool.exe" -list -v ^
-alias newdomain ^
-keystore "C:\Users\kumarn\.bin\cacerts" ^
-storepass changeit
```

### Git Bash

```bash
"/c/Program Files/Java/jdk1.8.0_491/bin/keytool.exe" -list -v \
-alias newdomain \
-keystore "/c/Users/kumarn/.bin/cacerts" \
-storepass changeit
```

---

## Run Application with Custom Truststore

### Windows CMD

```cmd
set JAVA_OPTS=-Djavax.net.ssl.trustStore=C:\Users\kumarn\.bin\cacerts -Djavax.net.ssl.trustStorePassword=changeit
```

### Git Bash

```bash
export JAVA_OPTS="-Djavax.net.ssl.trustStore=/c/Users/kumarn/.bin/cacerts -Djavax.net.ssl.trustStorePassword=changeit"
```

### Direct JVM Arguments

```text
-Djavax.net.ssl.trustStore=C:\Users\kumarn\.bin\cacerts
-Djavax.net.ssl.trustStorePassword=changeit
```

---

## SSL Debugging

### Windows CMD

```cmd
set JAVA_OPTS=-Djavax.net.debug=ssl,handshake,trustmanager
```

### Git Bash

```bash
export JAVA_OPTS="-Djavax.net.debug=ssl,handshake,trustmanager"
```

### Direct JVM Arguments

```text
-Djavax.net.debug=ssl,handshake,trustmanager
```
