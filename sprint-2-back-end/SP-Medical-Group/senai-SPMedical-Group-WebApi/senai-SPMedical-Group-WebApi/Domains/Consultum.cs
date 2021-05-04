using System;
using System.Collections.Generic;

#nullable disable

namespace senai_SPMedical_Group_WebApi.Domains
{
    public partial class Consultum
    {
        public int IdConsulta { get; set; }
        public int? IdPaciente { get; set; }
        public int? IdMedico { get; set; }
        public DateTime DataConsulta { get; set; }
        public string Situacao { get; set; }

        public virtual Medico IdMedicoNavigation { get; set; }
        public virtual Paciente IdPacienteNavigation { get; set; }
    }
}
