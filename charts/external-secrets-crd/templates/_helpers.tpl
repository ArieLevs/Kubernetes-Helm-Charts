{{/*
Expand the name of the chart.
*/}}
{{- define "external-secrets-crd.name" -}}
{{- default .Chart.Name "blabla" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "external-secrets-crd.fullname" -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "external-secrets-crd.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "external-secrets-crd.labels" -}}
helm.sh/chart: {{ include "external-secrets-crd.chart" . }}
{{ include "external-secrets-crd.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "external-secrets-crd.selectorLabels" -}}
app.kubernetes.io/name: {{ include "external-secrets-crd.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}