﻿using senai_gufi_webApi.Domains;

namespace senai_gufi_webApi.Interfaces
{
    /// <summary>
    /// Interface responsável pelo UsuarioRepository
    /// </summary>
    interface IUsuarioRepository
    {
        /// <summary>
        /// Valida o usuário
        /// </summary>
        /// <param name="email">e-mail do usuário</param>
        /// <param name="senha">senha do usuário</param>
        /// <returns>Um objeto do tipo Usuario que foi buscado</returns>
        Usuario Login(string email, string senha);
    }
}
