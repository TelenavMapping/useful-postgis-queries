-- create table with high-priority roads

create table navigable as (
select * from ways where
 tags->'highway'='motorway' 
 or tags->'highway'='primary' 
 or tags->'highway'='secondary' 
 or tags->'highway'='tertiary' 
 or tags->'highway'='residential' 
 or tags->'highway'='unclassified' 
 or tags->'highway'='trunk' 
);
 
-- modify these values to fit your area of interest
 
create table incorrect_names as(
select id, tags->'name' as name, tags->'highway' as highway, linestring from navigable
where tags ?'name'
and tags->'name' not like '%Avenue%'
and tags->'name' not like '%Access%'
and tags->'name' not like '%Abbey%'
and tags->'name' not like '%Acres%' 
and tags->'name' not like '%Allée%'
and tags->'name' not like '%Alley%' 
and tags->'name' not like '%Autoroute%'
and tags->'name' not like '%Bay%'
and tags->'name' not like '%Bypass%'
and tags->'name' not like '%Byway%' 
and tags->'name' not like '%Bend%'
and tags->'name' not like '%Beach%' 
and tags->'name' not like '%Boulevard%'
and tags->'name' not like '%Campus%' 
and tags->'name' not like '%Chemin%'
and tags->'name' not like '%Croissant%'
and tags->'name' not like '%Crossing%'
and tags->'name' not like '%Cul-de-sac%' 
and tags->'name' not like '%Cape%'
and tags->'name' not like '%Centre%' 
and tags->'name' not like '%Côte%'
and tags->'name' not like '%Carré%'
and tags->'name' not like '%Carrefour%' 
and tags->'name' not like '%Connector%' 
and tags->'name' not like '%Carré%'
and tags->'name' not like '%Centre%'
and tags->'name' not like '%Cercle%' 
and tags->'name' not like '%Chase%' 
and tags->'name' not like '%Crescent%'
and tags->'name' not like '%Circle%' 
and tags->'name' not like '%Circuit%' 
and tags->'name' not like '%Court%'
and tags->'name' not like '%Close%'
and tags->'name' not like '%Common%' 
and tags->'name' not like '%Court%' 
and tags->'name' not like '%Cove%'
and tags->'name' not like '%Côte%' 
and tags->'name' not like '%Cour%' 
and tags->'name' not like '%Concession%' 
and tags->'name' not like '%Corners%' 
and tags->'name' not like '%Dale%' 
and tags->'name' not like '%Dell%'
and tags->'name' not like '%Diversion%'
and tags->'name' not like '%Downs%' 
and tags->'name' not like '%Drive%' 
and tags->'name' not like '%Échangeur%'
and tags->'name' not like '%End%' 
and tags->'name' not like '%Esplanade%' 
and tags->'name' not like '%Estates%'
and tags->'name' not like '%Expressway%' 
and tags->'name' not like '%Extension%' 
and tags->'name' not like '%Farm%' 
and tags->'name' not like '%Field%' 
and tags->'name' not like '%Forest%' 
and tags->'name' not like '%Freeway%' 
and tags->'name' not like '%Front%' 
and tags->'name' not like '%Grove%'
and tags->'name' not like '%Gate%'
and tags->'name' not like '%Glade%' 
and tags->'name' not like '%Glen%' 
and tags->'name' not like '%Garden%'
and tags->'name' not like '%Green%' 
and tags->'name' not like '%Gardens%'
and tags->'name' not like '%Grounds%' 
and tags->'name' not like '%Grove%' 
and tags->'name' not like '%Heath%' 
and tags->'name' not like '%Harbour%' 
and tags->'name' not like '%Heights%'
and tags->'name' not like '%Highlands%' 
and tags->'name' not like '%Highway%'
and tags->'name' not like '%Highroad%'
and tags->'name' not like '%Hill%'
and tags->'name' not like '%Hollow%' 
and tags->'name' not like '%Île%' 
and tags->'name' not like '%Impasse%' 
and tags->'name' not like '%Inlet%' 
and tags->'name' not like '%Island%'
and tags->'name' not like '%Key%' 
and tags->'name' not like '%Knoll%' 
and tags->'name' not like '%Landing%'
and tags->'name' not like '%Line%'
and tags->'name' not like '%Link%'
and tags->'name' not like '%Lane%' 
and tags->'name' not like '%Loop%' 
and tags->'name' not like '%Lookout%' 
and tags->'name' not like '%Montée%'
and tags->'name' not like '%Mall%'
and tags->'name' not like '%Maze%' 
and tags->'name' not like '%Meadow%' 
and tags->'name' not like '%Moor%'
and tags->'name' not like '%Mount%' 
and tags->'name' not like '%Mountain%' 
and tags->'name' not like '%Montee%' 
and tags->'name' not like '%Manor%'
and tags->'name' not like '%Mews%' 
and tags->'name' not like '%Mount%'
and tags->'name' not like '%Orchard%' 
and tags->'name' not like '%Promenade%'
and tags->'name' not like '%Parade%' 
and tags->'name' not like '%Place%'
and tags->'name' not like '%Pont%'
and tags->'name' not like '%Point%' 
and tags->'name' not like '%Path%'
and tags->'name' not like '%Park%' 
and tags->'name' not like '%Parc%'
and tags->'name' not like '%Parkway%' 
and tags->'name' not like '%Private%' 
and tags->'name' not like '%Parade%'
and tags->'name' not like '%Path%' 
and tags->'name' not like '%Pathway%' 
and tags->'name' not like '%Passage%' 
and tags->'name' not like '%Plaza%' 
and tags->'name' not like '%Pines%'
and tags->'name' not like '%Place%'
and tags->'name' not like '%Plateau%' 
and tags->'name' not like '%Pointe%'
and tags->'name' not like '%Port%'
and tags->'name' not like '%Private%'
and tags->'name' not like '%Promenade%' 
and tags->'name' not like '%Queensway%'
and tags->'name' not like '%Quai%' 
and tags->'name' not like '%Quay%' 
and tags->'name' not like '%Row%' 
and tags->'name' not like '%Rang%' 
and tags->'name' not like '%Ridge%' 
and tags->'name' not like '%Reach%' 
and tags->'name' not like '%Rue%' 
and tags->'name' not like '%Rise%' 
and tags->'name' not like '%Route%'
and tags->'name' not like '%Row%'
and tags->'name' not like '%Ramp%'
and tags->'name' not like '%Range%'
and tags->'name' not like '%Ridge%'
and tags->'name' not like '%Rise%' 
and tags->'name' not like '%Road%'
and tags->'name' not like '%Rond-point%' 
and tags->'name' not like '%Route%'
and tags->'name' not like '%Ruelle%' 
and tags->'name' not like '%Run%' 
and tags->'name' not like '%Sentier%' 
and tags->'name' not like '%Subdivision%' 
and tags->'name' not like '%Sideroad%'
and tags->'name' not like '%Square%'
and tags->'name' not like '%Street%'
and tags->'name' not like '%Stroll%' 
and tags->'name' not like '%Shore%'
and tags->'name' not like '%Transitway%'
and tags->'name' not like '%Trail%'
and tags->'name' not like '%Thicket%'
and tags->'name' not like '%Towers%'
and tags->'name' not like '%Townline%'
and tags->'name' not like '%Turnabout%' 
and tags->'name' not like '%Terrace%'
and tags->'name' not like '%Terrasse%' 
and tags->'name' not like '%Villas%'
and tags->'name' not like '%Vale%' 
and tags->'name' not like '%Via%' 
and tags->'name' not like '%View%' 
and tags->'name' not like '%Village%' 
and tags->'name' not like '%Vista%' 
and tags->'name' not like '%Voie%' 
and tags->'name' not like '%Way%'
and tags->'name' not like '%Walk%'
and tags->'name' not like '%Walkway%' 
and tags->'name' not like '%Wind%' 
and tags->'name' not like '%Wynd%' 
and tags->'name' not like '%Wharf%' 
and tags->'name' not like '%Wood%');
