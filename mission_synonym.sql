SQL> select 'CREATE PUBLIC SYNONYM '||tname||' for mission.'||tname||';' from tab;

CREATE PUBLIC SYNONYM AGENCE for missio.AGENCE;                                
CREATE PUBLIC SYNONYM CEMP for missio.CEMP;    
                                
CREATE PUBLIC SYNONYM GM_ACCOMPAGNANT for missio.GM_ACCOMPAGNANT;              
CREATE PUBLIC SYNONYM GM_AFFECTATION for missio.GM_AFFECTATION;                
CREATE PUBLIC SYNONYM GM_AGENT for missio.GM_AGENT;                            
CREATE PUBLIC SYNONYM GM_AGENT_SERVICE for missio.GM_AGENT_SERVICE;            
CREATE PUBLIC SYNONYM GM_CATEGORIE for missio.GM_CATEGORIE;                    
CREATE PUBLIC SYNONYM GM_COMPTE for missio.GM_COMPTE;                          
CREATE PUBLIC SYNONYM GM_DESTINATION for missio.GM_DESTINATION;                
CREATE PUBLIC SYNONYM GM_DIRECTEUR_GENERAL for missio.GM_DIRECTEUR_GENERAL; 
CREATE PUBLIC SYNONYM GM_ETAT for missio.GM_ETAT; 
CREATE PUBLIC SYNONYM GM_EDITION for missio.GM_EDITION;                              
CREATE PUBLIC SYNONYM GM_FONCTION for missio.GM_FONCTION;                      
CREATE PUBLIC SYNONYM GM_LIEU_AFFECTATION for missio.GM_LIEU_AFFECTATION;      
CREATE PUBLIC SYNONYM GM_MISSION for missio.GM_MISSION;                        
CREATE PUBLIC SYNONYM GM_NOMBRE for missio.GM_NOMBRE;                          
CREATE PUBLIC SYNONYM GM_PIECE_DEPENSE for missio.GM_PIECE_DEPENSE;            
CREATE PUBLIC SYNONYM GM_SIGNATAIRE for missio.GM_SIGNATAIRE;                  
CREATE PUBLIC SYNONYM GM_VEHICULE for missio.GM_VEHICULE;                      
CREATE PUBLIC SYNONYM GM_VEHICULE_MISSION for missio.GM_VEHICULE_MISSION;
      
CREATE PUBLIC SYNONYM POSTE for missio.POSTE;                                  
CREATE PUBLIC SYNONYM SIGNAL for missio.SIGNAL;  
 
create public synonym conversion for missio.conversion;
create public synonym gm_chauffeur for missio.gm_chauffeur;
create public synonym gm_chauffeur_mission for missio.gm_chauffeur_mission;
create public synonym gm_chauffeur for missio.gm_chauffeur;
create public synonym gm_incidence_financiere for missio.gm_incidence_financiere;