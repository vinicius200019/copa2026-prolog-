% ============================================================
% copa2026.pl
% Base de conhecimento da Copa do Mundo FIFA 2026
% (EUA, Mexico e Canada) - primeira Copa com 48 selecoes
% em 12 grupos (A ate L).
%
% Fato base: selecao(Pais, Confederacao).
% Confederacoes:
%   conmebol  - America do Sul
%   uefa      - Europa
%   concacaf  - America do Norte/Central e Caribe
%   caf       - Africa
%   afc       - Asia
%   ofc       - Oceania
%
% Vagas de repescagem ja definidas e substituidas pelos
% paises classificados.
% ============================================================

% ------------------------------------------------------------
% GRUPO A
% ------------------------------------------------------------
selecao(mexico, concacaf).
selecao(africa_do_sul, caf).
selecao(coreia_do_sul, afc).
selecao(tchequia, uefa).

% ------------------------------------------------------------
% GRUPO B
% ------------------------------------------------------------
selecao(canada, concacaf).
selecao(catar, afc).
selecao(suica, uefa).
selecao(bosnia, uefa).

% ------------------------------------------------------------
% GRUPO C
% ------------------------------------------------------------
selecao(brasil, conmebol).
selecao(marrocos, caf).
selecao(haiti, concacaf).
selecao(escocia, uefa).

% ------------------------------------------------------------
% GRUPO D
% ------------------------------------------------------------
selecao(estados_unidos, concacaf).
selecao(paraguai, conmebol).
selecao(australia, afc).
selecao(turquia, uefa).

% ------------------------------------------------------------
% GRUPO E
% ------------------------------------------------------------
selecao(alemanha, uefa).
selecao(curacao, concacaf).
selecao(costa_do_marfim, caf).
selecao(equador, conmebol).

% ------------------------------------------------------------
% GRUPO F
% ------------------------------------------------------------
selecao(holanda, uefa).
selecao(japao, afc).
selecao(tunisia, caf).
selecao(suecia, uefa).

% ------------------------------------------------------------
% GRUPO G
% ------------------------------------------------------------
selecao(belgica, uefa).
selecao(egito, caf).
selecao(ira, afc).
selecao(nova_zelandia, ofc).

% ------------------------------------------------------------
% GRUPO H
% ------------------------------------------------------------
selecao(espanha, uefa).
selecao(cabo_verde, caf).
selecao(arabia_saudita, afc).
selecao(uruguai, conmebol).

% ------------------------------------------------------------
% GRUPO I
% ------------------------------------------------------------
selecao(franca, uefa).
selecao(senegal, caf).
selecao(noruega, uefa).
selecao(iraque, afc).

% ------------------------------------------------------------
% GRUPO J
% ------------------------------------------------------------
selecao(argentina, conmebol).
selecao(argelia, caf).
selecao(austria, uefa).
selecao(jordania, afc).

% ------------------------------------------------------------
% GRUPO K
% ------------------------------------------------------------
selecao(portugal, uefa).
selecao(uzbequistao, afc).
selecao(colombia, conmebol).
selecao(republica_do_congo, caf).

% ------------------------------------------------------------
% GRUPO L
% ------------------------------------------------------------
selecao(inglaterra, uefa).
selecao(croacia, uefa).
selecao(gana, caf).
selecao(panama, concacaf).

% ============================================================
% ENFRENTAMENTOS DA FASE DE GRUPOS: enfrentamento(Time1, Time2).
% Cada grupo (4 times) gera 6 confrontos (todos contra todos).
% Declarados em UM sentido apenas; a regra 'joga_contra/2'
% no final trata a simetria (A x B  =>  B x A).
% ------------------------------------------------------------

% ---------- GRUPO A ----------
enfrentamento(mexico, africa_do_sul).
enfrentamento(mexico, coreia_do_sul).
enfrentamento(mexico, tchequia).
enfrentamento(africa_do_sul, coreia_do_sul).
enfrentamento(africa_do_sul, tchequia).
enfrentamento(coreia_do_sul, tchequia).

% ---------- GRUPO B ----------
enfrentamento(canada, catar).
enfrentamento(canada, suica).
enfrentamento(canada, bosnia).
enfrentamento(catar, suica).
enfrentamento(catar, bosnia).
enfrentamento(suica, bosnia).

