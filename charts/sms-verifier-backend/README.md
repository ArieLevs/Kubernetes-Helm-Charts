Installing on local host:
```bash
helm upgrade sms-verifier \
  --install . \
  --namespace sms-verifier \
  -f values.yaml
