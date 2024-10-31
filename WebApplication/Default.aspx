<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Conteudo" runat="server">

    <!-- Flexslider.com -->
    <div class="flexslider">
        <ul class="slides">
            <li>
                <a href="https://coodesh.com/blog/carreiras/quantas-linguagens-de-programacao-existem-e-quais-sao-mais-populares/" target="_blank"><img src="Images/1.png"/></a>
            </li>
            <li>
                <a href="https://www.w3schools.com/js/default.asp" target="_blank"><img src="Images/2.png"/></a>
            </li>
            <li>
                 <a href="https://www.w3schools.com/cs/index.php" target="_blank"><img src="Images/3.png"/></a>
            </li>
        </ul>
    </div>

    <script>
        // Can also be used with $(document).ready()
        $(window).load(function () {
            $('.flexslider').flexslider({
                animation: "slide"
            });
        });
    </script>

        <div class="row margin-top-60">

        <div class="col-3">
            <div class="box border margin-right-20 card">
                <div>
                    <img width="100%" src="Images/z3.png" class="image-card" />
                </div>

                <div style="display: grid">
                    <h1 style="min-height: 73px;display: flex;align-items: center; justify-content: center" class="padding-10 text-align-center">As mais utilizadas </h1>

                    <div class="padding-20">
                        <div style="max-height: 530px" class="fade-text">
                            As linguagens de programação mais utilizadas podem variar dependendo do contexto
                                (desenvolvimento web, mobile, ciência de dados, etc.), mas aqui estão algumas das mais
                                populares em geral:

                                <ul>
                                    <li class="padding-li">
                                        <strong>Pyhon:</strong> É bastante popular, principalmente por ser open source e
                                        de fácil aprendizado. Além de permitir uma grande acessibilidade e facilidade de
                                        implementação em diversos meios.
                                    </li>
                                    <li class="padding-li">
                                        <strong>Java:</strong> Permite que os programas desenvolvidos sejam compilados
                                        para<!-- aparelhos distintos de maneira mais fácil. Ademais -->...
                                    </li>
                                </ul> 
                        </div>

                        <div class="text-align-center">
                            <a class="btn-saiba-mais" target="_blank"
                                href="https://www.alura.com.br/empresas/artigos/linguagens-de-programacao-mais-usadas?srsltid=AfmBOoo-mOKFtKETOi881sG15eL_sdHZIAKobLLrrBJ6pJMgBOMdjK0r">Saiba Mais</a>
                        </div>
                    </div>

                </div>

            </div>
        </div>

        <div class="col-3">
            <div class="box border margin-left-right-10 card">
                <div>
                    <img width="100%" src="Images/z2.png" class="image-card" />
                </div>

                <h1 class="padding-10 text-align-center">Máquina do tempo: o começo da computação
                </h1>

                <div class="padding-20">

                    <div style="max-height: 530px" class="fade-text">
                        O computador de hoje passou por diversas mudanças durante os anos, sendo aperfeiçoado ao
                                longo do tempo e se transformando no que conhecemos atualmente.

                                <ul>
                                    <li class="padding-li">
                                        <strong>Primeira Geração (1951-1959):</strong> Esse computadores funcionavam por
                                        meio de circuitos e válvulas eletrônicas. Eram restritos em seu uso e era
                                        imensos.
                                    </li>
                                    <li class="padding-li">
                                        <strong>Segunda Geração (1959-1965):</strong>
                                    Nesse momento os transistores, importantes dispositivos semicondutores, foram
                                        inventados...<!--O que possibilitou-->
                                    </li>
                                </ul>

                    </div>

                    <div class="text-align-center">
                        <a class="btn-saiba-mais" target="_blank"
                            href="https://www.todamateria.com.br/historia-e-evolucao-dos-computadores/">Saiba
                                    Mais</a>

                    </div>
                </div>

            </div>
        </div>

        <div class="col-3">
            <div class="box border margin-left-right-10 card">
                <div>
                    <img width="100%" src="Images/z1.png" class="image-card" />
                </div>

                <h1 class="padding-10 text-align-center">Python: A linguagem da atualidade
                </h1>

                <div class="padding-20">

                    <div style="max-height: 530px" class="fade-text">
                        Python é uma linguagem de programação de uso geral. Isso significa que é uma linguagem
                                que funciona para criar uma grande variedade de aplicações diferentes.
                                <br/>
                                <strong style="">Vamos citar algumas características da linguagem:</strong>

                                <ul>
                                    <li class="padding-li">
                                        <strong>Linguagem interpretada:</strong> Uma linguagem interpretada é uma
                                        linguagem que não precisa passar por processo de compilação. O que possibilita
                                        uma maior velocidade de desenvolvimento.
                                    </li>
                                    <li class="padding-li">
                                        <strong>Sintaxe simples</strong> Sua sintaxe é muito...
                                    </li>
                                </ul>

                    </div>

                    <div class="text-align-center">
                        <a class="btn-saiba-mais" target="_blank"
                            href="https://www.alura.com.br/artigos/python?srsltid=AfmBOorIU1StFODcZVZiRGsjsAAhdh3E3DM7U0EbiwnBboKbTjbxwH-6">Saiba
                                    Mais</a>
                    </div>
                </div>


            </div>
        </div>

        <div class="col-3">
            <div class="box border margin-left-20 card">
                <div>
                    <img width="100%" src="Images/z4.png" class="image-card" />
                </div>

                <h1 class="padding-10 text-align-center">O futuro com inteligência artificial
                </h1>

                <div class="padding-20">

                    <div style="max-height: 530px" class="fade-text">
                        O futuro da Inteligência Artificial (IA), desde já, mostra-se bastante promissor. Essa
                                ferramenta tecnológica ganhou força nos últimos anos e é uma das principais responsáveis
                                pelo desenvolvimento da transformação digital e de novas tecnologias na década.

                                <ul>
                                    <li class="ia">
                                        <strong>Como fica o futuro da Inteligência Artificial?</strong><br/>
                                        O futuro estimado para a Inteligência Artificial é semelhante a toda a sua
                                        trajetória: crescimento constante e desenvolvimento de técnicas mais...<!--avançadas, que-->
                                    </li>
                                </ul>

                    </div>

                    <div class="text-align-center">
                        <a class="btn-saiba-mais" target="_blank"
                            href="https://blog.randoncorp.com/futuro-da-inteligencia-artificial/#:~:text=O%20futuro%20estimado%20para%20a,pelas%20empresas%20e%20pelas%20pessoas.">Saiba
                                    Mais</a>
                    </div>
                </div>


            </div>

        </div>
    </div>

        
</asp:Content>