% ---------- GRUPO C ----------
enfrentamento(brasil, marrocos).
enfrentamento(brasil, haiti).
enfrentamento(brasil, escocia).
enfrentamento(marrocos, haiti).
enfrentamento(marrocos, escocia).
enfrentamento(haiti, escocia).

% ---------- GRUPO D ----------
enfrentamento(estados_unidos, paraguai).
enfrentamento(estados_unidos, australia).
enfrentamento(estados_unidos, turquia).
enfrentamento(paraguai, australia).
enfrentamento(paraguai, turquia).
enfrentamento(australia, turquia).

% ---------- GRUPO E ----------
enfrentamento(alemanha, curacao).
enfrentamento(alemanha, costa_do_marfim).
enfrentamento(alemanha, equador).
enfrentamento(curacao, costa_do_marfim).
enfrentamento(curacao, equador).
enfrentamento(costa_do_marfim, equador).

% ---------- GRUPO F ----------
enfrentamento(holanda, japao).
enfrentamento(holanda, tunisia).
enfrentamento(holanda, suecia).
enfrentamento(japao, tunisia).
enfrentamento(japao, suecia).
enfrentamento(tunisia, suecia).

% ---------- GRUPO G ----------
enfrentamento(belgica, egito).
enfrentamento(belgica, ira).
enfrentamento(belgica, nova_zelandia).
enfrentamento(egito, ira).
enfrentamento(egito, nova_zelandia).
enfrentamento(ira, nova_zelandia).

% ---------- GRUPO H ----------
enfrentamento(espanha, cabo_verde).
enfrentamento(espanha, arabia_saudita).
enfrentamento(espanha, uruguai).
enfrentamento(cabo_verde, arabia_saudita).
enfrentamento(cabo_verde, uruguai).
enfrentamento(arabia_saudita, uruguai).

% ---------- GRUPO I ----------
enfrentamento(franca, senegal).
enfrentamento(franca, noruega).
enfrentamento(franca, iraque).
enfrentamento(senegal, noruega).
enfrentamento(senegal, iraque).
enfrentamento(noruega, iraque).

% ---------- GRUPO J ----------
enfrentamento(argentina, argelia).
enfrentamento(argentina, austria).
enfrentamento(argentina, jordania).
enfrentamento(argelia, austria).
enfrentamento(argelia, jordania).
enfrentamento(austria, jordania).

% ---------- GRUPO K ----------
enfrentamento(portugal, uzbequistao).
enfrentamento(portugal, colombia).
enfrentamento(portugal, republica_do_congo).
enfrentamento(uzbequistao, colombia).
enfrentamento(uzbequistao, republica_do_congo).
enfrentamento(colombia, republica_do_congo).

% ---------- GRUPO L ----------
enfrentamento(inglaterra, croacia).
enfrentamento(inglaterra, gana).
enfrentamento(inglaterra, panama).
enfrentamento(croacia, gana).
enfrentamento(croacia, panama).
enfrentamento(gana, panama).

% ============================================================
% REGRA: joga_contra(A, B) - vale nos dois sentidos.
% ============================================================
joga_contra(A, B) :- enfrentamento(A, B).
joga_contra(A, B) :- enfrentamento(B, A).

% ============================================================
% REGRA: federacao(Confederacao, Pais).
% Voce informa a confederacao e ela vai listando, um a um,
% os paises daquela confederacao que estao na Copa.
% ============================================================
federacao(Confederacao, Pais) :- selecao(Pais, Confederacao).

% Versao que devolve TODOS de uma vez, numa lista:
paises_da_federacao(Confederacao, Lista) :-
    findall(Pais, selecao(Pais, Confederacao), Lista).

% ============================================================
% EXEMPLOS DE CONSULTAS:
% ------------------------------------------------------------
% ?- joga_contra(brasil, X).
%    -> os 3 adversarios do Brasil na fase de grupos.
%
% ?- federacao(conmebol, X).
%    -> lista os sul-americanos, um a um (aperte ';').
%
% ?- paises_da_federacao(conmebol, L).
%    L = [brasil, paraguai, equador, uruguai, argentina, colombia].
% ============================================================
