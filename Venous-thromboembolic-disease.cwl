cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  venous-thromboembolic-disease-excl-pe---primary:
    run: venous-thromboembolic-disease-excl-pe---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  nervous-venous-thromboembolic-disease-excl-pe---primary:
    run: nervous-venous-thromboembolic-disease-excl-pe---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: venous-thromboembolic-disease-excl-pe---primary/output
  venous-thromboembolic-disease-excl-pe-thrombosis---primary:
    run: venous-thromboembolic-disease-excl-pe-thrombosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: nervous-venous-thromboembolic-disease-excl-pe---primary/output
  venous-thromboembolic-disease-excl-pe-history---primary:
    run: venous-thromboembolic-disease-excl-pe-history---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: venous-thromboembolic-disease-excl-pe-thrombosis---primary/output
  venous-thromboembolic-disease-excl-pe-phlebitis---primary:
    run: venous-thromboembolic-disease-excl-pe-phlebitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: venous-thromboembolic-disease-excl-pe-history---primary/output
  venous-thromboembolic-disease-excl-pe-level---primary:
    run: venous-thromboembolic-disease-excl-pe-level---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: venous-thromboembolic-disease-excl-pe-phlebitis---primary/output
  jugular-venous-thromboembolic-disease-excl-pe---primary:
    run: jugular-venous-thromboembolic-disease-excl-pe---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: venous-thromboembolic-disease-excl-pe-level---primary/output
  external-venous-thromboembolic-disease-excl-pe---primary:
    run: external-venous-thromboembolic-disease-excl-pe---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: jugular-venous-thromboembolic-disease-excl-pe---primary/output
  longitudinal-venous-thromboembolic-disease-excl-pe---primary:
    run: longitudinal-venous-thromboembolic-disease-excl-pe---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: external-venous-thromboembolic-disease-excl-pe---primary/output
  cavernous-venous-thromboembolic-disease-excl-pe---primary:
    run: cavernous-venous-thromboembolic-disease-excl-pe---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: longitudinal-venous-thromboembolic-disease-excl-pe---primary/output
  femoral-venous-thromboembolic-disease-excl-pe---primary:
    run: femoral-venous-thromboembolic-disease-excl-pe---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: cavernous-venous-thromboembolic-disease-excl-pe---primary/output
  lower-venous-thromboembolic-disease-excl-pe---primary:
    run: lower-venous-thromboembolic-disease-excl-pe---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: femoral-venous-thromboembolic-disease-excl-pe---primary/output
  tibial-venous-thromboembolic-disease-excl-pe---primary:
    run: tibial-venous-thromboembolic-disease-excl-pe---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: lower-venous-thromboembolic-disease-excl-pe---primary/output
  portal-venous-thromboembolic-disease-excl-pe---primary:
    run: portal-venous-thromboembolic-disease-excl-pe---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: tibial-venous-thromboembolic-disease-excl-pe---primary/output
  venous-thromboembolic-disease-excl-pe-related---primary:
    run: venous-thromboembolic-disease-excl-pe-related---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: portal-venous-thromboembolic-disease-excl-pe---primary/output
  intracranial-venous-thromboembolic-disease-excl-pe---primary:
    run: intracranial-venous-thromboembolic-disease-excl-pe---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: venous-thromboembolic-disease-excl-pe-related---primary/output
  venous-thromboembolic-disease-excl-pe-iliac---primary:
    run: venous-thromboembolic-disease-excl-pe-iliac---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: intracranial-venous-thromboembolic-disease-excl-pe---primary/output
  renal-venous-thromboembolic-disease-excl-pe---primary:
    run: renal-venous-thromboembolic-disease-excl-pe---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: venous-thromboembolic-disease-excl-pe-iliac---primary/output
  venous-thromboembolic-disease-excl-pe-transverse---primary:
    run: venous-thromboembolic-disease-excl-pe-transverse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: renal-venous-thromboembolic-disease-excl-pe---primary/output
  venous-thromboembolic-disease-excl-pe-administration---primary:
    run: venous-thromboembolic-disease-excl-pe-administration---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: venous-thromboembolic-disease-excl-pe-transverse---primary/output
  nonpyogenic-venous-thromboembolic-disease-excl-pe---primary:
    run: nonpyogenic-venous-thromboembolic-disease-excl-pe---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: venous-thromboembolic-disease-excl-pe-administration---primary/output
  internal-venous-thromboembolic-disease-excl-pe---primary:
    run: internal-venous-thromboembolic-disease-excl-pe---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: nonpyogenic-venous-thromboembolic-disease-excl-pe---primary/output
  venous-thromboembolic-disease-excl-pe-sinus---primary:
    run: venous-thromboembolic-disease-excl-pe-sinus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: internal-venous-thromboembolic-disease-excl-pe---primary/output
  cerebral-venous-thromboembolic-disease-excl-pe---primary:
    run: cerebral-venous-thromboembolic-disease-excl-pe---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: venous-thromboembolic-disease-excl-pe-sinus---primary/output
  venous---primary:
    run: venous---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: cerebral-venous-thromboembolic-disease-excl-pe---primary/output
  venous-thromboembolic-disease-excl-pe-buddchiari---primary:
    run: venous-thromboembolic-disease-excl-pe-buddchiari---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: venous---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: venous-thromboembolic-disease-excl-pe-buddchiari---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
