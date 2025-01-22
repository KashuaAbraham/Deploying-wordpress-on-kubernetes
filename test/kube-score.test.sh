#!/bin/bash
kube-score score path/to/your/kubernetes/manifests | tee kube-score-output.txt
if grep -q "FAIL" kube-score-output.txt; then
  echo "Kube-score found issues in the manifests."
  exit 1
else
  echo "Kube-score passed without issues."
  exit 0
fi